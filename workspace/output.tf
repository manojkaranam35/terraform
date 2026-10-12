output "ec2_instance_info" {
    value = aws_instance.roboshop[*]
}

output "ec2_tags" {
  value = aws_instance.roboshop[*].tags
}