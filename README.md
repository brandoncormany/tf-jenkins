# tf-jenkins
Configures the following:
* VPC for jenkins
* Internet Gateway
* Route table with Internet Access to Internet Gateway
* 3 public subnets in different AZs
* EFS file system attached to the 3 previously created Public subnets
* 