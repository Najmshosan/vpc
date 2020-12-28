# I wish to use this to create an s3 bucket 

resource "aws_s3_bucket" "test-adnin3-bucket-resource" {
  bucket = "test-adnin3-bucket-resource"
  acl    = "private"

  tags = {
    Name        = "Fmbah"
    Environment = "Staging"
  }
}
