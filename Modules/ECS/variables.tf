variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}
variable "environment" {
  description = "Deployment environment (e.g. dev, staging, prod)"
  type        = string
  default     = "staging"
}
variable "app_name" {
  description = "Application name"
  type        = string
  default     = "nginx"
}
variable "container_image" {
  description = "Docker image to run in ECS"
  type        = string
   default     = "nginx"
}
variable "ecs_task_cpu" {
  description = "CPU units for ECS task"
  type        = string
  default     = "256"
}
variable "ecs_task_memory" {
  description = "Memory for ECS task (in MiB)"
  type        = string
  default     = "512"
}
variable "ecs_desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 1
}
variable "container_port" {
  description = "Port that container listens on"
  type        = number
  default     = 80
}
 