module "assets_service" {
  source = "./service"

  environment_name = var.environment_name
  service_name     = "assets"
  cluster_arn      = aws_ecs_cluster.cluster.arn
  vpc_id           = var.vpc_id
  #vpc_cidr                        = var.vpc_cidr
  subnet_ids = var.subnet_ids
  #public_subnet_ids               = var.public_subnet_ids
  tags                            = var.tags
  container_image                 = module.container_images.result.assets.url
  service_discovery_namespace_arn = aws_service_discovery_private_dns_namespace.this.arn
  cloudwatch_logs_group_id        = aws_cloudwatch_log_group.ecs_tasks.id
  healthcheck_path                = "/health.html"
}
