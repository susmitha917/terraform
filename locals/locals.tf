locals {
    ami_id = "ami-090252cbe067a9e58"
    sg_id = "sg-0f43d0bd748c5c8ee"
    #instance_type = "t3.micro"
    instance_type = var.instance_names == "db" ? "t3.small" : "t3.micro"
    tags = {
        name = "locals"
    }

}