provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

# Enable APIs
resource "google_project_service" "required_services" {
  for_each = toset([
    "cloudfunctions.googleapis.com",
    "firestore.googleapis.com",
  ])
  service = each.value
}

# Firestore Database (Native Mode)
resource "google_firestore_database" "firestore" {
  name      = "(default)" # Default Firestore database name
  location  = "us-central" # Firestore region
  project   = "your-gcp-project-id"
  type      = "NATIVE"
}

# Cloud Function
resource "google_storage_bucket" "function_bucket" {
  name     = "cloud-function-bucket-${random_id.bucket_id.hex}"
  location = "US"
}

resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "google_cloudfunctions_function" "cloud_function" {
  name                  = "my-cloud-function"
  description           = "A simple Cloud Function deployed with Terraform."
  runtime               = "python310" # Update based on your code language
  available_memory_mb   = 256
  source_archive_bucket = google_storage_bucket.function_bucket.name
  source_archive_object = google_storage_bucket_object.function_code.name
  entry_point           = "hello_world" # Function entry point
  event_trigger {
    event_type = "providers/cloud.firestore/eventTypes/document.write"
    resource   = "projects/${var.project}/databases/(default)/documents/your-collection/{documentId}" # Trigger for Firestore
  }
}

resource "google_storage_bucket_object" "function_code" {
  name   = "function-source.zip"
  bucket = google_storage_bucket.function_bucket.name
  source = "function-source.zip" # Ensure this ZIP file is uploaded with your function code
}









