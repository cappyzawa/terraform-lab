terraform {
  required_providers {
    christmas-tree = {
      source  = "cappyzawa/christmas-tree"
      version = "0.3.1"
    }
  }
}

resource "christmas-tree" "tree1" {
  path = "/tmp/mr-tree1"
}

resource "christmas-tree" "tree2" {
  path = "/tmp/mr-tree1"
}
