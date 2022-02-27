resource "aws_ami_from_instance" "my_ami" {
  name               = "my_ami_snapshot"
  source_instance_id = "i-045ac8ccf96cd19c4" # Instance ID
  snapshot_without_reboot = true
  tags = {
      Name = "Linux AMI"
  }
}

output "my_output" {
    value = "AMI Snapshot is created successfully"
}