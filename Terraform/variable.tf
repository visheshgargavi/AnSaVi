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