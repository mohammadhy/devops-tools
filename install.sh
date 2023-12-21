#! /bin/bash
#echo "welcome" > /home/user/test
echo $(ls manifest/)
cd manifest
echo `pwd`
for m in $(ls manifest/)
do
  if [[ $m == *.yaml ]]
  then 	  
      echo /home/user/manifest/$m > /home/user/test
      kubectl apply -f /home/user/manifest/$m
      #echo "done:" $m 
  fi
done
