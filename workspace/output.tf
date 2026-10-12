output "ec2_instance_info" {
  value = [
    for instance in aws_instance.roboshop : {
      id             = instance.id
      ami            = instance.ami
      instance_type  = instance.instance_type
      public_ip      = instance.public_ip
      private_ip     = instance.private_ip
      availability_zone = instance.availability_zone
      tags           = instance.tags
    }
  ]
}

output "ec2_tags" {
  value = aws_instance.roboshop[*].tags
}