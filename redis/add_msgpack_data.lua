

-- 添加一个msgpack 格式的数据
--
--


local xx = {k1 = "v1", k2 = "v2", cn = "中文"}
local msg = cmsgpack.pack(xx)

redis.call("set", "iooooooooo", msg)


local yy = redis.call("get", "iooooooooo")
local zz = cmsgpack.unpack(yy)

return zz
