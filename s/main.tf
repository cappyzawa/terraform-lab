terraform {
  required_providers {
    christmas-tree = {
      source  = "cappyzawa/christmas-tree"
      version = "0.4.0"
    }
  }
}

resource "random_string" "rand" {
  count  = 13
  length = 6
}

resource "christmas-tree" "tree" {
  count = length(random_string.rand)

  path = "/tmp/${random_string.rand[count.index].id}"
}
