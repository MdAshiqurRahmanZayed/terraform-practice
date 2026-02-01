# AMI Output
output "ami_id" {
  description = "AMI ID being used for EC2 instances"
  value       = data.aws_ami.amazon_linux.id
}

output "ami_name" {
  description = "AMI name being used"
  value       = data.aws_ami.amazon_linux.name
}

# VPC Outputs
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

# Subnet Outputs
output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private.id
}

# Internet Gateway Output
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

# Route Table Outputs
output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

# Security Group Outputs
output "public_sg_id" {
  description = "ID of the public security group"
  value       = aws_security_group.public_sg.id
}

output "private_sg_id" {
  description = "ID of the private security group"
  value       = aws_security_group.private_sg.id
}

# EC2 Instance Outputs
output "public_instance_id" {
  description = "ID of the public EC2 instance"
  value       = aws_instance.public_ec2.id
}

output "public_instance_public_ip" {
  description = "Public IP of the public EC2 instance"
  value       = aws_instance.public_ec2.public_ip
}

output "public_instance_private_ip" {
  description = "Private IP of the public EC2 instance"
  value       = aws_instance.public_ec2.private_ip
}

output "bastion_instance_id" {
  description = "ID of the bastion host"
  value       = aws_instance.bastion.id
}

output "bastion_host_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "bastion_host_private_ip" {
  description = "Private IP of the bastion host"
  value       = aws_instance.bastion.private_ip
}

output "private_instance_id" {
  description = "ID of the private EC2 instance"
  value       = aws_instance.private_ec2.id
}

output "private_instance_private_ip" {
  description = "Private IP of the private EC2 instance"
  value       = aws_instance.private_ec2.private_ip
}

# SSH Connection Commands
output "ssh_to_bastion" {
  description = "Command to SSH into bastion host"
  value       = "ssh -i /path/to/${var.key_name}.pem ec2-user@${aws_instance.bastion.public_ip}"
}

output "ssh_to_public_instance" {
  description = "Command to SSH into public instance"
  value       = "ssh -i /path/to/${var.key_name}.pem ec2-user@${aws_instance.public_ec2.public_ip}"
}

output "ssh_to_private_from_bastion" {
  description = "Command to SSH into private instance from bastion"
  value       = "ssh ec2-user@${aws_instance.private_ec2.private_ip}"
}

# Summary Output
output "infrastructure_summary" {
  description = "Summary of deployed infrastructure"
  value = {
    ami_used                    = data.aws_ami.amazon_linux.name
    vpc_id                      = aws_vpc.main.id
    public_subnet_id            = aws_subnet.public.id
    private_subnet_id           = aws_subnet.private.id
    bastion_public_ip           = aws_instance.bastion.public_ip
    public_instance_public_ip   = aws_instance.public_ec2.public_ip
    private_instance_private_ip = aws_instance.private_ec2.private_ip
  }
}
