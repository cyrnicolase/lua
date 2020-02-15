
-- 获取有序集合的所欲元素; 有序集合的key 就是传入的第一个参数 KEYS[1]
-- 有序就结合中的每个元素都是新的Key，对内部Key的值做自增操作
local mylist = redis.call('lrange', KEYS[1], 0, -1)

-- -- 局部变量count = 0,这个count就是最后用来Incr 的总次数
local count = 0
 
-- 这里就是遍历所有的Key并做自增操作，最后返回总共自增操作的Key数量
for index, key in ipairs(mylist)
    do
        redis.call('incr', key)
        count = count + 1
    end

return count
