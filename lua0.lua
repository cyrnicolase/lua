#!/usr/bin/lua

function add(a)
    local sum = 0;
    for i, v in ipairs(a) do
        sum = sum + v
    end
    return sum 
end

a = {1,2,3,4,5,6,7,8,9}
print (add(a))
