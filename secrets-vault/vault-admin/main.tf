terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "vault" {}

data "vault_generic_secret" "ball_color" {
  path = "secret/ball_color"
}

output "ball_color" {
  value = data.vault_generic_secret.ball_color.data["value"]
}
