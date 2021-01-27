module "tree" {
  source = "./tree"

  path = "/tmp/lab-tree-${terraform.workspace}"
}

output "sample" {
  value = module.tree.tree
}
