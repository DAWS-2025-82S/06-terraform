locals {
  ami_id = data.aws_ami.joindevops.id
  instance_type = "t3.micro"
  name = "${var.project}-${var.environment}-${var.component}"
  //locals can refer other locals or variables
  local-ref-var = local.instance_type
}


variable "domain_name" {
    default = "raj82s.online"
}

// Assign one var to another
//locals can refer other locals or variables
//variable can't refer other variable
/*
variable "ref_var" {
    default = var.domain_name
}
*/