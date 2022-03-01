# This file consists of the output value that is to be used by Ansible script. 

output "vm_public_ip" {
    value = aws_eip.my_elastic_ip.public_ip
}