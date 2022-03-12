resource "aws_instance" "app_ec2_instance" {
    ami = var.my_ami
    instance_type = var.type
    subnet_id = module.vpc.public_subnets[0]
    vpc_security_group_ids = [aws_security_group.project-sg.id]
    key_name = aws_key_pair.generated_key.key_name
    private_ip = "192.168.15.15"
    tags = {
        Name = "App-EC2_Instance"
        createdBy = "JoshuaJosephJefries"
    }
}

resource "aws_eip" "my_elastic_ip" {
    instance = aws_instance.app_ec2_instance.id
    vpc = true
}