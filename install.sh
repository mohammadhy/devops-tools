#! /bin/bash
#echo "welcome" > /home/user/test
#echo $(ls manifest/)
cd manifest
echo `pwd`
for m in $(ls)
do
  echo $m
  if [[ $m == *.yaml ]]
  then
      echo "/home/user/manifest/"$m >> /home/user/test
      path=$(echo "/home/user/manifest/"$m)
      kubectl apply -f $path
  fi
done
