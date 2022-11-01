resource "aws_instance" "RockPaperScissor" {
  ami                  = var.amiID
  instance_type        = var.instanceType
  key_name             = var.keyName
  associate_public_ip_address = "true"
  
  vpc_security_group_ids      = [ "${aws_default_security_group.default.id}" ]
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
