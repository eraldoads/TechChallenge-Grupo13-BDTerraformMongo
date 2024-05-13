variable "regionDefault" {
  type        = string
  default     = "us-east-1"
  description = "Região de criação da Infra"
}

# Atlas Organization ID 
variable "atlas_org_id" {
  type        = string  
  description = "Atlas Organization ID"
}
# Atlas Project Name
variable "atlas_project_name" {
  type        = string  
  description = "Atlas Project Name"
}

# Atlas Project Environment
variable "environment" {
  type        = string
  description = "The environment to be built"
}

# Cluster Instance Size Name 
variable "cluster_instance_size_name" {
  type        = string
  description = "Cluster instance size name"
}

# Cloud Provider to Host Atlas Cluster
variable "cloud_provider" {
  type        = string
  default     = "AWS"  
}

# Atlas Region
variable "atlas_region" {
  type        = string  
  description = "Atlas region where resources will be created"
}

# MongoDB Version 
variable "mongodb_version" {
  type        = string
  description = "MongoDB Version"
}

# IP Address Access
variable "ip_address" {
  type = string  
  description = "IP address used to access Atlas cluster"
}

# AWS Region
variable "aws_region" {
  type = string
  description = "AWS Region"
}

variable "subnet01" {
  type    = string
  default = "subnet-0f66ca21ac6435d4a"
}

variable "subnet02" {
  type    = string
  default = "subnet-011f7c6725a0762c2"
}

variable "subnet03" {
  type    = string
  default = "subnet-09c14a2af7b8cb156"
}

variable "vpcId" {
  type    = string
  default = "vpc-08f3bbc7c4e42c93c"
}

variable "vpcCIDR" {
  type    = string
  default = "172.31.0.0/16"
}

variable "tags" {
  type = map(string)
  default = {
    App = "piklesfastfood"
  }
}