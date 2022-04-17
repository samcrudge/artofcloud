resource "aws_instance" "example_artofcloud" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
}


resource "aws_s3_bucket" "artofcloud_bucket" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "artofcloud_acl" {
  bucket = aws_s3_bucket.b.id
  // i dont want the contents of this bucket to be public.
  acl = "private"
}