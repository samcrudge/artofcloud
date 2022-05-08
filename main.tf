module "ubuntu-ec2" {
  source             = "git::https://github.com/SamCrudge/art-of-cloud-ec2-ubt.git?ref=1.2"
  instance_size      = "t2.micro"
  new_s3_bucket_name = "my-new-s3-bucket-aoc"
  s3_bucket_acl      = "public-read"
}
