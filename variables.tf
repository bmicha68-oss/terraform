variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}



variable "ec2_instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
}

