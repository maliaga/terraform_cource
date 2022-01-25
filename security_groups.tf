
resource "aws_security_group" "sg1" {
  name        = "sg_ping_ssh"
  description = "Permitir ping y ssh"
  vpc_id      = aws_vpc.main1.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
      Name = "Ping y SSH"
  }
}

resource "aws_security_group" "sg2" {
  name        = "sg_http"
  description = "Permitir http"
  vpc_id      = aws_vpc.main1.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
      Name = "HTTP"
  }
}
resource "aws_security_group" "sg3" {
  name        = "sg_https"
  description = "Permitir http"
  vpc_id      = aws_vpc.main1.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
      Name = "HTTPS"
  }
}
