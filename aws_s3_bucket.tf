resource "aws_s3_bucket" "jjefries" {
    bucket = "jjefries-bucket"
    tags = {
        Name        = "jjefries_bucket"
        Environment = "dev"
    }
}

resource "aws_s3_bucket_public_access_block" "public-access-block" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "mycompliantpolicy" {
  bucket = "mycompliantbucketname"

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "mycompliantpolicy"
    Statement = [
      {
        Sid       = "HTTPSOnly"
        Effect    = "Deny"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          aws_s3_bucket.mycompliantbucket.arn,
          "${aws_s3_bucket.mycompliantbucket.arn}/*",
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport" = "false"
          }
        }
      },
    ]
  })
}

resource "local_file" "myprofile" {
    filename         = "/home/ec2-user/terraform/profile1.txt"
    file_permission  = "0777"
    content          = "Hello! My name is Joseph Jefries and I am learning terraform"
    directory_permission = "0777"
}

resource "aws_s3_object" "jjefries-bucket1" {
    bucket = "jjefries-bucket"
    source = "/home/ec2-user/terraform/profile1.txt"
    key = "profile.txt"
}

resource "aws_s3_bucket_acl" "jjefries-bucket1-acl" {
  bucket = aws_s3_bucket.jjefries.id # Equal to "jjefries_bucket"
  acl    = "authenticated-read"
  # acl = private -> Owner gets FULL_CONTROL. No one else has access rights (default)
  # acl = public-read -> Owner gets FULL_CONTROL. Others get READ access
  # acl = public-read-write -> Owner gets FULL_CONTROL. Others get READ and WRITE access. Not recommended
  # acl = aws-exec-read -> Owner gets FULL_CONTROL. AWS EC2 gets READ access to GET the AMI bundle from amazon S3
  # acl = authenticated-read -> Owner gets FULL_CONTROL. Authenticated user gets READ access
}
