generate "main" {
  path = "main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "aws_s3_bucket" "test_1" {
  bucket = "my-bucket"
  tags = {
    Name       = "My bucket"
    Enviroment = "Dev"
  }
}
resource "aws_s3_object" "test_2" {
  bucket       = "my-bucket"
  key          = "terraform.tfstate"
  source       = "terraform.tfstate"
}
EOF
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  s3_use_path_style           = true
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}
EOF
}