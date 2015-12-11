#!/usr/bin/lua

-- 对于函数具有变长参数的情况，就可以使用 unpack 这个方法，
-- 将参数以数组的形式传入，这样就可以递归的使用参数值
function foo(x,y,z)
    print (x,y,z)
end

-- foo(unpack({1,2,3,4}))



-- 变长参数的情况

function fin(...)  -- 这里的3 ... 表示可以接收不同数量的参数

    local sum = 0;
    for i, v in ipairs{...} do  -- 这里要注意，ipairs 后面是用的花括号 {}; 这里用{} 是将所有的变成参数作为数组的形式使用;ipairs 就用在数组上面
        sum = sum + v
    end
    return sum
end

print (fin(unpack({1,2,3,45,5,6,8})))


