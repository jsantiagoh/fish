set -x KUBECONFIG $HOME/.kube/config:$HOME/.kube/config-prod:$HOME/.kube/config-acceptance:$HOME/.kube/config-ci-ie

# Contexts
abbr --add kcc 'kubectl config get-contexts'
abbr --add kctx 'kubectx'

# Core
abbr --add k 'kubectl'
abbr --add kc 'kubectl'
abbr --add kube 'kubectl'
abbr --add kd 'kubectl delete'
abbr --add kds 'kubectl describe service'
abbr --add ke 'kubectl edit'
abbr --add kg 'kubectl get'
abbr --add kga 'kubectl get --all-namespaces'
abbr --add kl 'kubectl logs'
abbr --add kcl 'kubectl logs'
abbr --add klf 'kubectl logs -f'
abbr --add kra 'krender; kapply'

# Cronjobs
abbr --add kdsc 'kubectl describe cronjobs'
abbr --add kec 'kubectl edit cronjobs'
abbr --add kgc 'kubectl get cronjobs'
abbr --add kgcy 'kubectl get cronjobs -o yaml'
abbr --add kgac 'get_cluster_resources cronjobs'

# Deployments
abbr --add kdd 'kubectl delete deployment'
abbr --add kdsd 'kubectl describe deployments'
abbr --add ked 'kubectl edit deployments'
abbr --add kgd 'kubectl get deployments'
abbr --add kgdy 'kubectl get deployments -o yaml'

# From file
abbr --add kaf 'kubectl apply -f'
abbr --add kcf 'kubectl create -f'
abbr --add kdf 'kubectl delete -f'
abbr --add kef 'kubectl edit -f'
abbr --add kdsf 'kubectl describe -f'
abbr --add kgf 'kubectl get -f'

# Ingress
abbr --add kdi 'kubectl delete ingress'
abbr --add kgi 'kubectl get ingress'
abbr --add kei 'kubectl edit ingress'
abbr --add kgiy 'kubectl get ingress -o yaml'
abbr --add kdsi 'kubectl describe ingress'
abbr --add kgai 'get_cluster_resources ingress'

# Jobs
abbr --add kdj 'kubectl delete job'
abbr --add kdsj 'kubectl describe jobs'
abbr --add kej 'kubectl edit jobs'
abbr --add kgj 'kubectl get jobs'
abbr --add kgjy 'kubectl get jobs -o yaml'
abbr --add kgaj 'get_cluster_resources jobs'

# Namespaces
abbr --add kdns 'kubectl delete namespaces'
abbr --add kdsns 'kubectl describe namespaces'
abbr --add kens 'kubectl edit namespaces'
abbr --add kgns 'kubectl get namespaces'
abbr --add kgnsy 'kubectl get namespaces -o yaml'
abbr --add kns 'kubens'

# Nodes
abbr --add kdsn 'kubectl describe nodes'
abbr --add ken 'kubectl edit nodes'
abbr --add kgn 'kubectl get nodes -o wide'
abbr --add kgny 'kubectl get nodes -o yaml'
abbr --add ktn 'kubectl top nodes'

# Pods
abbr --add kdp 'kubectl delete pod'
abbr --add kdsp 'kubectl describe pods'
abbr --add kep 'kubectl edit pods'
abbr --add kgap 'get_cluster_resources pods'
abbr --add kgp 'kubectl get pods'
abbr --add kgpy 'kubectl get pods -o yaml'
abbr --add ktp 'kubectl top pods'

# Services
abbr --add kdss 'kubectl describe services'
abbr --add kes 'kubectl edit services'
abbr --add kgas 'get_cluster_resources services'
abbr --add kgs 'kubectl get services'
abbr --add kgsy 'kubectl get services -o yaml'
