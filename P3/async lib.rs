use async_std::fs::File;
use async_std::io;
use async_std::io::prelude::*;
use aes::cipher::BlockDecrypt;
use aes::cipher::generic_array::GenericArray;
use aes::cipher::NewBlockCipher;
use aes::Aes256;
use reqwest::Client;
use reqwest::StatusCode;
use serde_json::json;

async fn scan_system(file_path: &str) -> Result<String, io::Error> {
    let mut file = File::open(file_path).await?;
    let mut contents = String::new();
    file.read_to_string(&mut contents).await?;
    Ok(contents)
}

async fn parse_secret() -> Result<Vec<u8>, io::Error> {
    let mut file = File::open("secret_file.txt").await?;
    let mut secret_key = Vec::new();
    file.read_to_end(&mut secret_key).await?;
    Ok(secret_key)
}

fn decrypt_file(encrypted_data: &[u8], key: &[u8]) -> Vec<u8> {
    let key = GenericArray::from_slice(key);
    let cipher = Aes256::new(&key);
    let mut decrypted_data = encrypted_data.to_vec();
    cipher.decrypt_block(GenericArray::from_mut_slice(&mut decrypted_data));
    decrypted_data
}

async fn send_contents(
    decrypted_data: Vec<u8>,
    server_url: &str,
    parsed_secret: &[u8],
    github_link: &str,
) -> Result<(), reqwest::Error> {
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

#[async_std::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let file_path = "file.txt";
    let server_url = "https://example.com/upload";
    let github_link = "https://github.com/user/repo";
    
    let encrypted_data = scan_system(file_path).await?;
    let parsed_secret = parse_secret().await?;
    let decrypted_data = decrypt_file(encrypted_data.as_bytes(), &parsed_secret);
    
    send_contents(decrypted_data, server_url, &parsed_secret, github_link).await?;

    Ok(())
}
