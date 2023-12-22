#! /bin/bash
cd /tmp/manifest
for m in $(ls)
do
  echo $m
  if [[ $m == *.yaml ]]
  then
      maindir=$(echo `pwd`)
      echo $maindir
      path=echo "$maindir/$m"
      echo $path
      kubectl apply -f $path
  fi
done
