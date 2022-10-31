resource "aws_security_group" "securityGroup" {
  name        = var.sgName
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpcID


  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "securityGroup"
  }
}

resource "aws_instance" "RockPaperScissor" {
  ami                  = var.amiID
  instance_type        = var.instanceType
  availability_zone    = var.region
  key_name             = var.keyName
  security_groups      = [ aws_security_group.securityGroup.name ]
  user_data            = <<-EOF
                        #! /bin/bash
                        sudo yum install httpd -y
                        sudo yum install git -y
                        sudo git clone https://github.com/NKShukla/rock-paper-scissors /var/www/html
                        sudo systemctl start httpd
                        sudo systemctl enable httpd
                
  EOF

  tags = {
    Name = "RockPaperScissor"
  }
}

resource "null_resource" "nullResource"  {
	provisioner "local-exec" {
    command = "chrome http://${aws_instance.RockPaperScissor.public_ip}/"
  }
}
