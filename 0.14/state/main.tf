variable "ball_color" {
  type      = string
  sensitive = true
}

resource "christmas-tree" "sample" {
  path       = "/tmp/example"
  ball_color = var.ball_color
}

output "sample" {
  value = christmas-tree.sample.ball_color
  sensitive = true
}
