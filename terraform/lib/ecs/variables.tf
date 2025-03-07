variable "environment_name" {
  type        = string
  description = "Name of the environment"
}

variable "tags" {
  description = "List of tags to be associated with resources."
  default     = {}
  type        = any
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "subnet_ids" {
  description = "List of private subnet IDs."
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs."
  type        = list(string)
}

variable "container_image_overrides" {
  type        = any
  default     = {}
  description = "Container image override object"
}

variable "catalog_db_endpoint" {
  type        = string
  description = "Endpoint of the catalog database"
}

variable "catalog_db_port" {
  type        = string
  description = "Port of the catalog database"
}

variable "catalog_db_name" {
  type        = string
  description = "Name of the catalog database"
}

variable "catalog_db_username" {
  type        = string
  description = "Username for the catalog database"
}

variable "catalog_db_password" {
  type        = string
  description = "Password for the catalog database"
}

variable "carts_dynamodb_table_name" {
  type        = string
  description = "DynamoDB table name for the carts service"
}

variable "carts_dynamodb_policy_arn" {
  type        = string
  description = "IAM policy for DynamoDB table for the carts service"
}

variable "orders_db_endpoint" {
  type        = string
  description = "Endpoint of the orders database"
}

variable "orders_db_port" {
  type        = string
  description = "Port of the orders database"
}

variable "orders_db_name" {
  type        = string
  description = "Name of the orders database"
}

variable "orders_db_username" {
  type        = string
  description = "Username for the orders database"
}

variable "orders_db_password" {
  type        = string
  description = "Username for the password database"
}

variable "checkout_redis_endpoint" {
  type        = string
  description = "Endpoint of the checkout redis"
}

variable "checkout_redis_port" {
  type        = string
  description = "Port of the checkout redis"
}

variable "mq_endpoint" {
  type        = string
  description = "Endpoint of the shared MQ"
}

variable "mq_username" {
  type        = string
  description = "Username for the shared MQ"
}

variable "mq_password" {
  type        = string
  description = "Password for the shared MQ"
}

variable "certificate_arn" {
  type        = string
  description = "ARN of the certificate to use for HTTPS"
}