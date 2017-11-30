function square(iteratorMaxCount,currentNumber)
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
   return currentNumber, currentNumber*currentNumber
   end
end


-- 迭代最大值, 起始值
for i,n in square,3,0
do
   print(i,n)
end

-- 也可以写成 --- 类似pairs的实现
local function iter(num)
    return square, num, 0
end
for i,n in iter(3)
do
   print(i,n)
end