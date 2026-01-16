terraform { 
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}


provider "aws" {
    region = var.region
}

data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners = ["amazon"] # Canonical
  filter {
    name = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
  name = "virtualization-type"
  values = ["hvm"]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}

module "ec2_instance" {
   source = "./modules/ec2/instance"  
   instance_name=var.instance_name
   instance_type=var.instance_type
   ami=data.aws_ami.amazon-linux-2.id
}