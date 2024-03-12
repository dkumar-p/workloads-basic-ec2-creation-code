output "all_vpc_ids" {
  description = "List of all vpc´s in this account"
  value       = aws_vpc.Subbu_Test_VPC.id
}

output "public_subnets" {
  description = "List of all vpc´s in this account"
  value       = aws_subnet.subbu-public-subnet.id
}

output "private_subnets" {
  description = "List of all vpc´s in this account"
  value       = aws_subnet.subbu-private-subnet.id
}

output "igw" {
  description = "List of all vpc´s in this account"
  value       = aws_internet_gateway.subbu-igw.id
}

output "security_group" {
  description = "List of all vpc´s in this account"
  value       = aws_security_group.subbu-SG.id
}

output "ec2_instance" {
  description = "List of all vpc´s in this account"
  value       = aws_instance.subbu-ec2-test.id
}

