output "ec2_instance_info" {
    value = aws_instance.roboshop[0]
}

output "ec2_tags" {
  value = aws_instance.roboshop[*].tags
}