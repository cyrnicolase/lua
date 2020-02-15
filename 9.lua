#!/usr/local/bin/lua

mytable = {}
print("mytable 的类型是", type(mytable))

mytable[1] = "lua"
mytable['www'] = "修改前"
print("mytable索引1的元素是", mytable[1])
print("mytable索引www的元素是", mytable['www'])

anotherTable = mytable
print('anotherTable的类型是', type(anotherTable))
print("anotherTable索引为1的元素是", anotherTable[1])
print("anotherTable索引为www的元素是", anotherTable['www'])

anotherTable['www'] = '修改后'
print("anotherTable索引为www的元素是", anotherTable['www'])

anotherTable[1] = nil
print("anotherTable索引为1的元素是", anotherTable[1])

anotherTable = nil
print('anotherTable是', anotherTable)
print('anotherTable的类型是', type(anotherTable))


print('mytable索引为www的元素是', mytable['www'])
print('mytable索引为1的元素是', mytable[1])


