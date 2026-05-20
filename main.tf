terraform {
    required_version = ">=1.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}
provider "aws" {
    region = "ap-south-1"
    default_tags {
        tags = {
            Environment = "production"
            ManagedBy = "terraform" 
        }
    }
}

resource "aws_instance" "web_server" {
    ami           = "ami-051a31ab2f4d498f5" #AL2
    instance_type = "t2.micro"
    tags = {
        Name = "WebServer"
    }
}