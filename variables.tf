# variables.tf
# Owner: Saurav Mitra
# Description: Variables used by terraform config to create the infrastructure resources for Confluent Platform
# https://www.terraform.io/docs/configuration/variables.html

# VPC & Subnets
variable "vpc_id" {
  description = "ID of the VPC where the cluster and its nodes will be provisioned."
}

variable "public_subnet_id" {
  description = "A list of the public subnets IDs. where the cluster and its nodes will be provisioned."
}

variable "private_subnet_id" {
  description = "A list of the private subnets IDs. where the cluster and its nodes will be provisioned."
}

variable "vpc_cidr_block" {
  description = "The address space that is used by the virtual network."
}

variable "internet_cidr_block" {
  description = "The address space that is used by the internet."
  default     = "0.0.0.0/0"
}

# Tags
variable "prefix" {
  description = "This prefix will be included in the name of the resources."
  default     = "Confluent"
}

variable "owner" {
  description = "This owner name tag will be included in the owner of the resources."
  default     = "Saurav Mitra"
}

# Instances
variable "zookeeper_instances" {
  description = "The Zookeeper Instances."
  default     = { instance_type : "t2.large", volume : 30, count : 3 }
}

variable "kafka_broker_instances" {
  description = "The Kafka Broker Instances."
  default     = { instance_type : "t2.large", volume : 30, count : 3 }
}

variable "rest_proxy_instances" {
  description = "The REST Proxy Instances."
  default     = { instance_type : "t2.small", volume : 30, count : 0 }
}

variable "control_center_instances" {
  description = "The Control Center Instances."
  default     = { instance_type : "t2.large", volume : 30, count : 1 }
}

variable "schema_registry_instances" {
  description = "The Schema Registry Instances."
  default     = { instance_type : "t2.large", volume : 30, count : 1 }
}

variable "kafka_connect_instances" {
  description = "The Kafka Connect Instances."
  default     = { instance_type : "t2.large", volume : 30, count : 1 }
}

variable "ksql_instances" {
  description = "The KSQL Instances."
  default     = { instance_type : "t2.large", volume : 30, count : 1 }
}

# AWS EC2 KeyPair
variable "keypair_name" {
  description = "The AWS Key pair name."
}
