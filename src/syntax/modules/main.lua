local a = require("test.a")
-- local test = require("test")
a.test(1,2,3,4)

a:test(1,2,3,4)

print(a.demo(a)) -- 点号
-- print(a.demo(self)) XXX: 注意不要写成这样
print(a:demo()) -- 冒号调用

-- 默认查找顺序：
-- no field package.preload['test']
-- no file './test.lua'
-- no file '/usr/share/lua/5.1/test.lua'
-- no file '/usr/share/lua/5.1/test/init.lua'
-- no file '/usr/lib64/lua/5.1/test.lua'
-- no file '/usr/lib64/lua/5.1/test/init.lua'
-- no file './test.so'
-- no file '/usr/lib64/lua/5.1/test.so'
-- no file '/usr/lib64/lua/5.1/loadall.so'
