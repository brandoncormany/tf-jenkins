resource "aws_efs_file_system" "jenkins_efs" {
  tags {
    Name = "jenkins_efs"
  }
}

resource "aws_efs_mount_target" "publicA" {
  file_system_id  = "${aws_efs_file_system.jenkins_efs.id}"
  subnet_id       = "${aws_subnet.publicA.id}"
  security_groups = ["${aws_default_security_group.default.id}"]
}

resource "aws_efs_mount_target" "publicB" {
  file_system_id  = "${aws_efs_file_system.jenkins_efs.id}"
  subnet_id       = "${aws_subnet.publicB.id}"
  security_groups = ["${aws_default_security_group.default.id}"]
}

resource "aws_efs_mount_target" "publicC" {
  file_system_id  = "${aws_efs_file_system.jenkins_efs.id}"
  subnet_id       = "${aws_subnet.publicC.id}"
  security_groups = ["${aws_default_security_group.default.id}"]
}
