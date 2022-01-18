# Confluent platform deployment in AWS

Deploys Confluent platform in AWS using Terraform & Ansible

### Reference

CP-Ansible

- [https://github.com/confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible)

The Instances & Services that will be deployed from this repository are:

- Zookeeper Instances
- Kafka Broker Instances
- Schema Registry Instances
- Kafka Connect Instances
- Confluent Control Center Instances
- KSQL Server Instances
- REST Proxy Instances

Jump Server Node will be used to deployed & configure the Confluent platform. All the instances will be deployed in Private Subnet.

The Kafka Connect Plugins that will be installed during deployment from Confluent Hub are:

- confluentinc/kafka-connect-jdbc
- confluentinc/kafka-connect-oracle-cdc
- mongodb/kafka-connect-mongodb
- confluentinc/kafka-connect-http

### Prerequisite

Terraform is already installed in local machine.

## Usage

- Clone this repository
- Setup Terraform Cloud Organisation & workspace. [https://app.terraform.io/](https://app.terraform.io/)
- Change the Terraform backend accordingly in backend.tf
- Add the below variable values accordingly

### terraform.tfvars

```
vpc_id            = "vpc-012345abcdefghijk"

public_subnet_id  = ["subnet-00abcdefghijk", "subnet-01abcdefghijk", "subnet-02abcdefghijk"]

private_subnet_id = ["subnet-03abcdefghijk", "subnet-04abcdefghijk", "subnet-05abcdefghijk"]

vpc_cidr_block    = "172.0.0.0/16"

keypair_name      = "confluent-demo-key"

vpn_admin_password = "asdflkjhgqwerty1234"
```

- Change other variables in variables.tf file if needed
- terraform init
- terraform plan
- terraform apply -auto-approve -refresh=false

- Login to [https://<openvpn_access_server_ip>:943](https://<openvpn_access_server_ip>:943) with user as openvpn & vpn_admin_password
- Download the VPN connection profile
- Download & use OpenVPN client to connect to AWS VPC.
- Finally browse the control center at [https://<control_center_private_ip>:9021](https://<control_center_private_ip>:9021)
