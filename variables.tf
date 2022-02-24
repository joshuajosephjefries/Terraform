# Be sure to get the access key, and secret_key from AWS Console
# It is better to have the credentials stored as env variables or probably in a file like this one.
# For security reasons, you can push this file to .gitignore 

variable "aws_access_key" {
    default = "Get-access-key-from-aws-console"
    type = string
    description = "This is used to access the aws access key"
}
variable "aws_secret_key" {
    default = "Get-secret-key-from-aws-console"
    type = string
    description = "This is used to access the aws secret key"
}
variable "linuxami" {
    default = "ami-033b95fb8079dc481"
    type = string
    description = "This is used to access the linux ami of the instance"
}
variable "type" {
    default = "t2.micro"
    type = string
    description = "This is used to access the type of the instance"
}
variable "region" {
    default = "us-east-1"
    type = string
    description = "This is used to access the region of the instance"
}
variable "windowsami" {
    default = "ami-0c19f80dba70861db"
    type = string
    description = "This is used to access the windows ami of the instance"
}
variable "myvpc" {
    default = "vpc-0bba96be7ff2002a0"
    type = string
    description = "This is used to access the vpc of the instance"
}
variable "subnet" {
    default = "subnet-0c74ca62f066ae5b0"
    type = string
    description = "This is used to access the subnet of the instance"
}
