provider "aws" {
    region = "${region}"
    access_key = "${access_key}"
    secret_key = "${secret_key}"
}

resource "aws_instance" "web" {
    ami           = "${ami}"
    instance_type = "${instance_type}"
    key_name      = "${key_name}"
    associate_public_ip_address = "true"
    tags {
        Name = "${Name_of_the_instance}"
    }
}
