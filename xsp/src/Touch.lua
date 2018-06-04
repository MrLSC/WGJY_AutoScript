local sys = require("utils/sys_utils")

t = {}

function t.touch(x,y)
	touchDown(1, x, y)
	mSleep(200)
	touchUp(1,x,y)
	mSleep(200)
end

-- 模拟滑动操作，从点(x1, y1)划到到(x2, y2)
function swip(x1,y1,x2,y2)
	local step, x, y, index = 20, x1 , y1, math.random(1,5)
	touchDown(index, x, y)
	
	local function move(from, to) 
		if from > to then
			do 
				return -1 * step 
			end
		else 
			return step 
		end 
	end
	
	while (math.abs(x-x2) >= step) or (math.abs(y-y2) >= step) do
		if math.abs(x-x2) >= step then x = x + move(x1,x2) end
		if math.abs(y-y2) >= step then y = y + move(y1,y2) end
		touchMove(index, x, y)
		mSleep(20)
	end
	
	touchMove(index, x2, y2)
	mSleep(30)
	touchUp(index, x2, y2)
end

--移动方法(距离,方向)
function t.move(dist,orientation)
	local width,height = getScreenSize()
	local touchX = width/2
	local touchY = height/2
	local endX = 0
	local endY = 0
	mSleep(50)
	if orientation == "上" then 
		endX = touchX - dist
		endY = touchY
	elseif orientation == "下" then
		endX = touchX + dist
		endY = touchY
	elseif orientation == "左" then
		endX = touchX
		endY = touchY + dist
	elseif orientation == "右" then
		endX = touchX
		endY = touchY - dist
	end
	swip(touchX,touchY,endX,endY)
end

return t