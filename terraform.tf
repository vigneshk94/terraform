resource "aws_instance" "master" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  associate_public_ip_address = "true"
  tags = {
    name = "${var.name_of_the_instance}"
  }
}

resource "aws_instance" "node" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  associate_public_ip_address = "true"
  tags = {
    name = "${var.name_of_the_instance}"
  }
}
