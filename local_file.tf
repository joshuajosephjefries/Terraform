resource "local_file" "profile" {
  filename = "/home/ec2-user/terraform/profile1.txt"
  file_permission = "0777"
  content = "Hello! My name is Joseph Jefries and I am learning terraform"
  directory_permission = "0777"
 }
