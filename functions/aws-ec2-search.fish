function aws-ec2-search --description "List all EC2 instances"
    set instance (_search | fzf --header "Select the instance to connect to" | cut -d " " -f1 )
    aws-ec2-connect $instance
end

function _search
    # cat ~/tmp/instances | sed -e 'N;s/\n/ | /g'
    aws-talk aws ec2 describe-instances --filter "Name=tag-key,Values=Name" "Name=tag-value,Values=*$argv*" "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*][Tags[?Key=='Name'].Value[],NetworkInterfaces[0].PrivateIpAddresses[0].PrivateIpAddress]" --output text | sed -e 'N;s/\n/ | /g'
end
