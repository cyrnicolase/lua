
redis.call("set", "hello", "world")
return redis.call("get", "hello")
-- print(redis.call("get", "hello"))
