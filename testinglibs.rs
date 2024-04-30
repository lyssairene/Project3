#[cfg(test)]
mod tests {
    use super::*;
    use std::io::Cursor;
    use std::io::Write;
    use tempfile::NamedTempFile;
    use mockito::{mock, server_address};
    use reqwest::Client;

    #[tokio::test]
    async fn test_scan_system() {
        let data = b"test data";
        let cursor = Cursor::new(data);
        let buf_reader = BufReader::new(cursor);
        let result = scan_system(buf_reader).await;
        assert!(result.is_ok());
        assert_eq!(result.unwrap(), data);
    }

    #[tokio::test]
    async fn test_parse_secret() {
        // Create a temporary file with known contents
        let mut file = NamedTempFile::new().expect("Failed to create temporary file");
        file.write_all(b"test secret data").expect("Failed to write to temporary file");

        // Get the file path as a string
        let file_path = file.path().to_str().expect("Failed to convert file path to string");

        // Call the parse_secret function with the temporary file
        let result = parse_secret_from_file(file_path).await;

        // Assert that the result is Ok
        assert!(result.is_ok());

        // Clean up: Close and delete the temporary file
        file.close().expect("Failed to close temporary file");
    }


    #[test]
    fn test_decrypt_file() {
        // asserts and figures out the encrypted message in the file
        let encrypted_data = b"encrypted data";
        let key = b"somekey";
        let decrypted_data = decrypt_file(encrypted_data, key);
        assert!(decrypted_data.is_ok());
        // secret message = I enjoy this class
        assert!(decrypted_data.to_string("i enjoy this class"));
    }

    #[tokio::test]
    async fn test_send_contents() {
        // Start the mock server
        let server = mockito::server_address().to_string();
        let _mock = mock("POST", "/")
            .with_status(200)
            .with_body("{\"status\": \"success\"}")
            .create();

        // Call send_contents with mock server URL
        let result = send_contents(Vec::new(), &server, b"secret", "github_link").await;

        // Assert that the result is Ok
        assert!(result.is_ok());

        // Assert that the request was made correctly
        let mock_request = mockito::Mock::recorded_once("POST", "/");
        assert_eq!(mock_request.unwrap().body, Some("{}".to_string()));
    }

    #[tokio::test]
    async fn test_run_process() {
        // Start the mock server
        let server = mockito::server_address().to_string();
        let _mock = mock("POST", "/")
            .with_status(200)
            .with_body("{\"status\": \"success\"}")
            .create();

        // Call run_process with mock data
        let data = Vec::new(); // Mock data
        let github_link = "https://github.com/lyssairene/Project3";
        let result = run_process(data, &server, github_link).await;

        // Assert that the result is Ok
        assert!(result.is_ok());
    }
}
