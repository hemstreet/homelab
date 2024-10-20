module "circleci" {
  depends_on          = [data.aws_secretsmanager_secret_version.config]
  source              = "../../tf-module-circleci"
  runner_class        = module.vars.vars[terraform.workspace]["services"]["circleci"]["resource_class"]
  runner_token        = jsondecode(data.aws_secretsmanager_secret_version.config.secret_string)["circleci_self_hosted_homelab_runner_token"]
  release_agent_token = jsondecode(data.aws_secretsmanager_secret_version.config.secret_string)["circleci_release_agent_token"]
}