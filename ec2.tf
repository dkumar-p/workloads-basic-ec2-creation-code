resource "aws_instance" "subbu-ec2-test" {

  #count = 2

  ami           = "ami-0e159fc62d940d348"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subbu-public-subnet.id
  vpc_security_group_ids = [aws_security_group.subbu-SG.id]
  key_name       = "subbu-keypair"

  root_block_device {
      volume_size           = "10"
      volume_type           = "gp2"
      encrypted             = true
      delete_on_termination = true

      tags = {
       Name = "subbu-ec2-test"
      }
    }


  tags = {
    Name = "subbu-ec2-test"
  }
}