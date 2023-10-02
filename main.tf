resource "aws_s3_bucket" "duy" {
  bucket = "duy-bucket-test-123"
  tags = {
    Name       = "My bucket"
    Enviroment = "Dev"
  }
}