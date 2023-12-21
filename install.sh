#! /bin/bash
echo "welcome" > /home/user/test
echo $(ls)
for manifest in $(ls)
do
  if [[ $manifest == *.yaml ]]
  then 	  
      echo $manifest
      echo "123" | sudo -s kubectl apply -f $manifest
  fi

done
