local _M = {}

_M.__index = {
    new = function ()
        return _M
    end
}

return _M