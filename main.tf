terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
     
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile  = "Sample"
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.micro"
  ami                    = "ami-0ed9277fb7eb570c9"
  
  tags = {
    Name = "import"
  }

}