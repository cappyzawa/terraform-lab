resource "random_uuid" "random" {
  count = 4
}

resource "christmas-tree" "tree" {
  count = length(random_uuid.random)

  path = "/tmp/lab-tree-${random_uuid.random[count.index].result}"
}

output "trees" {
  value = [for p in christmas-tree.tree : p.path]
}
