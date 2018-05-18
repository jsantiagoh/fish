function aws-ec2-search
    aws-talk aws ec2 describe-instances --filter "Name=tag-key,Values=Name" "Name=tag-value,Values=*$argv*" "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*][Tags[?Key=='Name'].Value[],NetworkInterfaces[0].PrivateIpAddresses[0].PrivateIpAddress]" --output text
end

