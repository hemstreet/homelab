data "terraform_remote_state" "init" {
  backend = "s3"
  config = {
    bucket         = "hemstreet-tf-state"
    key            = format("env:/%s/terraform/init/terraform.tfstate", terraform.workspace)
    region         = "us-east-2"
    profile        = "hemstreet"
    dynamodb_table = "hemstreet_terraform_state"
  }
}