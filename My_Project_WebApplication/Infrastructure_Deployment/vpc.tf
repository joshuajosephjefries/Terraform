/* Creating a custom VPC for our Application using module library.
This sets public subnets, availability zone, & CIDR.
*/
module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    name = "vpc_for_project"
    cidr = "172.48.0.0/16"

    azs = ["us-east-1a"]
    public_subnets = ["172.48.0.0/20", "172.48.16.0/20", "172.48.32.0/20", "172.48.48.0/20"]
    tags = {
        Name = "Project_VPC"
        createdBy = "JoshuaJosephJefries"
    }
}