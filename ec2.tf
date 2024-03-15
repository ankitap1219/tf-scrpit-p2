resource "aws_instance" "step-8" {
    ami = "ami-07761f3ae34c4478d"
    instance_type = "t2.micro"
    key_name = "newkp"
    vpc_security_group_ids = ["${aws_security_group.sg.id}"]
    subnet_id = aws_subnet.subnet-1.id
    associate_public_ip_address = true
    user_data = file("${path.module}/data.sh")

    tags = {
        Name = "Step-8"
    }

}