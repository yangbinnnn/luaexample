--[[
由于全局变量一般会污染全局名字空间，同时也有性能损耗（即查询全局环境表的开销），因此我们应当尽量使用“局部函数”，其记法是类似的，只是开头加上 local 修饰符
--]]
local function foo()
    print("in the function")
end

print(foo())
local a = foo --> 赋值给变量
print(a())

local add = function()
    local a = 1
    local b = 1
    return a + b
end
print(add())
    

local function max(a, b)
    if (a > b) then
        return a
    else
        return b
    end
end
local m = max(12, 20)
print(m)

--> 按值传递，参数调整
local function fun1(a, b)
    print(a, b)
end
print(fun1(1, 2, 3, 4)) --> 1, 2

local function fun2(a, b, c, d)
    print(a, b, c, d)
end
print(fun2(1, 2)) --> 1, 2, nil, nil


--> 按引用传递, table
local function change(arg)
    arg.w = arg.w * 2
    arg.h = arg.h * 2
    return arg
end
local rectangle = {w = 2, h = 2}
print("befor change:", "w=", rectangle.w, "h=", rectangle.h)
rectangle = change(rectangle)
print("after change:", "w=", rectangle.w, "h=", rectangle.h)

--> 多个返回值
local s, e = string.find("hello lua", "lua")
print(s, e)

local function init()
    return "hello", "lua"
end
local x = init()
print(x)
local x, y = init()
print(x, y)
local x, y, z = init()
print(x, y, z) --> hello lua nil

local x, y, z = init(), 2 --> hello, 2, nil
print(x, y, z)
local a, b, c = 2, init()
print(a, b, c) --> 2 hello lua

print(2, init()) --> 2 hello lua
print(init(), 2) --> hello 2
