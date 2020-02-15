#!/usr/local/bin/lua

-- 模块的结构其实就是一个table
-- 所以可以像使用模块内部元素那样使用模块里面的常量或者函数

module = {}

module.constant = '常量'

function module.func1()
    io.write('这是一个公有函数' .. "\n")
end

local function func2()
    print('这是一个私有函数，使用了local')
end

function module.func3()
    func2()
end

return module
