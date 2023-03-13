resource "aws_instance" "lx_ec2" {
	ami = "ami-09ba48996007c8b50"
	instance_type = var.instance_type
}