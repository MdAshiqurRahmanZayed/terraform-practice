# VPC with Public/Private Subnets, IGW, Route Tables, Security Groups & EC2

This project demonstrates the creation of a complete AWS VPC setup with networking and EC2 instances using Terraform.

## Features

- **VPC Setup**: Creates a VPC with DNS support.
- **Subnets**: Configures public and private subnets.
- **Internet Access**: Sets up an Internet Gateway for public subnets.
- **Routing**: Configures route tables for traffic routing.
- **Security**: Implements security groups for controlled access to resources.
- **Compute**: Deploys EC2 instances for public, private, and bastion host setups.

## Outputs

- AMI details
- VPC and subnet IDs
- Security group IDs
- EC2 instance IDs and IPs
- SSH connection commands

## Security

- `.tfvars` files excluded from git
- State files not committed
- Bastion host for private instance access
- Configure security groups per requirements

## Cleanup

```bash
terraform destroy
```
