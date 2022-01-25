variable "region" {
  type        = string
  description = "AWS Region"
}

variable "vpc_cidr" {
  type        = string
  description = "Bloque de IPs para VPC"
}

variable "subnet_1_cidr" {
  type = string
  description = "Subnet 1 CIDR"
}

variable "subnet_2_cidr" {
  type = string
  description = "Subnet 2 CIDR"
}
variable "subnet_3_cidr" {
  type = string
  description = "Subnet 3 CIDR"
}

variable "availability_zone_1a" {
  type = string
  description = "Availability US east 1a"
}

variable "availability_zone_1b" {
  type = string
  description = "Availability US east 1b"
}

variable "availability_zone_1c" {
  type = string
  description = "Availability US east 1c"
}

variable "ami_id" {
  type        = string
  description = "AMI ID RHEL8"
}
