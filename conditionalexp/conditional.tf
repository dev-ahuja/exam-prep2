provider "aws" {
  region = "ap-south-1"
}

variable "istest" {

}
resource "aws_instance" "dev" {
  ami           = "ami-09ba48996007c8b50"
  instance_type = "t2.micro"
  count         = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-09ba48996007c8b50"
  instance_type = "t2.large"
  count         = var.istest == false ? 1 : 0

}