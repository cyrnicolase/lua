#!/usr/local/bin/lua

-- number处理数字
print(type(2))

-- 字符串的拼接使用..
-- 字符串可以使用双引号、单引号来进行括弧；或者是 [[  ]]
-- 这样的来进行段落包括
print("a" .. "b")
print(123 .. 456)

-- 字符串长度使用的是字节长度；
-- 中文的情况，是将中文转换为UTF-8的长度
-- 比如你好，就是6个字节
str = "www.baidu.com"
str = "你好"
print(#str)


-- Table(表)
-- 在lua里，table的创建是通过"构造表达式"来完成，最简单构造表达式是用{}，用来创建一个空表

-- 空表
local tbl1 = {}

-- 直接创建表
local tbl2 = {"apple", "pear", "origin", "grape"}

for k, v in pairs(tbl2) do
    print(k .. '--' .. v)
end

-- 关联数组
a = {}
a['key'] = 'value'
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. ':' .. v)
end


-- 范围
a3 = {}
for i = 1, 10 do
    a3[i] = i
end

print(a3[2])
print(a3[3])
print(a3[4])


-- 函数
-- function
function factorial1(n)
    if n == 0 then
        return 1
    end
    return n * factorial1(n - 1)
end

print(factorial1(5))



