output "ansible_node_ip_address" {
  value = "${aws_instance.ansible_node.public_dns}"
}