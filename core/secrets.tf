data "aws_secretsmanager_secret_version" "config" {
  secret_id = data.terraform_remote_state.init.outputs.config_secret_id
}
