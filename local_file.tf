/* This task creates a file called new_file.txt on the local directory of AWS
   It also adds the content and sets the permission to the file and the folder it resides on */

resource "local_file" "profile" {
  filename = "/home/ec2-user/terraform/profile1.txt"
  file_permission = "0777"
  content = "Hello! My name is Joseph Jefries and I am learning terraform"
  directory_permission = "0777"
 }
