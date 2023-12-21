#! /bin/bash
#echo "welcome" > /home/user/test
echo $(ls manifest/)
cd manifest
echo `pwd`
for m in $(ls manifest/)
do
echo $m >> /home/user/example
  if [[ $m == *.yaml ]]
  then 	  
      echo $m >> /home/user/test
      echo `kubectl apply -f /home/user/manifest/$m`
      #echo "done:" $m 
  fi
done
