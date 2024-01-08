output aws_instance_id {
description = "AWS EC2 instance id"
value = aws_instance.awsserverinstance.id
}
output aws_region.sh {
description = "AWS EC2 region"
value = aws_instance.awsserverinstance.region
}
