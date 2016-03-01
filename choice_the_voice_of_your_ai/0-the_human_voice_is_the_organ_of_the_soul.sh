#!/bin/bash
message=$1
voice=$2
filename=$(echo $message | awk '{print $1}')
case $voice in
m)
say -v  Ralph -o $filename.m4a $message
;;
f)
say -v  Karen -o $filename.m4a $message
;;
x)
say -v  Zarvox -o $filename.m4a $message
;;

esac
scp $filename.m4a admin@158.69.85.206:/var/www/html/ > /dev/null 
echo "you can listen to the message here $address/$filename.m4a"