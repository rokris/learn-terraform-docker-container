output "container_id_nginx" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id_nginx" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}

output "hostname_nginx" {
  description = "Hostname of the Docker image"
  value       = docker_container.nginx.hostname
}

output "container_id_getting-started" {
  description = "ID of the Docker container"
  value       = docker_container.getting-started.id
}

output "image_id_getting-started" {
  description = "ID of the Docker image"
  value       = docker_image.getting-started.id
}

output "hostname_getting-started" {
  description = "Hostname of the Docker image"
  value       = docker_container.getting-started.hostname
}

output "sa_name" {
  description = "The name of SA"
  value       = var.sa_name
}
