resource "aws_security_group" "sg-mongo" {
  name        = "SG-${var.atlas_project_name}-mongo"
  description = var.atlas_project_name
  vpc_id      = var.vpcId

  ingress {
    description = "Todos"
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # ingress {
  #   description = "VPC"
  #   from_port   = 3306
  #   to_port     = 3306
  #   protocol    = "tcp"
  #   cidr_blocks = ["${var.vpcCIDR}"]

  # }

  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}