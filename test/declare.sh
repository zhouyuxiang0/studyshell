#!/bin/bash
#

# declare声明类型 等价于 typeset
# -r  设为只读
# -i  设为整数
# -a  数组
# -f  显示此脚本前定义过的所有函数及内容
# -F  显示此脚本前定义过的所有函数名
# -x  将变量设为环境变量
var1="hello world"
var1="hello python"
echo $var1
declare -r var1
var1="hello"
echo $var1


num1=10
num2=$num1+20
echo $num2  # 10+20
expr $num1 + 10 # 30
declare -i num3 # 声明num3为整型
num3=$num1+90
echo $num3  # 10+90=100


declare -a array
array=("apple"  "banana" "peach")
echo ${array[@]}  # 输出全部内容
echo ${array[1]}  # 输出下标索引为1的内容
echo ${#array[@]}  # 数组内元素个数
echo ${#array[2]}  # 数组内下表索引为2的元素长度
# array[0]="xxx" 给下标索引为1的元素赋值为xxx
# array[20]="xxx"  在数组尾部添加一个新元素
# unset array[index]  删除数组
# declare -x  声明环境变量  +x  取消环境变量

