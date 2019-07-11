#!/bin/bash
#


# expr 操作符
# num1 | num2 num1不为空且非0 返回num1; 否则返回num2
# num1 & num2 num1不为空且非0 返回num1 否则返回0
# num1 < num2 num1小于num2 返回1 否则返回0
# num1 <= num2 num1小于等于num2 返回1 否则返回0
# num1 = num2 !=  >  >=
# expr param1 op param2
# num1=20
# num2=100
# expr 只能对整数进行运算
# expr $num1 \| $num2  # 在命令行中需要使用\反斜线转义
# 提示用户输入一个正整数 然后计算 1+2+3+ ... +num的值
while true
do
  read -p "Please input a positive number: " num
  expr $num + 1 &> /dev/null  # 运算后不输出 使用>到 /dev/null丢弃数据
  if [ $? -eq 0 ];then
    if [ `expr $num \> 0` -eq 1 ]; then
      for((i=1;i<=$num;i++))
      do
        sum=`expr $sum + $i`
      done
      echo "1+2+3+ ... +$num=$sum"
      exit
    else
      echo "不能负数"
      continue
    fi
  fi
  echo "input error"
  continue
done

