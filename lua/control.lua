x = 10
if x > 0 then
    print("hello lua")
else
    print("......")
end

score = 90
if score == 100 then
    print("A")
elseif score >= 60 then
    print("B")
else
    print("C")
end

x = 1
sum = 0

while x <= 5 do
    sum = sum + x
    x = x + 1
end
print(sum)

local t = {1, 3, 5, 8, 11, 18, 21}
local i
for i, v in ipairs(t) do
    if v == 11 then
        print("index[" .. i .. "] have right value[11]")
        break
    end
end

--> repeat, until true
sum = 0
repeat
    sum = sum + 5
    print(sum)
until sum == 15

--> for 数字型 begin, finish, step 
for i = 1, 5 do
    print(i)
end

for i = 1, 10, 2 do
    print(i)
end

--> for 泛型
local t = {"a", "b", "c", "d"}
for i, v in ipairs(t) do
    print("index:", i, " value:", v)
end

for k in pairs(t) do
    print(k)
end
