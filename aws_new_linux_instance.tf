resource "aws_instance" "webserver" {
    ami = "${var.ami}"
    count = 1
    instance_type = "${var.type}"
    key_name = "Key"
    tags = {
        Name = "Linux Instance"
    }
}

provider "aws" {
    alias = "aws_new"
    access_key = var.aws_access_key 
    secret_key = var.aws_secret_key
    region = var.region
}