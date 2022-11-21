variable "bucket_name" {
  type = string
  description = "The name of the S3 bucket. Must be globally unique."
  default = "terraform-up-and-running-state-psreepathi"
}

variable "table_name" {
  type = string
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
  default = "terraform_locks"
}