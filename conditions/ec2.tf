resource "aws_instance" "roboshop" {
  ami = var.ami_id
  instance_type = var.environment == "hari" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [ aws_security_group.allow_more.id ]

  tags = var.ec2_tags
  }



resource "aws_security_group" "allow_more" {
  name        = var.sg_name
  description = "allow more traffic"


  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    tags = var.sg_tags
}
