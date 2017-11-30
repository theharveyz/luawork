local pcall = pcall
local assert = assert
local error = error

local ok, err = pcall(function() assert(false) end, 33) -- 主动抛出error
if not ok then
    error(err) -- lua: ./src/syntax/error_handler.lua:7: ./src/syntax/error_handler.lua:5: assertion failed!
end