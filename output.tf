# Output variable definitions

output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.duy_terraform.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.duy_terraform.id
}