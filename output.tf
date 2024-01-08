output aws_instance_id {
description = "AWS EC2 instance id"
value = aws_instance.awsserverinstance.id
}
output aws_instance_name {
description = "AWS EC2 Name"
value = aws_instance.awsserverinstance.name
}
