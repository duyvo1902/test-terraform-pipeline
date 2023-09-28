resource "aws_s3_bucket" "duy_terraform" {
  bucket = var.bucket_name
  tags = {
    Name       = "Duy bucket"
    Enviroment = "Dev"
  }
}

resource "aws_s3_object" "object_www" {
  depends_on   = [aws_s3_bucket.s3_bucket]
  for_each     = fileset("${path.root}", "www/*.html")
  bucket       = aws_s3_bucket.s3_bucket.id
  key          = basename(each.value)
  source       = each.value
  etag         = filemd5("${each.value}")
  content_type = "text/html"
  acl          = "public-read"
}
