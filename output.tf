output "endpoint" {
  value = "${aws_elb.jenkinsELB.dns_name}"
}
