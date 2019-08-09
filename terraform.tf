####################################################################
# VARIABLES
####################################################################

variable "region" {}
variable "access_key" {}
variable "secret_key" {}
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "name" {}
variable "name_of_the_instance" {}


####################################################################
# PROVIDERS
####################################################################

provider "aws" {
    region = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "aws_instance" "master" {
    ami           = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name      = "${var.key_name}"
    associate_public_ip_address = "true"
    tags = {
        name = "${var.name_of_the_instance}"
    }
}

resource "aws_instance" "node" {
    ami           = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name      = "${var.key_name}"
    associate_public_ip_address = "true"
    tags = {
        name = "${var.name_of_the_instance}"
    }
}


output "master_ip_address" {
  value = "${aws_instance.master.*.public_ip}"
}

output "node_ip_address" {
  value = "${aws_instance.node.*.public_ip}"
}
