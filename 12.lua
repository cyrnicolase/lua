#!/usr/local/bin/lua

fp = io.open("11.lua", "r")
print(fp:read())
fp:close()

file = io.open("11.lua", "a")
file:write("-- test")
file:close()

-- lines
print('-----------------')

for line in io.lines("10.lua")
    do
        print(line)
    end
