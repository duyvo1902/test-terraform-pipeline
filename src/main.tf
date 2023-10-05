resource "aws_s3_bucket" "duy" {
  bucket = "test-bucket-123"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}