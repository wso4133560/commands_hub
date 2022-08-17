# 使用sed替换字符串
sed -i "s/查找字段/替换字段/g" `grep 查找字段 -rl 路径` 文件名

# 例子
sed -i "s/\-buildmode=pie/ /g" `ag "\-buildmode=pie" -rl`

# sample.txt文件第1行前面添加"hello"
sed -i '1 i hello' sample.txt

# sample.txt文件第1行后面添加"hello"
sed -i '1 a hello' sample.txt
