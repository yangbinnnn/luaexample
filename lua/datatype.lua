print(type("hello lua!"))
print(type(print))
print(type(true))
print(type(360.0))
print(type(nil))

local num
print(num) --> nil
num = 100
print(num) --> 100

--> -->

local a = true
local b = 0
local c = nil

if a then
    print("a")        -->output:a
else
    print("not a")    --这个没有执行
end

if b then
    print("b")     --> b
else
    print("not b")
end

if c then
    print("c")     --> not c
else
    print("not c")
end

local order = 3.99
local score = 98.01
print(math.floor(order))
print(math.ceil(score))

local str1 = 'hello lua!'
local str2 = "hello lua!"
local str3 = [["add\name", 'hello']] --> 字符串原样输出
local str4 = [=[string have a [[]].]=] --> 加 = 等级

print(str1)
print(str2)
print(str3)
print(str4)

--> Table 从１开始，唯一的数据结构
local corp = {
    web = "www.google.com",
    tel = "1234567",
    staff = {"Jack", "Scott"},
    10086, --> [1]
    10087, --> [2]
    [10] = 360, -- [10]
    ["city"] = "bj"
}

-->　hash/list
print(corp.web)
print(corp["tel"])
print(corp[1])
print(corp[2])
print(corp[10])
print(corp["city"])
print(corp.staff[1])

--[[
--]]
