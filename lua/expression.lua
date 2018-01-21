print(1 + 2)
print(5 / 10) --> 0.5
print(5.0 /10) --> 0.5
print(2 ^ 10)

local num = 1357
print(num % 2) --> 1
print((num % 2) == 1)
print((num % 5) == 0)

print(1 < 2)
print(1 == 2) --> 引用比较
print(1 ~= 2) --> 不等于
local a, b = true, false
print(a == b)

-->　除 nil, false 外都为true
local c = nil
local d = 0
local e = 100
print((c and d) == c) --> c, 如果c为nil，则返回c
print(c and e) --> c
print(d and e) --> e, d 不为nil，返回e
print(c or d) --> d, 如果c为nil，则返回d
print(c or e) --> e
print(not c) --> true
print(not e) --> false

--> 字符串拼接，返回新字符串
print("hello " .. "lua")
print(0 .. 1) --> 01
str1 = string.format("%s-%s", "hello", "lua")
print(str1)
str2 = string.format("%d-%s-%.2f", 123, "lua", 1.21)
print(str2)

local pieces = {}
local my_list = {
    "hello",
    "\t",
    "lua" 
}
for i, elem in ipairs(my_list) do
   pieces[i] = elem
end
local res = table.concat(pieces)
print(res)
