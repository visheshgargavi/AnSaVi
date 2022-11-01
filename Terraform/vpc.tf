resource "aws_vpc" "Project_VPC" {
	instance_tenancy = "default"
	cidr_block = var.CidrBlock
	tags = {
		Name ="Project"
	}
}

resource "aws_subnet" "Project_Subnet" {
	vpc_id = aws_vpc.Project_VPC.id
	cidr_block = "10.0.1.0/24"
	availability_zone = "ap-south-1a"
	tags = {
		Name = "Subnet1"
	}
}

resource "aws_internet_gateway" "Project_Internet_gw" {
	vpc_id = aws_vpc.Project_VPC.id
	tags = {
		Name = "Main"
	}
}

resource "aws_route_table" "Project_route_tbl" {
	vpc_id = aws_vpc.Project_VPC.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.Project_Internet_gw.id
	}
	tags = {
		Name = "newroutetbl"
	}
}

resource "aws_route_table_association" "a" {
	subnet_id      = aws_subnet.Project_Subnet.id
	route_table_id = aws_route_table.Project_route_tbl.id
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.Project_VPC.id


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

}