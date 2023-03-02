provider "aws" {
	region = "ap-south-1"
}

resource "aws_instance" "mymachine" {
	ami = "ami-09ba48996007c8b50"
	instance_type = "t2.micro"
}
output "myec2machine" {
	value = aws_instance.mymachine
}