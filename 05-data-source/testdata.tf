// to check whether datsource will fetch all the dependent resource  information
data "aws_instance" "example" {
    instance_id = "i-00f23b91c2eebba52"
  
}

output "datasource_instance_output" {
    value = data.aws_instance.example
}

# Get associated security groups
# data "aws_security_group" "example" {
#   id = tolist(data.aws_instance.example.security_groups)[0]
# }

# Get associated IAM instance profile
# data "aws_iam_instance_profile" "example" {
#   name = data.aws_instance.example.iam_instance_profile
# }

# Get associated subnet
data "aws_subnet" "example" {
  id = data.aws_instance.example.subnet_id
}

# Get associated VPC
# data "aws_vpc" "example" {
#   id = data.aws_instance.example.vpc_id
# }

# Output information
output "instance_info" {
  value = {
    instance_id      = data.aws_instance.example.id
    private_ip       = data.aws_instance.example.private_ip
    public_ip        = data.aws_instance.example.public_ip
    security_groups  = data.aws_instance.example.security_groups
    subnet_id        = data.aws_instance.example.subnet_id
    # vpc_id           = data.aws_instance.example.vpc_id
    iam_profile      = data.aws_instance.example.iam_instance_profile
    key_name         = data.aws_instance.example.key_name
    instance_type    = data.aws_instance.example.instance_type
  }
}