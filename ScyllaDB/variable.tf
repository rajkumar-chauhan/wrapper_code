variable "ami_id" {
    type = string
    default = "ami-0a0e5d9c7acc336f1"
    description = "ami id"
}


variable "key_name" {
    type = string
    default = "devinfrap9"
    description = "instance key"
}

variable "volume_size" {
    type = number
    default = 20
    description = "size"
}

variable "volume_type" {
    type = string
    default = "gp2"
    description = "instance type"
}

variable "encrypted_volume" {
    type = bool
    default = true
    description = "instance type"
}

variable "count_ec2_private" {
    type = string
    default = "1"
    description = "instance count"
}



variable "private_instance_type" {
    type = string
    default = "t2.medium"
    description = "instance type private medium"
}



variable "private_tags" {
  type        = map(string)
  description = "These are the additional tags associated with the main tag of my ec2"
  default = {Owner = "bhavnesh"}
  }

variable private_security_group_name {
    type = string
    default = "scylla_sg"
    description = "security group for scyllaDB instance"
}


variable "ingress_ports" {
    type = list(number)
    default = [ 22, 9042 ]
}


variable "app_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0"]
}

variable "ssh_cidr" {
    type =  list(string)
    default = ["0.0.0.0/0"]
}



variable "zone" {
    type = list(string)
    default = ["us-east-1a","us-east-1b"]
    description = "availibity zone"
}


variable "environment" {
  type = string
  default = "Dev"
  description = "describe the environment here"
  
}

variable "private_name" {
  type        = string
  description = "name of the private instance"
  default     = "Dev-scylla"
}


variable "create" {
  description = "Whether to create security group and all rules"
  type        = bool
  default     = false
}

variable "tag_private_host_sg" {
    type = string
    default = "scylla-sg"
    description = "private host security group"
}
