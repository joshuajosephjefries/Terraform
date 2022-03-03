variable "my_ami" {
    default = "ami-033b95fb8079dc481"
    type = string
    description = "AMI of the EC2 Instance"
}

variable "type" {
    default = "t2.micro"
    type = string
    description = "This is used to access the type of the instance"
}

variable "key_name" {
    default = "public_key"
    description = "Key to access EC2 instance"
}