use std::fs::File;
use std::io::{self, BufReader, Read};
use aes::cipher::BlockDecrypt;
use aes::cipher::KeyInit; 
use aes::Aes256;
use aes::cipher::generic_array::GenericArray;
use reqwest::{Client, StatusCode};
use serde_json::json;

/// Asynchronously scans the system to read data from a given reader.
///
/// # Arguments
///
/// * `buf_reader` - A `BufReader` containing the data to be read.
///
/// # Returns
///
/// A `Result` containing a vector of bytes if successful, or an `io::Error` if an error occurs.
///
pub async fn scan_system<R>(mut buf_reader: BufReader<R>) -> Result<Vec<u8>, io::Error>
where
    R: Read,
{
    let mut contents = Vec::new();
    buf_reader.read_to_end(&mut contents)?;
    Ok(contents)
}

/// Asynchronously parses the secret key from a file named "secret_file.txt".
///
/// # Returns
///
/// A `Result` containing a vector of bytes representing the secret key if successful,
/// or an `io::Error` if an error occurs.
///
pub async fn parse_secret() -> Result<Vec<u8>, io::Error> {
    let file = File::open("secret_file.txt")?;
    let mut buf_reader = BufReader::new(file);
    let mut secret_key = Vec::new();
    buf_reader.read_to_end(&mut secret_key)?;

    Ok(secret_key)
}

/// Decrypts the given encrypted data using the provided key.
///
/// # Arguments
///
/// * `encrypted_data` - A slice of bytes representing the encrypted data.
/// * `key` - A slice of bytes representing the encryption key.
///
/// # Returns
///
/// A vector of bytes containing the decrypted data.
///
pub fn decrypt_file(encrypted_data: &[u8], key: &[u8]) -> Vec<u8> {
    let key = &key[..32]; // Ensure key is 32 bytes long
    let cipher = Aes256::new(GenericArray::from_slice(&key));
    let mut decrypted_data = encrypted_data.to_vec();
    cipher.decrypt_block(&mut GenericArray::from_mut_slice(&mut decrypted_data));
    decrypted_data
}

/// Asynchronously sends the decrypted data to a server.
///
/// # Arguments
///
/// * `_decrypted_data` - A vector of bytes representing the decrypted data.
/// * `server_url` - The URL of the server to send the data to.
/// * `parsed_secret` - A slice of bytes representing the parsed secret key.
/// * `github_link` - The GitHub link associated with the data.
///
/// # Returns
///
/// A `Result` indicating success or failure.
///
pub async fn send_contents(_decrypted_data: Vec<u8>, server_url: &str, parsed_secret: &[u8], github_link: &str) -> Result<(), reqwest::Error> {
    let client = Client::new();
    let json_body = json!({
        "message": parsed_secret,
        "github_link": github_link
    });

    let response = client
        .post(server_url)
        .json(&json_body)
        .send()
        .await?;
    
    if response.status() == StatusCode::OK {
        println!("File sent successfully to server");
    } else {
        println!("Failed to send file to server: {:?}", response.status());
    }

    Ok(())
}

/// Asynchronously runs the entire process of scanning, decrypting, and sending data.
///
/// # Arguments
///
/// * `data` - A vector of bytes representing the scanned data.
/// * `server_url` - The URL of the server to send the data to.
/// * `github_link` - The GitHub link associated with the data.
///
/// # Returns
///
/// A `Result` indicating success or failure.
///
pub async fn run_process(data: Vec<u8>, server_url: &str, github_link: &str) -> Result<(), String> {
    let secret_key = match parse_secret().await {
        Ok(key) => key,
        Err(e) => return Err(format!("Error parsing secret key: {}", e)),
    };

    if secret_key.len() != 32 {
        return Err("Invalid secret key size. It should be 32 bytes long.".to_string());
    }

    let decrypted_data = decrypt_file(&data, &secret_key);
    send_contents(decrypted_data, server_url, &secret_key, github_link).await.map_err(|e| format!("Error sending contents: {}", e))
}
