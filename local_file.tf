resource "local_file" "Introduction" {
    local_file = "/home/ec2-user/new_file.txt"
    content = "Hi, my name is Joshua Joseph Jefries. I am learning Terraform"
    file_permission = "0777"
    directory_permission = "0777"
}