# Pulls the image
resource "docker_image" "nginx" {
  name = "nginx:1.21.1"
}

# Create a container
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx"
}
