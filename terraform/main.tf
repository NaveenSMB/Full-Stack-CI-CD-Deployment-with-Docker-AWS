provider "aws" {
  region = "us-east-1"  # Set AWS region
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Use Ubuntu AMI
  instance_type = "t2.micro"  # Use small instance
  key_name      = "your-key"  # SSH Key

  tags = {
    Name = "DockerServer"  # Assign name tag
  }
}

