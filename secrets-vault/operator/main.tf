variable "path" {
  default = "../vault-admin/terraform.tfstate"
  type    = string
}

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

  required_providers {
    christmas-tree = {
      source  = "cappyzawa/christmas-tree"
      version = "0.3.1"
    }
  }
}

data "terraform_remote_state" "admin" {
  backend = "local"

  config = {
    path = var.path
  }
}

resource "christmas-tree" "tree" {
  path       = "/tmp/state_tree"
  ball_color = data.terraform_remote_state.admin.outputs.ball_color
}

output "example" {
  value = fileexists(christmas-tree.tree.path) ? file(christmas-tree.tree.path) : ""
}
