print(string.byte("abc", 1, 3))
print(string.byte("abc", 3))
print(string.byte("abc"))
print(string.char(string.byte("abc", 1, 3))) --> abc
print(string.char())
print(string.byte(string.char()))
print(string.upper("hello lua!"))
print(string.lower("HELLO LUA!"))
print(string.len("hello lua!"))
print(#"hello lua!") --> 优先使用# 获取字符串长度

print("--> test string.find") --> 返回索引
local find = string.find
print(find("abc cba", "ab"))
print(find("abc cba", "ab", 2))
print(find("abc cba", "ab", -2))
print(find("abc cba", "(%a+)", 1))
print(find("abc cba", "(%a+)", 1, true))

print("--> test string.format")
print(string.format("%.4f", 3.1415926))
print(string.format("hello %s", "lua!"))
print(string.format("%d %x %o", 31, 31, 31))

print("--> test string.match") --> 返回字符串
local match = string.match
print(match("hello lua", "lua"))
print(match("hello lua", "world")) --> nil
print(match("hello lua", "hello", 2)) --> nill
print(match("today is 30/9/2017", "%d+/%d+/%d+"))

print("--> test string.match") --> 返回字符串
s = "hello world from lua"
for w in string.gmatch(s, "%a+") do
    print(w)
end

print(string.rep("abc", 3)) --> abcabcabc

print(string.sub("hello lua", 1, 2)) --> he
print(string.sub("hello lua", 7, -1)) --> lua
print(string.sub("hello lua", 7, -4)) --> 空

print(string.gsub("Lua Lua Lua", "Lua", "World"))
print(string.gsub("Lua Lua Lua", "Lua", "World", 1))

print(string.reverse("Hello Lua!"))
