# outputs.tf
# Owner: Saurav Mitra
# Description: Outputs the relevant resources ID, ARN, URL values
# https://www.terraform.io/docs/configuration/outputs.html

# Instances
output "zookeeper_instances_ip" {
  value       = module.instances.zookeeper_instances_ip
  description = "The Zookeeper Instances IP's."
}

output "kafka_broker_instances_ip" {
  value       = module.instances.kafka_broker_instances_ip
  description = "The Kafka Broker Instances IP's."
}

output "rest_proxy_instances_ip" {
  value       = module.instances.rest_proxy_instances_ip
  description = "The REST Proxy Instances IP's."
}

output "control_center_instances_ip" {
  value       = module.instances.control_center_instances_ip
  description = "The Control Center Instances IP's."
}

output "schema_registry_instances_ip" {
  value       = module.instances.schema_registry_instances_ip
  description = "The Schema Registry Instances IP's."
}

output "kafka_connect_instances_ip" {
  value       = module.instances.kafka_connect_instances_ip
  description = "The Kafka Connect Instances IP's."
}

output "ksql_instances_ip" {
  value       = module.instances.ksql_instances_ip
  description = "The KSQL Instances IP's."
}

output "control_center_url" {
  value       = "https://${module.instances.control_center_instances_ip[0]}:9021"
  description = "The Control Center URL."
}
