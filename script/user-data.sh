#!/bin/bash

pip install aws

vol=vol-05bc5599c17cfa82b
mount_dir=/suraj
device=/dev/xvdf/

if [! -d $mount_dir ]
then
mkdir $mount_dir
fi

echo "this command is to fetch instance id"

instance_id=`curl http://169.254.169.254/latest/meta-data/instance-id`

echo "this command is to attach EBS to EC2"

aws ec2 attach-volume --volume-id $vol --instance-id $instance_id --device /dev/sdf

sleep 60 

echo "mount filesystem to folder"

mount $device $mount_dir
