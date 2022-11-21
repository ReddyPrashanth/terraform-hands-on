output "upper_names" {
  value = [for name in var.names : upper(name)]
  description = "upper case IAM user names"
}