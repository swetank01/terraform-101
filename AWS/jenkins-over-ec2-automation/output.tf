output "jenkins_ip_address" {
  value = "${aws_instance.jenkins.public_dns}"
}