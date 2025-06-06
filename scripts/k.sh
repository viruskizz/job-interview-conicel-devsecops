NS="dso-assignment"
k get all -n $NS
k get events -n $NS
k get configmap,pv,pvc -n $NS
k logs -l app=postgres -n $NS --all-containers=true