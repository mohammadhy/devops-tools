#! /bin/bash
#echo "welcome" > /home/user/test
echo $(ls manifest/)
for m in $(ls manifest/)
do
echo $m >> /home/user/example
  if [[ $m == *.yaml ]]
  then 	  
      echo $m >> /home/user/test
   #   echo "123" | sudo -s kubectl apply -f $manifests
  fi
done
