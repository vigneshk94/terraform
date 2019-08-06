####################################################################
# VARIABLES
####################################################################

variable {
    region        = "${region}"
    access_key    = "${access_key}"
    secret_key    = "${secret_key}"
    ami           = "${ami}"
    instance_type = "${instance_type}"
    key_name      = "${key_name}"
    Name          = "${Name_of_the_instance}"
}

####################################################################
# PROVIDERS
####################################################################

provider "aws" {
    region = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "aws_instance" "web" {
    ami           = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name      = "${var.key_name}"
    associate_public_ip_address = "true"
    tags {
        Name = "${var.Name_of_the_instance}"
    }
}

output "web_ip_address" {
  value = "${aws_instance.web.*.public_ip}"
}
