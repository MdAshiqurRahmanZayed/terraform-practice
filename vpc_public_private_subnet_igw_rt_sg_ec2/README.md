# VPC with Public/Private Subnets, IGW, Route Tables, Security Groups & EC2

AWS infrastructure with VPC networking and EC2 instances using Terraform.

## Infrastructure Components

- VPC with DNS support
- Public subnet with Internet Gateway
- Private subnet with NAT Gateway (optional)
- Internet Gateway and Route Tables
- Security Groups (public/private access)
- EC2 instances (public, private, bastion)

## Prerequisites

- Terraform >= 1.0
- AWS CLI configured
- AWS SSH key pair

## Setup Steps

1. **Copy variables file**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. **Configure variables** in `terraform.tfvars`:
   - `aws_profile` - AWS CLI profile
   - `key_name` - SSH key pair name (required)
   - `project_name` - Project identifier

3. **Initialize Terraform**
   ```bash
   terraform init
   ```

4. **Deploy infrastructure**
   ```bash
   terraform plan
   terraform apply
   ```

## Key Variables

- `aws_region` - Default: eu-central-1
- `vpc_cidr` - Default: 10.0.0.0/16
- `instance_type` - Default: t2.micro
- `key_name` - Required

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
