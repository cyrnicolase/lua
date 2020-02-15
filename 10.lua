#!/usr/local/bin/lua

mytable = {"hello", 'world', '你好', '世界'}

-- concat 是连接数组部分，如果是关联数组貌似不行
print(table.concat(mytable))
print(table.concat(mytable, ','))
print(table.concat(mytable, ',', 3, 4))

