-- MetaTable/MetaMethod

local tab_a = {['分子']=10, ['分母']=100}
local tab_b = {['分子'] = 2, ['分母'] = 21}

-- 定义一个metatable
local m_t = {
    __add = function (a, b) -- MetaMethod
        -- 返回新表
        return { 
            ['分子'] = a['分子'] + b['分子'], -- 中文字符也要加引号
            ['分母'] = a['分母'] + b['分母']
        }
    end,
    __index = {
        a = 1
    },  -- 类似于php加不加,都可以
    }
setmetatable(tab_a, m_t)
setmetatable(tab_b, m_t)
a = tab_a + tab_b
print(a, tab_a.a)
