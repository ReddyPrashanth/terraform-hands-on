output "all_arns" {
  value = module.users[*].user_arn
}