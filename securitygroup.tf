resource "aws_security_group" "subbu-SG" {
  name        = "subbu-SG"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.Subbu_Test_VPC.id


 ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "subbu-SG"
  }
}

resource "aws_security_group_rule" "Http_port" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  description       = "Http Port"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.subbu-SG.id
}