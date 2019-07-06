#!/bin/bash
#

# ps -ef | grep nginx | grep -v grep | wc -l   -v 忽略某值 wc -l 查看结果集行数
# 判断nginx 进程数量 为0时运行命令启动
nginx_process_num=$(ps -ef | grep nginx | grep -v grep | wc -l)
if [ $nginx_process_num -eq 0 ];then
  sudo service nginx start
fi

