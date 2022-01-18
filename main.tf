# main.tf
# Owner: Saurav Mitra
# Description: This terraform config will create the infrastructure resources for Confluent Platform

# Security Groups
module "sg" {
  source              = "./sg"
  prefix              = var.prefix
  owner               = var.owner
  vpc_id              = var.vpc_id
  vpc_cidr_block      = var.vpc_cidr_block
  internet_cidr_block = var.internet_cidr_block
}

# Instances
module "instances" {
  source            = "./instances"
  prefix            = var.prefix
  owner             = var.owner
  vpc_id            = var.vpc_id
  public_subnet_id  = var.public_subnet_id
  private_subnet_id = var.private_subnet_id

  zookeeper_sg_id       = module.sg.zookeeper_sg_id
  kafka_sg_id           = module.sg.kafka_sg_id
  rest_proxy_sg_id      = module.sg.rest_proxy_sg_id
  control_center_sg_id  = module.sg.control_center_sg_id
  schema_registry_sg_id = module.sg.schema_registry_sg_id
  kafka_connect_sg_id   = module.sg.kafka_connect_sg_id
  ksql_sg_id            = module.sg.ksql_sg_id

  zookeeper_instances       = var.zookeeper_instances
  kafka_broker_instances    = var.kafka_broker_instances
  rest_proxy_instances      = var.rest_proxy_instances
  control_center_instances  = var.control_center_instances
  schema_registry_instances = var.schema_registry_instances
  kafka_connect_instances   = var.kafka_connect_instances
  ksql_instances            = var.ksql_instances
  keypair_name              = var.keypair_name
}

# Ansible Inventory File
resource "local_file" "ansible_inventory" {
  content = templatefile("inventory.tmpl", {
    keypair_name                  = var.keypair_name,
    zookeeper_instances_dns       = module.instances.zookeeper_instances_dns,
    kafka_broker_instances_dns    = module.instances.kafka_broker_instances_dns,
    rest_proxy_instances_dns      = module.instances.rest_proxy_instances_dns,
    control_center_instances_dns  = module.instances.control_center_instances_dns,
    schema_registry_instances_dns = module.instances.schema_registry_instances_dns,
    kafka_connect_instances_dns   = module.instances.kafka_connect_instances_dns,
    ksql_instances_dns            = module.instances.ksql_instances_dns,
  })
  filename = format("%s/%s", abspath(path.root), "inventory.yaml")
}
