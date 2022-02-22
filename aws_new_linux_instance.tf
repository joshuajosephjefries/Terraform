resource "aws_instance" "webserver" {
    ami = "${var.ami}"
    count = 1
    instance_type = "${var.type}"
}

provider "aws" {
    alias = "aws_new"
    access_key = var.aws_access_key 
    secret_key = var.aws_secret_key
    region = var.region
}