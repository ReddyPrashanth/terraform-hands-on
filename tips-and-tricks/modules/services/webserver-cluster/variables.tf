variable "cluster_name" {
  type = string
  description = "The name to use for all cluster resources"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type to run (eg: t2.micro)"
}

variable "db_remote_state_bucket" {
  type = string
  description = "The name of the S3 bucket for the database's remote state"
}

variable "db_remote_state_key" {
  type = string
  description = "The path for the database's remote state in S3"
}

variable "min_size" {
  type = number
  description = "The minimum number of EC2 instances in ASG"
}

variable "max_size" {
  type = number
  description = "The maximum number of EC2 instances in ASG"
}

# ----------------------------------------------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults
# ----------------------------------------------------------------------------------------------------------------------------------------------------------


variable "server_port" {
  type = number
  description = "Web server port number."
  default = 80
}