#!/usr/bin/lua


function foo()
    return 1, 2, 3
end

-- 将一个函数作为参数传递给另外一个函数
-- 将回调函数的返回值用在调用函数中
function bar(foo)
    t = {foo()}
    for i, v in ipairs(t) do
        print (i, v)
    end
end

bar(foo)
