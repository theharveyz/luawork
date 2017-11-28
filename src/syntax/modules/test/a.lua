local _M = {}

function _M:test ( ... )
    -- 获取展开式可变参数
    local _args = ... --  第一个参数？
    local args = {...} -- 转成table
    for i=1, #args do
        print("\n" .. args[i])
    end
    print(_args)
    return args
end

-- :冒号操作符不允许声明匿名函数
-- _M:t = function()
-- end

return _M