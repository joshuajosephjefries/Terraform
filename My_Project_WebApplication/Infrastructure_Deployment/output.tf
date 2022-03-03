# This file consists of the output value that is to be used by Ansible script. 

output "vm_public_ip" {
    value = aws_eip.my_elastic_ip.public_ip
}

resource "local_file" "my_public_ip" {
    content  = aws_eip.my_elastic_ip.public_ip
    filename = "C:\\Users\\josep\\Desktop\\Terraform\\Terraform\\My_Project_WebApplication\\Ansible_Application_Deployment\\my_ip.txt"
}

output "public_key" {
    value = tls_private_key.example.public_key_openssh
}

resource "local_file" "public_key" {
    content  = tls_private_key.example.public_key_openssh
    filename = "C:\\Users\\josep\\Desktop\\Terraform\\Terraform\\My_Project_WebApplication\\Ansible_Application_Deployment\\public_key.pem"
}