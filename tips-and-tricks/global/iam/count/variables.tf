# Required variables

variable "user_names" {
  type = list(string)
  description = "Create below IAM users"
  default = ["neo", "trinity", "morpheus"]
}