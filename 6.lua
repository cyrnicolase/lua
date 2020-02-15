#!/usr/local/bin/lua

function average(...)
    local result = 0
    local args = {...}
    for k, v in pairs(args) do
        result = result + v
    end
    print('总共传入参数个数' .. select('#', ...) .. '个数')
    return result / #args
end

print(average(1,2,3,4,5,6,7))
