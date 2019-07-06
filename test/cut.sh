#!/bin/bash
#

index=1
# cut  -d指定分割符 -f 指定分割后取第几个field
# 使用man cut 查看命令帮助
for user in `cat /etc/passwd | cut -d ":" -f 1`
do
  echo "This is $index user: $user"
  index=$(($index+1))
done
  
echo "This is `date +%Y` year"  # echo "This is $(date +%Y) year"
echo "This is $(($(date +%Y)+1)) year" # $() 是命令替换  $(()) 是算数运算