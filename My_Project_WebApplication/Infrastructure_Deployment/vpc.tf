/* Creating a custom VPC for our Application using module library.
This sets public subnets, availability zone, & CIDR.
*/
module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    name = "vpc_for_project"
    cidr = "192.168.0.0/16"

    azs = ["us-east-1a"]
    public_subnets = ["192.168.0.0/20", "192.168.16.0/20", "192.168.32.0/20"]
    tags = {
        Name = "Project_VPC"
        createdBy = "JoshuaJosephJefries"
    }
}