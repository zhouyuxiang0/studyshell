v1 = "I love you,Do you love me"
var1=${v1#*ov} # 从头匹配第一个ov并删除
echo $var1
var2=${v1##*ov} # 从头匹配最后一个ov并删除
echo $var2
var3=${v1%ov*} # 从尾部匹配第一个ov并删除
echo $var3
var4=${v1%%ov*} # 从尾部匹配最后一个ov并删除
echo $var4