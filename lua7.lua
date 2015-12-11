#!/usr/bin/lua

arr = {
    {name = 'beijing', ip = '192.168.11.101'},
    {name = 'tianjin', ip = '192.168.11.102'},
    {name = 'shanghai', ip = '192.168.11.103'},
    {name = 'guangzhou', ip = '192.168.11.104'},
    {name = 'shenzhen', ip = '192.168.11.105'},
    {name = 'chongqing', ip = '192.168.11.106'},
}

arr = {
    {1,2,3,4,5,6},
    {1,2,3,4,5,6},
    {1,2,3,4,5,6},
    {1,2,3,4,5,6},
    {1,2,3,4,5,6}
}

function sort_table(arr)
    -- table.sort(arr, function(a, b) return a.name > b.name end)
    local k = 0;
    for i, row in ipairs(arr) do
        for j, v in ipairs(arr[i]) do
            print (j, v)
        end
    end
end

sort_table(arr)
