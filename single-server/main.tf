provider "aws" {
  region = "us-east-2"
  profile = "terraform"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type = number
  default = 80
}

resource "aws_security_group" "instance" {
  name = "web-server"

  ingress {
    from_port = var.server_port
    to_port = var.server_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web-server" {
  instance_type = "t2.micro"
  ami = "ami-097a2df4ac947655f"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = file("user-data.sh")
  
  user_data_replace_on_change = true

  tags = {
    "Name" = "web-server"
  }
}

output "public_ip" {
  value = aws_instance.web-server.public_ip
  description = "The public IP address of the web server"
}