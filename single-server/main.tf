provider "aws" {
    region = "us-east-2"
    profile = "terraform"
}

resource "aws_instance" "web-server" {
    instance_type = "t2.micro"
    ami = "ami-089a545a9ed9893b6"

    tags = {
      "Name" = "web-server"
    }
}