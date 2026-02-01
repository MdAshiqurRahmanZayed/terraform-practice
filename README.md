# Terraform Practice

A collection of Terraform configurations for learning and practicing infrastructure as code on AWS. Each folder represents a specific project with unique infrastructure setups.

## Projects Overview

### VPC with Public/Private Subnets

Located in the folder [vpc_public_private_subnet_igw_rt_sg_ec2/](vpc_public_private_subnet_igw_rt_sg_ec2/), this project demonstrates:
- Setting up a VPC with public and private subnets.
- Configuring Internet Gateway and route tables.
- Creating security groups for controlled access.
- Deploying EC2 instances for public, private, and bastion host setups.

Refer to the folder-specific README for detailed instructions and features.

## General Terraform Workflow

Here are the general Terraform commands you can use across all projects:

```bash
# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Plan changes
terraform plan

# Apply changes
terraform apply

# Destroy infrastructure
terraform destroy

# Format code
terraform fmt -recursive
```

Always review the project-specific README files for tailored instructions.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/) configured with credentials
- AWS account with appropriate permissions

## Getting Started

1. **Configure AWS credentials**
   ```bash
   aws configure
   ```

2. **Navigate to a project folder**
   ```bash
   cd vpc_public_private_subnet_igw_rt_sg_ec2
   ```

3. **Follow the project-specific README** for setup and deployment instructions

## Best Practices

- Always review `terraform plan` output before applying changes
- Use `.tfvars` files for environment-specific configurations
- Never commit sensitive data or `.tfstate` files to version control
- Use remote state management for production environments
- Tag resources consistently for better cost tracking

## Project Structure

Each project folder contains:
- `main.tf` - Main infrastructure definitions
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `terraform.tfvars.example` - Example variables file
- `README.md` - Project-specific documentation

## Useful Commands

```bash
# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Plan changes
terraform plan

# Apply changes
terraform apply

# Destroy infrastructure
terraform destroy

# Format code
terraform fmt -recursive
```

## Contributing

This is a personal learning repository. Feel free to fork and experiment with your own configurations.

## License

Free to use for learning and educational purposes.
