function k8s-exec
    set name (kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' | fzf --layout reverse --header "Select pod to connect to" )
    kubectl exec -ti $name -- sh
end

