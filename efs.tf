resource "aws_efs_file_system" "jenkinsefs" {
  creation_token = "jenkinsEFS"

  tags {
    Name = "jenkinsEFS"
  }
}
