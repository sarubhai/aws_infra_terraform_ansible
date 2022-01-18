# Name: variables.tf
# Owner: Saurav Mitra
# Description: Variables used by terraform config to create EC2 intances for Confluent Platform

variable "prefix" {
  description = "This prefix will be included in the name of the resources."
}

variable "owner" {
  description = "This owner name tag will be included in the name of the resources."
}

variable "vpc_id" {
  description = "The VPC ID."
}

variable "public_subnet_id" {
  description = "The public subnets ID."
}

variable "private_subnet_id" {
  description = "The private subnets ID."
}

variable "zookeeper_sg_id" {
  description = "Security Group for Zookeeper."
}

variable "kafka_sg_id" {
  description = "Security Group for Kafka."
}

variable "rest_proxy_sg_id" {
  description = "Security Group for REST Proxy."
}

variable "control_center_sg_id" {
  description = "Security Group for Control Center."
}

variable "schema_registry_sg_id" {
  description = "Security Group for Schema Registry."
}

variable "kafka_connect_sg_id" {
  description = "Security Group for Kafka Connect."
}

variable "ksql_sg_id" {
  description = "Security Group for KSQL."
}

variable "zookeeper_instances" {
  description = "The Zookeeper Instances."
}

variable "kafka_broker_instances" {
  description = "The Kafka Broker Instances."
}

variable "rest_proxy_instances" {
  description = "The REST Proxy Instances."
}

variable "control_center_instances" {
  description = "The Control Center Instances."
}

variable "schema_registry_instances" {
  description = "The Schema Registry Instances."
}

variable "kafka_connect_instances" {
  description = "The Kafka Connect Instances."
}

variable "ksql_instances" {
  description = "The KSQL Instances."
}

variable "keypair_name" {
  description = "The AWS Key pair name."
}
