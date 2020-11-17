data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = [
      "amzn2-ami-hvm-*-x86_64-gp2",
    ]
  }
  filter {
    name = "owner-alias"
    values = [
      "amazon",
    ]
  }
}

resource "aws_instance" "ansible_node" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = "t2.micro"
  key_name        = "aws-itneer"
  user_data = "${file("setup_ansible_node.sh")}"
  vpc_security_group_ids = ["${aws_security_group.sg_allow_ssh_ansible_node.id}"]

  tags = {
    Name = "ansible-node"
  }
}