function aws-ec2-connect --description "Connect to an EC2 instance"
    ssh -i ~/.ssh/lebara/aws/lebaraio20140829.pem ubuntu@$argv
end

