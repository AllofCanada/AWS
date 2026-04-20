
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
  backend "s3" {
    bucket = "farhan-tf1281"
    key = "ec2/terraform.tfstate"
    region = "ca-central-1"
    use_lockfile = true
  }
  
}

provider "aws" {
  region= "ca-central-1"
}

# resource "aws_instance" "example" {
#   ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }