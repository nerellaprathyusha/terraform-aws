terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 3.0.0"
        }
    }
}

provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "my_instance" {
    ami = "ami-0649bea3443ede307"
    instance_type = var.aws_instance_type
    tags = {
        Name = var.aws_instance_name
    }
}