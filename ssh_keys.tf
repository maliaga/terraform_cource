resource "aws_key_pair" "class1" {
  key_name = "ssh-class-1"
  public_key = "${file("class_key.pem.pub")}"
}