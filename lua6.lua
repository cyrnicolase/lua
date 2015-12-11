#!/usr/bin/lua

function foo(...)
    for i = 1, select('#', ...) do  -- select('#', ...) 返回变长参数的总数
        local s = select(i, ...)
        print (s)
    end
end

-- foo(unpack({1,2,3,nil,4,5,6,7}))



function foo1(a, b, ...)
    local argv = {a, b, ...}
    local argc = select('#', ...) + 2;

    for i=1, argc do  -- 数字类型的循环访问， for exp1, exp2, exp3 do {函数块} end
        print (argv[i])
    end

    for i, v in ipairs(argv) do  -- 泛型for 循环
        print (i, v)
    end
end

-- foo1(1,2,3,4,5,6)
foo1(unpack({1,2,3,4,5,6,7}))

