resource "aws_s3_bucket" "duy" {
  bucket = "duy-bucket-test"
  tags = {
    Name       = "My bucket"
    Enviroment = "Dev"
  }
}