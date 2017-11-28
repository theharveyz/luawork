local _M = {
    _VERSION = '0.0.1'
}

function _M:test ( ... )
    -- 获取展开式可变参数
    local _args = ... --  第一个参数？
    local args = {...} -- 转成table
    for i=1, #args do
        print("\n" .. args[i])
    end
    -- return  只有代码块的最后才能return
    print(_args)
    return args
end


function _M:demo()
    do
        print('version:' .. self._VERSION)
    end
end

-- :冒号操作符不允许声明匿名函数
-- _M:t = function()
-- end

return _M