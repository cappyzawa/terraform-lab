terraform {
  required_providers {
    christmas-tree = {
      source  = "cappyzawa/christmas-tree"
      version = "0.3.1"
    }
  }
}

resource "christmas-tree" "tree" {

  for_each = {
    "key1" = "value1",
    "key2" = "value2",
    "key3" = "value3",
    "key4" = "value4",
  }

  path = "/tmp/lab-tree-${each.key}"
}

output "trees" {
  value = [for p in christmas-tree.tree : p.path]
}
