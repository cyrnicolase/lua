#!/usr/bin/lua

function values(t)
    local i = 0
    return function() i = i+1; return t[i] end
end


function main()
    t = {10, 20, 30}
    iter = values(t)
    
    while true do
        local element = iter()
        if element == nil then 
            break
        end
        print (element)
    end
end

function main1()
    t = {1, 2, 3}
    for element in values(t) do
        print (element)
    end
end

-- main()
main1()
