/* This task creates a file called new_file.txt on the local directory of AWS
   It also adds the content and sets the permission to the file and the folder it resides on */

resource "local_file" "Introduction" {
    filename = "/home/ec2-user/new_file.txt"
    content = "Hi, my name is Joshua Joseph Jefries. I am learning Terraform"
    file_permission = "0777"
    directory_permission = "0777"
}