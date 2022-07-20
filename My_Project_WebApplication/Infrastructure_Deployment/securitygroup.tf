resource "aws_security_group" "project-sg" {
    name = "Project_Sec_Group"
    description = "To access windows ec2 instance, RDP port should be added to ingress"
    vpc_id = module.vpc.vpc_id
    tags = {
        Name = "Project_Sec_Group"
    }

    ingress {
        description = "Enabling SSH for ingress"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["172.168.3.0/24"]
    }
    ingress {
        description = "Enabling HTTP for ingress"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["172.168.3.0/24"]
    }
    ingress {
        description = "Enabling HTTPS for ingress"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["172.168.3.0/24"]
    }

    egress {
        description = "Enabling all for engress"
        from_port = 0
        to_port = 0
        protocol = "all" # Can also use "-1"
        cidr_blocks = ["172.168.0.0/24"]
    }
}
