provider "aws" {
  profile = "terraform"
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    key = "workspaces/terraform.tfstate"
  }
}