terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.73.0"
    }
  }
}

provider "aws" {
  # Configuration options
}



resource "aws_instance" "ec2" {

  ami    = ""
  instance_type = "t2.micro"
  availability_zone = "us-west-2a"
  key_name = "class20nov"
}

resource "aws_volume_attachment" ebs_att" {
  device_name = "/dev/sdf"
  volume_id = aws_ebs_volume.ebs.id
  instance_id = aws_instance.ec2.id

}

resource "aws_ebs_volume" "ebs"{
  availability_zone = "us-west-2a"
  size = 1
  tags ={
    Name = "ec2-ebs"
  }
}
