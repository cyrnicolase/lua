
-- 测试msgpack
--

local cmsgpack = require('cmsgpack')

-- local foo = {key1 = "value1", key2 = "value2"}
-- local msg = cmsgpack.pack(foo)
-- print(msg)
-- print("------------------")
-- local f1 = cmsgpack.unpack(msg)
-- print(foo['key1'])
-- print(f1['key1'])
-- for key, value in pairs(f1)
--     do
--         print(key .. value)
--     end
-- 

local a = '\x83\xa2k1\xa2v1\xa2cn\xa6\xe4\xb8\xad\xe6\x96\x87\xa2k2\xa2v2'
local a = '\x84\xa2ID\xd2\x00\x00\x00\b\xa8Username\xa4a13a\xa8Password\xa6123456\xa9CreatedAt\xd7\xff\x1f\xd2\xd5\x10^F9\xe6'
local a = "\x84\xa2ID\xd2\x00\x00\x00\a\xa8Username\xa3a13\xa8Password\xa6123456\xa9CreatedAt\xc7\x0c\xff\x00\x00\x00\x00\xff\xff\xff\xf1\x88n\t\x00" 
local a = '\x84\xa2ID\xd2\x00\x00\x00\x03\xa8Username\xa3123\xa8Password\xa6123456\xa9CreatedAt\xd7\xff\b\x02\x9c@^Ff\xaa'




local a = '\x83\xa2k1\xa2v1\xa2cn\xa6\xe4\xb8\xad\xe6\x96\x87\xa2k2\xa2v2'
local a = '\x82\xa1a\xa1b\xa3foo\xa3bar'
local a = '\x82\xa4Name\xa6\xe5\x90\x8d\xe5\xad\x97\xa3Age\xd3\x00\x00\x00\x00\x00\x00\x00\r'
local a = '\x82\xa4Name\xa6\xe5\x90\x8d\xe5\xad\x97\xa3Age\xd3\x00\x00\x00\x00\x00\x00\x00\x0e'
local a = '\x83\xa4Name\xa6\xe5\x90\x8d\xe5\xad\x97\xa3Age\xd3\x00\x00\x00\x00\x00\x00\x00\x0e\xa9CreatedAt\xd7\xff\x9bt\x1b ^Fk\x01'
local a = '\x83\xa4Name\xa6\xe5\x90\x8d\xe5\xad\x97\xa3Age\xd3\x00\x00\x00\x00\x00\x00\x00\x0e\xa5Class\x82\xa4Room\xd3\x00\x00\x00\x00\x00\x00\x00\x03\xa9ClassMate\xd3\x00\x00\x00\x00\x00\x00\x00\x04'
local b = cmsgpack.unpack(a)
for key, value in pairs(b)
    do
        if "table" == type(value) then
            for k, v in pairs(value)
                do
                    print(key .. ':' .. k .. v)
                end
        else
            print(key .. value)
        end
    end




