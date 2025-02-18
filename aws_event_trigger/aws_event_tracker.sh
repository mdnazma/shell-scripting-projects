#!bin/bash

#################################################
# Author: Nazma
# Date: 18 Feb 2025
# version: v1
# Description: This script reports the AWS usage.
#################################################

# AWS s3
# AWS ec2
# AWS IAM

set -x

# list s3 buckets
echo "listing s3 buckets"
aws s3 ls > resource.txt

# list ec2 instances
echo "Listing ec2 instance id"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list IAM users
echo "Listing IAM user id"
aws iam list-users | jq '.Users[].UserId'
