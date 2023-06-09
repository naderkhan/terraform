provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Replace with your desired bucket name
  acl    = "public-read"  # Set the ACL to make the bucket contents publicly accessible

  website {
    index_document = "index.html"  # Replace with your desired HTML file name
  }
}

resource "aws_s3_bucket_object" "my_file" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "index.html"  # Replace with the file name you want to upload
  source = "path/to/local/file"  # Replace with the path to your local file
}

output "website_endpoint" {
  value = aws_s3_bucket.my_bucket.website_endpoint
}
