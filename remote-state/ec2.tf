resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0f43d0bd748c5c8ee"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}