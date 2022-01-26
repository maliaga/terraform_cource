resource "aws_instance" "server1" {
    ami = var.ami_id
    instance_type = "t2.micro"
    count = 3
    subnet_id = aws_subnet.subnet1.id
    vpc_security_group_ids = [aws_security_group.sg1.id, aws_security_group.sg2.id]
    private_ip = "10.0.10.10"
    key_name = aws_key_pair.class1.id
    user_data = file("userdata.sh")

    tags = {
        Name = "server-${count.index}"
        Owner = "Mario"
        Env = "Dev"
    }
}