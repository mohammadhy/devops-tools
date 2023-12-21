#! /bin/bash
echo "welcome" > /home/user/test
echo $(ls manifest/)
for m in $(ls manifest/)
do
  #if [[ $manifests == *.yaml ]]
  #then 	  
      echo $m >> /home/user/test
   #   echo "123" | sudo -s kubectl apply -f $manifests
  #fi
done
