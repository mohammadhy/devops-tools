#! /bin/bash
echo "welcome" > /home/user/test
echo $(ls)
for manifests in $(ls manifest)
do
  if [[ $manifests == *.yaml ]]
  then 	  
      echo $manifests
      echo "123" | sudo -s kubectl apply -f $manifests
  fi

done
