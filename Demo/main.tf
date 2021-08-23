terrrafoem {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
required version = ">= 0.14.9"
}

provider "aws" {
 profile = "default" 
  region = "us-east-2"
  
}

resource "aws_instance" "app_server" {
 ami = "ami-830c94e3"
  instance type = "t2.micro"
  tags = {
    name = "perichetla"
}
}








