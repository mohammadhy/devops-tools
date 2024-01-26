#! /bin/bash
cd /tmp/manifest
echo "Install Keyverno For Policy:"
kubectl create -f https://github.com/kyverno/kyverno/releases/download/v1.10.0/install.yaml
echo "Install Metallb:"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.12/config/manifests/metallb-native.yaml
echo "Install Nginx-Ingress"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.0/deploy/static/provider/cloud/deploy.yaml
for m in $(ls)
do
  #echo $m
  if [[ $m == *.yaml ]]
  then
      maindir=$(echo `pwd`)
      #echo $maindir
      path=$(echo $maindir/$m)
      #echo $path
      kubectl apply -f $path
  fi
done
echo "Apply Monitoring Cluster K8s ..."
git clone https://github.com/devopscube/kube-state-metrics-configs.git
kubectl apply -f kube-state-metrics-configs/
echo "Configuration Elasticsearch"
foo=`kubectl exec elastic-deployment-0 -- ./bin/elasticsearch-service-tokens create elastic/kibana mytoken | awk '{print $4}'`
echo $foo
sed -i "s/mytoken/$foo/g" deployment-kibana.yaml
kubectl delete -f deployment-kibana.yaml
kubectl apply -f deployment-kibana.yaml
