output "master_ip_address" {
  value = "${aws_instance.master.*.public_ip}"
}

output "node_ip_address" {
  value = "${aws_instance.node.*.public_ip}"
}
