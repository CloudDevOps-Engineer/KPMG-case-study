#!/bin/bash


## Assuming either access keys are already exported or we are running the script
## on ec2 having iam role wit ec2 describe access.

instance_id=$1

## data_key could be ImageId, InstanceId, InstanceType, SubnetId etc..
data_key=$2

aws ec2 describe-instances \
    --instance-ids ${instance_id} \
    --query "Reservations[0].Instances[0].${data_key}" \
    --output json     