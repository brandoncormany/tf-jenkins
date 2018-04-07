# tf-jenkins
Configures the following:
* VPC for jenkins
* Internet Gateway
* Route table with Internet Access to Internet Gateway
* 3 public subnets in different AZs
* EFS file system attached to the 3 previously created Public subnets
* Create userdata script to attach EFS store to an instance.
* Create an ECS Cluster named jenkins
* Add ASG to create instance add to ECS cluster previously created and attach to EFS via launch_configuration

# Make sure to create IAM role before hand to include ECS access.

To Be Completed
* Add in creation of ECS Task for Jenkins
* Externalize jenkins_home location to variable
* Creation of ECS service for previously created ECS Task
* Make sure task runs container at root so there is no permissions errors for container access EFS store.

