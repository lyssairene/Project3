use std::fs::File;
use std::io::BufReader;
use P3::*;

#[tokio::main]
async fn main() {
    let file_path = "secret_file.txt";
    let server_url = "https://127.0.0.1";
    let github_link = "https://github.com/lyssairene/Project3";

    let file = File::open(file_path).expect("Failed to open file");
    let reader = BufReader::new(file);

    if let Ok(data) = scan_system(reader).await {
        match run_process(data, server_url, github_link).await {
            Ok(_) => println!("Process completed successfully."),
            Err(e) => eprintln!("Error: {}", e),
        }
    } else {
        eprintln!("Failed to read file.");
    }
}
