resource "aws_instance" "example_artofcloud" {
  // this is a virual machine.
  # count         = 10
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
}

resource "aws_s3_bucket" "artofcloud_bucket" {
  bucket = "artofcloud-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "artofcloud_acl" {
  bucket = aws_s3_bucket.artofcloud_bucket.bucket
  // i dont want the contents of this bucket to be public.
  acl = "private"
}
