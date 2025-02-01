variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "domain_name" {
    default = "raj82s.online"
}

variable "zone_id" {
    default = "Z02394622J1SSYR6C9O0N"
}