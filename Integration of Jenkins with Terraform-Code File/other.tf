resource "aws_s3_bucket" "b" {
  bucket = "mrsumittf006655"
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 40

  tags = {
    Name = "sumit-ebs"
  }
}

