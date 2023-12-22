#! /bin/bash
cd /tmp/manifest
echo "Install Keyverno For Policy"
kubectl create -f https://github.com/kyverno/kyverno/releases/download/v1.10.0/install.yaml
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
