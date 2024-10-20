resource "aws_secretsmanager_secret" "config" {
  name = "${terraform.workspace}-config"
}