variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  default = "jenkins_key1"
}
variable "ami_id" {
  default = "ami-0ce71448843cb18a1"
}
variable "region" {
  default = "eu-west-1"
}

variable "managed_by" {
  default     = "terraform"
  description = "terraform"
}

variable "app_name" {
  default = "JenkinsSetup"
}

variable "environment" {
  default     = "dev"
  description = "Name of the environment. e.g. prod, qa, dev"
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}

variable "var.subnet_id" {
  default = ""
}

variable "var.vpc_id" {
  default = ""
}

variable "az_count" {
  description = "Number of availability zones to use"
  default     = 2
}

