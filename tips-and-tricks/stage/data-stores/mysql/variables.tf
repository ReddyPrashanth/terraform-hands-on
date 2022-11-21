variable "db_name" {
  type = string
  description = "The name of the RDS MySQL table. Should be unique for this account."
  default = "terraform-up-and-running"
}

variable "db_username" {
  type = string
  description = "The name of the MySQL user."
  default = "admin"
}

variable "db_password" {
  type = string
  description = "The password of the MySQL user created above."
  sensitive = true
}
