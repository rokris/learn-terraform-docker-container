terraform {
  #  cloud {
  #    organization = "norgesgruppen-data"

  #    workspaces {
  #      name = "Test-local"
  #    }
  #  }
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

# Pulls the image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Pulls the image
resource "docker_image" "getting-started" {
  name         = "docker/getting-started:latest"
  keep_locally = false
}

# Create a container
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx"
  ports {
    internal = 80
    external = 8000
  }
}

# Create a container
#resource "docker_container" "nginx2" {
#  image = docker_image.nginx.latest
#  name  = "tutorial2"
#  ports {
#    internal = 80
#    external = 8001
#  }
#}

# Create a container
resource "docker_container" "getting-started" {
  image = docker_image.getting-started.latest
  name  = "getting-started"
  ports {
    internal = 80
    external = 8002
  }
}
