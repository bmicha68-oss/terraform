terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  ## region = "us-east-1" Hard coded region, should be passed as variable
  region = var.aws_region
}

resource "aws_instance" "demo" {
  ami = "ami-0b6c6ebed2801a5cb" # ubuntu
  ## instance_type = "t2.micro"
  ##Instance type should be passed as variable, not hard coded
  instance_type = var.ec2_instance_type
  tags = {
    Name = "test-server-iac"
  }
}


#output "instance_id" {
# value = aws_instance.demo.id
#}

#output "public_ip" {
# value = aws_instance.demo.public_ip
#}
