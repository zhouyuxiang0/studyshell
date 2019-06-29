v1 = "I love you,Do you love me"
var1=${v1#*ov} # 从头匹配第一个ov并删除
echo $var1
var2=${v1##*ov} # 从头匹配最后一个ov并删除
echo $var2
var3=${v1%ov*} # 从尾部匹配第一个ov并删除
echo $var3
var4=${v1%%ov*} # 从尾部匹配最后一个ov并删除
echo $var4

str1="zifuchuan"
s1=${str1:2}
echo $s1 # fuchuan
s2=${str1:2:2}
echo $s2 # fu
s3=${str1: -5}
echo $s3 # chuan
len=${#str1} # expr length $str1  len=`expr length "$str1"` 字符串有空格需要加双引号
echo $len # 9

# 获取字符索引位置
str="quickstart is a app"
index=`expr index "$str" start` # 运行时 会将start 分成单独的字母 s t a r t 并在字符串中逐个查找 并返回最早匹配到的
echo $index # 6

index=`expr index "$str" cnk`
echo $index # 4   quic 先查找到了c

# 获取字串长度
str="quickstart is a app"
index=`expr match "$str" quic` # expr match 只能从头开始匹配
echo $index # 4 