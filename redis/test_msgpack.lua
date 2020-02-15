




local data = redis.call("get", "user:1")
local xx = cmsgpack.unpack(data)
return xx
