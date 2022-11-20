provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "github.com/ReddyPrashanth/terraform-modules//modules/services/webserver-cluster?ref=v0.0.1"

  cluster_name = "webservers-prod"
  db_remote_state_bucket = "terraform-up-and-running-state-psreepathi"
  db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size = 2
  max_size = 2
}