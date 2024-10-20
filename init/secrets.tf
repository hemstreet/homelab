resource "aws_secretsmanager_secret" "config" {
  name = "${terraform.workspace}-config"
}

data "aws_secretsmanager_secret_version" "config" {
  secret_id = aws_secretsmanager_secret.config.id
}
