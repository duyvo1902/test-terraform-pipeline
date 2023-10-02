# test-terraform-pipeline/terragrunt.hcl
remote_state {
  backend = "s3"
  generate = {
    path      = "main.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket = "duy-bucket-test"
    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}