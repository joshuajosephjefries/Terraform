provider "aws" {
    alias = "aws_test"
    region = "us-east-1"
}

resource "aws_security_group" "WindowsRDPSecurityGroup" {
    name = "WindowsRDPSecurityGroup"
    description = "To access windows ec2 instance, RDP port should be added to ingress"
    vpc_id = var.myvpc
    tags = {
        Name = "WindowsRDPSecurityGroup"
    }

    ingress {
        description = "Enabling SSH for ingress"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["172.168.3.0/24"]
    }
    ingress {
        description = "Enabling RDP for ingress"
        from_port = 3389
        to_port = 3389
        protocol = "tcp"
        cidr_blocks = ["172.168.3.0/24"]
    }

    egress {
        description = "Enabling all for engress"
        from_port = 0
        to_port = 0
        protocol = "all" # Can also use "-1"
        cidr_blocks = ["172.168.3.0/16"]
    }
}

resource "aws_instance" "windowsserver" {
    ami = var.windowsami
    count = 1
    instance_type = var.type
    key_name = "Key"
    vpc_security_group_ids = [ aws_security_group.WindowsRDPSecurityGroup.id ]
    subnet_id = var.subnet
    private_ip = "172.31.13.13"
    tags = {
        Name = "Windows Instance"
    }
}
