function k8s-dashboard
    set POD_NAME (kubectl get pods -n default -l "app=kubernetes-dashboard,release=kubernetes-dashboard" -o jsonpath="{.items[0].metadata.name}")
    open https://localhost:8443
    echo "open https://localhost:8443 and cancel with CTRL-C when done"
    kubectl -n default port-forward $POD_NAME 8443:8443
end

