# The private key generated by this resource will be stored unencrypted in your Terraform state file. 
# Use of this resource for production deployments is not recommended.  
# Instead, generate a private key file outside of Terraform and distribute it securely to the system where Terraform will be run.
# As per https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
  tags ={
      Name = "Application-key"
      createdBy = "JoshuaJosephJefries"
      }
}