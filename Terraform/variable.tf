variable "vpcID" {
  type        = string
  description = "VPC-ID for configuring networking"
  default     = "vpc-3fb94654"
}

variable "sgName" {
  type        = string
  description = "Security group fo inbound and outbound traffic"
  default     = "securityGroup"
}

variable "amiID" {
  type        = string
  description = "AMI ID of ec2 instance"
  default     = "ami-0e6329e222e662a52"
}

variable "instanceType" {
  type        = string
  description = "Instance Type"
  default     = "t2.micro"
}

variable "region" {
  type        = string
  description = "aws region"
  default     = "ap-south-1a"
}

variable "keyName" {
  type        = string
  description = "aws key name"
  default     = "visheshNew"
}

variable "CidrBlock" { 
	type = string
	description = "CIDR for VPC"
	default="10.0.0.0/16"
}

variable "az" {
	type = list
	description = "Availability zone for subnets"
	default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}