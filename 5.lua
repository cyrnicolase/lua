#!/usr/local/bin/lua

function max(num1, num2)
    if (num1 > num2) then
        return num1
    end

    return num2
end

print(max(3, 1))
print(max(3, 5))


--
--


myprint = function(param)
    print("这是打印函数 - ##", param, '##')
end

function add(num1, num2, functionPrint)
    result = num1 + num2
    functionPrint(result)
end

myprint(10)
add(2, 5, myprint)




