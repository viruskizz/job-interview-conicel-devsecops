NS="dso-assignment"
DEPLOYMENT="pgadmin"

k get all -n $NS
k get events -n $NS
k get configmap,pv,pvc -n $NS
k logs -l app=postgres -n $NS --all-containers=true
k get pod -n $NS | grep pgadmin | awk '{print $1}'
kubectl rollout restart deployment $DEPLOYMENT -n $NS
