variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {
    #default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Project = "expense"
        Component = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
    }
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name = "expense-backend-dev"
    }
}
/* 
Terraform variables preference

1. command line --> -var "<var-name>=<var-value>"
2. tfvars
3. env var --> export TF_VAR_instance_type="t3.xlarge"
4. default values
5. user prompt */

// By default terraform will load vars from *.auto.tfvars and terraform.tfvars files
// If the file name  is different to load vars from different file name use -var-file=<filename> option
// terraform plan -var-file=test.tfvars
// terraform apply -var-file=test.tfvars

// To pass multiple vars
// terraform plan -var "instance_type=t3.large" -var "from_port=99"
