variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "Bloque de IPs para VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  type = string
  description = "Subnet 1 CIDR"
  default = "10.0.10.0/24"
}

variable "subnet_2_cidr" {
  type = string
  description = "Subnet 2 CIDR"
  default = "10.0.20.0/24"
}
variable "subnet_3_cidr" {
  type = string
  description = "Subnet 3 CIDR"
  default = "10.0.30.0/24"
}

variable "availability_zone_1a" {
  type = string
  description = "Availability US east 1a"
  default = "us-east-1a"
}

variable "availability_zone_1b" {
  type = string
  description = "Availability US east 1b"
  default = "us-east-1b"
}

variable "availability_zone_1c" {
  type = string
  description = "Availability US east 1c"
  default = "us-east-1c"
}

variable "ami_id" {
  type        = string
  description = "AMI ID RHEL8"
  default     = "ami-0b0af3577fe5e3532"
}
