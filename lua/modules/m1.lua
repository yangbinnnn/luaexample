local md = {}

local function getname()
    return "YB"
end

function md.greeting()
    print("hello " .. getname())
end

return md
