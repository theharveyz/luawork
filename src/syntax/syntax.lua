-- 基础语法部分

-- 单行注释
--[[
多行注释
多行注释
多行注释
--]]

-- 变量
a = '1'
b = 1
c = 1.1
d = 0xff

-- 字符串拼接: .. 两个点连接
print(100 .. 200)

-- 解构赋值
a, b = 1, 2

-- 数组
arr = {1, 2, '3'}
print(#arr) -- 数组长度

-- table
t = {['a'] = 1, [3.14]=3.14}
-- or
t = {a=1, [3.14]='pi'} -- 3.14要加中括号
-- 也可以用点操作符替代
print(t.a)

-- function
function demo(n)
    return n, n
end
param1, param2 = demo(1)
print(param1, param2)

-- 条件控制
-- while
sum=0
num=1
while num <= 100 do
    sum = sum + num
    num = num + 1
end
print("sum=", sum)
-- for
sum = 0
for i = 0, 100 do
    sum = sum + i
end
print("for sum=", sum)

sum = 0
for i = 0, 100, 2 do -- 这里可以输入步长
    sum = sum + i
end
print("for(step=2) sum=", sum)

sum = 0
for i = 100, 0, -2 do
    sum = sum + i
end
print("for(step=-2) sum=", sum)

-- until
sum = 2

repeat
    sum = sum ^ 2
until sum > 1000
print("until sum=", sum)

-- if else
--[[
    条件判断关键字: if then elseif else end
    注意没有 && ! || 等关键字; 替代的是: and not or
]]
local age = tonumber(io.read())
print('Your age is ', age)
--[[
    tonumber
    tostring
]]

if age < 18 then
    print('你是未成年')
elseif age >= 18 and age < 25 then
    print("你是青年")
elseif age > 25 and age < 50 then
    print('你是中年')
else
    print('你是老年人了')
end
-- 不等于 ~=
print("eg:", age ~= 18)


-- 闭包
function counter(step) -- 注意:函数没有默认值
    i = 0
    return function()
        i = i + step
        return i
    end
end
c = counter(2)
print(c()) -- 2
print(c()) -- 4

-- 局部函数
foo = function(n) return n*n end -- 类lambda表达式
function foo(n) return n*n end
local function bar() return 'bar' end -- 局部定义

-- 数组函数定义
arr = {bar}
print(arr[1]()) -- 数组的下表从1开始
-- 数组长度
print('the length of arr is ' .. #arr)
-- 数组遍历
for i = 1, #arr do
    print(arr[i])
end

-- 内建全局变量table (全局变量: 不带local关键词)
print(_G) -- 0x7fa8464028a0
print(pairs(_G))
-- table遍历
for k, v in pairs(_G) do
    print(k, v)
end