terraform {
  required_providers {
    christmas-tree = {
      source  = "cappyzawa/christmas-tree"
      version = "0.3.1"
    }
  }
}

variable "path" {
  type = string
}

resource "christmas-tree" "tree" {
  path = var.path
}

output "tree" {
  value = file(christmas-tree.tree.id)
}
