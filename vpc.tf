resource "aws_vpc" "Subbu_Test_VPC" {
  cidr_block = "10.0.0.0/16"


 tags = {
    Name = "Subbu_Test_VPC"
 }
}

resource "aws_subnet" "subbu-public-subnet" {
  vpc_id     = aws_vpc.Subbu_Test_VPC.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-south-1a"
}

resource "aws_subnet" "subbu-private-subnet" {
  vpc_id     = aws_vpc.Subbu_Test_VPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1b"
}

resource "aws_internet_gateway" "subbu-igw" {
  vpc_id = aws_vpc.Subbu_Test_VPC.id

  tags = {
    Name = "Subbu_Test_VPC" 
  }
}