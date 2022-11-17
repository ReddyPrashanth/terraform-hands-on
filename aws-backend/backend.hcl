# backend.hcl
bucket  =   "terraform-up-and-running-state-psreepathi"
region  =   "us-east-2"
dynamodb_table  =   "terraform-up-and-running-locks"
encrypt =   true
profile =   "terraform"