resource "mongodbatlas_privatelink_endpoint" "atlaspl" {
  project_id    = mongodbatlas_project.atlas-project.id
  provider_name = "AWS"
  region        = var.aws_region
}

resource "aws_vpc_endpoint" "ptfe_service" {
  vpc_id             = var.vpcId
  service_name       = mongodbatlas_privatelink_endpoint.atlaspl.endpoint_service_name
  vpc_endpoint_type  = "Interface"
  subnet_ids = ["${var.subnet01}", "${var.subnet02}", "${var.subnet03}"]
  security_group_ids = ["${aws_security_group.sg-mongo.id}"]
}

resource "mongodbatlas_privatelink_endpoint_service" "atlaseplink" {
  project_id          = mongodbatlas_privatelink_endpoint.atlaspl.project_id
  endpoint_service_id = aws_vpc_endpoint.ptfe_service.id
  private_link_id     = mongodbatlas_privatelink_endpoint.atlaspl.id
  provider_name       = "AWS"
}