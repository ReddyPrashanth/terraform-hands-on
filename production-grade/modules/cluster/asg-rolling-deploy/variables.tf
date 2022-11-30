variable "cluster_name" {
  type = string
  description = "The name to use for all cluster resources"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type to run (eg: t2.micro)"
}

variable "min_size" {
  type = number
  description = "The minimum number of EC2 instances in ASG"
}

variable "max_size" {
  type = number
  description = "The maximum number of EC2 instances in ASG"
}

variable "enable_autoscaling" {
  type = bool
  description = "If set to true, enable auto scaling"
}

variable "ami" {
  type = string
  description = "The AMI id"
}

variable "server_port" {
  type = number
  description = "Web server port number."
  default = 80
}

variable "custom_tags" {
  type = map(string)
  description = "Custom tags to set on the instances in ASG"
  default = {}
}

variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type = list(string)
}

variable "target_group_arns" {
  description = "The ARNs of ELB target group in which to register instances"
  type = list(string)
  default = []
}

variable "health_check_type" {
  description = "The type of health check to perform. Must be one of: EC2, ELB."
  type = string
}

variable "user_data" {
  description = "The user data script to run in each instance at boot"
  type = string
}