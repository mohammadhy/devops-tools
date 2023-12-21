#!/bin/bash
for manifest in $(ls)
do
  if [[ $manifest == *.yaml ]]
  then 	  
      echo $manifest
      kubectl apply -f $manifest
  fi

done
