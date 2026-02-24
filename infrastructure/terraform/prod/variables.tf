variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "project_name" {
  type    = string
  default = "devops-assignment"
}

variable "environment" {
  type = string
}

# VPC
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# Backend
variable "backend_port" {
  type    = number
  default = 8000
}

# ECS Sizing
variable "task_cpu" {
  type = number
}

variable "task_memory" {
  type = number
}

variable "ecs_desired_count" {
  type = number
}

variable "ecs_min_count" {
  type = number
}

variable "ecs_max_count" {
  type = number
}

# CDN
variable "cloudfront_ttl" {
  type = number
}

variable "log_retention_days" {
  description = "Number of days to retain CloudWatch logs"
  type        = number
  default     = 30
}