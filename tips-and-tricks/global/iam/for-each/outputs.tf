output "user_arns" {
  value = values(module.users)[*].user_arn
  description = "The ARNs of new IAM users"
}