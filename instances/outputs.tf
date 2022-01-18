# Name: outputs.tf
# Owner: Saurav Mitra
# Description: Outputs the EC2 Instances IP & DNS

output "zookeeper_instances_ip" {
  value       = aws_instance.zookeeper[*].private_ip
  description = "The Zookeeper Instances IP's."
}

output "zookeeper_instances_dns" {
  value       = aws_instance.zookeeper[*].private_dns
  description = "The Zookeeper Instances Private DNS's."
}

output "kafka_broker_instances_ip" {
  value       = aws_instance.kafka_broker[*].private_ip
  description = "The Kafka Broker Instances IP's."
}

output "kafka_broker_instances_dns" {
  value       = aws_instance.kafka_broker[*].private_dns
  description = "The Kafka Broker Instances DNS's."
}

output "rest_proxy_instances_ip" {
  value       = aws_instance.rest_proxy[*].private_ip
  description = "The REST Proxy Instances IP's."
}

output "rest_proxy_instances_dns" {
  value       = aws_instance.rest_proxy[*].private_dns
  description = "The REST Proxy Instances DSN's."
}

output "control_center_instances_ip" {
  value       = aws_instance.control_center[*].private_ip
  description = "The Control Center Instances IP's."
}

output "control_center_instances_dns" {
  value       = aws_instance.control_center[*].private_dns
  description = "The Control Center Instances DNS's."
}

output "schema_registry_instances_ip" {
  value       = aws_instance.schema_registry[*].private_ip
  description = "The Schema Registry Instances IP's."
}

output "schema_registry_instances_dns" {
  value       = aws_instance.schema_registry[*].private_dns
  description = "The Schema Registry Instances DNS's."
}

output "kafka_connect_instances_ip" {
  value       = aws_instance.kafka_connect[*].private_ip
  description = "The Kafka Connect Instances IP's."
}

output "kafka_connect_instances_dns" {
  value       = aws_instance.kafka_connect[*].private_dns
  description = "The Kafka Connect Instances DNS's."
}

output "ksql_instances_ip" {
  value       = aws_instance.ksql[*].private_ip
  description = "The KSQL Instances IP's."
}

output "ksql_instances_dns" {
  value       = aws_instance.ksql[*].private_dns
  description = "The KSQL Instances DNS's."
}

output "control_center_instances_id" {
  value       = aws_instance.control_center[*].id
  description = "The Control Center Instances ID's."
}
