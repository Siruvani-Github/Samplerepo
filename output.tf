 output "instance_ip_addresses" {
  # Result is a map from instance id to private and public IP addresses, such as:  #  {"i-1234" = ["192.168.1.2","54.234.188.251,] "i-5678" = ["192.168.1.5","3.90.189.190",] }
   value = {
    for instance in aws_instance.awsserverinstance:
      # instance.id => instance.private_ip
      # "aws_instance_id" => instance.id
      # "instance_public_ip" => instance.public_ip
      # "instance_type" => instance.instance_type
      instance.id => [instance_public_ip,instance.instance_type]
  }
 }

# output "instance_ip_address_method_2" {
 # type        = string
  # value       = element([for v in values(aws_instance.awsserverinstance) : v.public_ip], 0)
# }
