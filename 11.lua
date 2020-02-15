#!/usr/local/bin/lua

metatable = {}
mytable = setmetatable({key1 = "value1"}, {__newindex = metatable})
print(mytable.key1)

mytable.newkey = '新值2'
print(mytable.newkey, metatable.newkey)

mytable.key1 = '新值1'
print(mytable.key1, metatable.key1)

mytable = setmetatable({key1 = "value"}, {
    __newindex = function(t, key, value)
        rawset(t, key, "\"" .. value .. "\"")
    end
})

mytable.key1 = "new value"
mytable.key2 = 4
print(mytable.key1, mytable.key2)
-- test-- test-- test