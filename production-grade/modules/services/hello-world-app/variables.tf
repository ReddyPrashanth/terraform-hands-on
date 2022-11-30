# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "environment" {
  description = "The name of the environment we're deploying"
  type = string
}

variable "min_size" {
  type = number
  description = "The minimum number of EC2 instances in the ASG"
}

variable "max_size" {
  type = number
  description = "The maximum number of EC2 instances in the ASG"
}

variable "enable_autoscaling" {
  type = bool
  description = "If set to true, enable autoscaling"
}

variable "db_remote_state_bucket" {
  type = string
  description = "The name of the S3 bucket used for the database's remote state storage"
}

variable "db_remote_state_bucket" {
  type = string
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "ami" {
  type = string
  description = "The AMI to run the cluster"
}

variable "instance_type" {
  type = string
  description = "The type of the EC2 instance to run (e.g. t2.micro)"
  default = "t2.micro"
}

variable "server_text" {
  description = "The text web server should return"
  default = "Hello, World"
  type = string
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type = number
  default = 80
}

variable "custom_tags" {
  description = "Custom tags to set on the instances in the ASG"
  type = map(string)
  default = {}
}

