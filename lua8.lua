#!/usr/bin/lua

-- 前向声明
local fact  -- 这里完成声明，后面即使没有函数体，也可以正常调用

-- 函数实现
fact = function(n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1) -- fact 如果不先进行声明，那么局部函数调用会出错，因为到这一步的时候，局部函数还没有构造完成，所以需要先声明来保证可以完成局部函数的 fact(n-1)的调用;所以，以后最好都是对局部函数进行先声明，再调用的操作
    end
end

print (fact(5))
