#! /bin/bash
cd manifest
for m in $(ls)
do
  echo $m
  if [[ $m == *.yaml ]]
  then
      maindir=$(echo `pwd`)
      path=echo $maindir/$m
      kubectl apply -f $path
  fi
done
