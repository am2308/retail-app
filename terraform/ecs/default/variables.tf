variable "environment_name" {
  type        = string
  default     = "retail-store-ecs"
  description = "Name of the environment"
}

variable "container_image_overrides" {
  type        = any
  default     = {}
  description = "Container image override object"
}

variable "certificate_arn" {
  type        = string
  description = "ARN of the certificate to use for HTTPS"
}