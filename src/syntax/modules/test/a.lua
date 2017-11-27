local _M = {}

function _M:test ( ... )
    -- 获取展开式可变参数
    local args = {...}
    for i=1, #args do
        print("\n" .. args[i])
    end

    return args
end

-- :冒号操作符不允许声明匿名函数
-- _M:t = function()
-- end

return _M