#!/bin/bash
yum install -y nfs-utils
mkdir jenkins_home
mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 ${efs_dnsname}:/ /jenkins_home
echo ECS_CLUSTER=jenkins >> /etc/ecs/ecs.config
