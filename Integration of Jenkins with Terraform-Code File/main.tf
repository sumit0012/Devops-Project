provider "aws" {
region = "ap-south-1"
access_key = "********"
secret_key = "***********"
}

resource "aws_instance" "one" {
ami = "ami-01a4f99c4ac11b03c"
instance_type = "t2.medium"
  key_name        = "terraproject"
  vpc_security_group_ids = [aws_security_group.three.id]
  availability_zone = "ap-south-1a"
  user_data       = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "Hiiii all this is my swiggy application created by terraform infrastructure by Sumit server-1" > /var/www/html/index.html
EOF
tags = {
Name = "swiggy-01"
}
}

resource "aws_instance" "two" {
ami = "ami-01a4f99c4ac11b03c"
instance_type = "t2.medium"
  key_name        = "terraproject"
  vpc_security_group_ids = [aws_security_group.three.id]
  availability_zone = "ap-south-1b"
  user_data       = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "Hii all this is my swiggy application created by terraform infrastructure by Sumit server-2" > /var/www/html/index.html
EOF
tags = {
Name = "swiggy-02"
}
}

