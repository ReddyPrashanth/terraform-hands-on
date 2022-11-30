provider "aws" {
  region = "us-east-2"
}

# module "asg" {
#   source = "../../modules/cluster/asg-rolling-deploy"
#   cluster_name = var.cluster_name
#   # ami
# }

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  id = "ami-097a2df4ac947655f "
  
  # filter {
  #   name = "root-device-type"
  #   values = ["ebs"]
  # }

  # filter {
  #   name = "virtualization-type"
  #   values = ["hvm"]
  # }

  # filter {
  #   name = "name"
  #   values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  # }
}

output "ami" {
  value = data.aws_ami.ubuntu
  description = "Ubuntu AMI data"
}