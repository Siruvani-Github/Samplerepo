output aws_instance_id {
description = "AWS EC2 instance id"
value = aws_instance.awsserverinstance.id
}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.awsserverinstance.public_ip
}
