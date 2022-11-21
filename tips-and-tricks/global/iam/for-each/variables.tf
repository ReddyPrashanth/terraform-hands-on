variable "user_names" {
  type = list(string)
  description = "List of IAM user names"
  default = ["neo", "trinity", "morpheus"]
}