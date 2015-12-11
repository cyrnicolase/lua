#!/usr/bin/lua

function foo()
    return "a", 1
end

print (foo())
print (foo() .. "xx")

