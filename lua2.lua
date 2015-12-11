#!/usr/bin/lua


function maximum(a)
    local mi = 1
    local m = a[mi]

    for i, vi in ipairs(a) do 
        if vi > m then
            mi = i
            m = vi
        end
    end

    return m, mi
end


a = {1,2,3,4,10,6,7,8,9}

x, y = maximum(a)
print (x, y)
