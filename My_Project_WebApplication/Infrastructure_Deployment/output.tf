output "vm_public_ip" {
    value = aws_eip.my_elastic_ip.public_ip
}

resource "local_file" "my_public_ip" {
    content  = aws_eip.my_elastic_ip.public_ip
    filename = "/home/ec2-user/Terraform/My_Project_WebApplication/Ansible_Application_Deployment/Secrets/my_ip.txt"
}

output "public_key" {
    value = tls_private_key.example.public_key_openssh
}

resource "local_file" "public_key" {
    content  = tls_private_key.example.public_key_openssh
    filename = "/home/ec2-user/Terraform/My_Project_WebApplication/Ansible_Application_Deployment/Secrets/public_key.pem"
}

output "private_key" {
    value = tls_private_key.example
    sensitive = true
}

resource "local_file" "private_key" {
    content  = tls_private_key.example.private_key_pem
    filename = "/home/ec2-user/Terraform/My_Project_WebApplication/Ansible_Application_Deployment/Secrets/private_key.pem"
}


