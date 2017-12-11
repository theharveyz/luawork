local map, pairs = {}, pairs
local key = "name"

setmetatable(map, {
    __index = {
        [key] = "map"
    }
})

print(map.name) -- map: 点操作符
print(map['name']) -- map

-- 判断大小
local arr = {nil, 0, false, nil}
print(#arr) -- 得到的结果是 3,而不是4

local len = function ( arr )
    local count = 0
    for v in pairs(arr) do
        count = count + 1
    end
    return count
end

print(len(arr)) -- 2
-- 判断是否为空
local isEmptyArray = function (t)
    return t == nil or next(t) == nil
end
print(isEmptyArray(arr))
print(next(arr))