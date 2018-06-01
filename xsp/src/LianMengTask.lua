local findHome = require("FindHome")
local touch  = require("Touch")
local sh = require("ShowHUD")

local lm = {}

--打开联盟任务页面
function lm.findLMTaskPage(t)
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x197f7f,14|1|0x209194,-11|14|0xb2dbf8,-13|-7|0xb89663,38|24|0xbf2222",
		85, 1, 0, 0)
	if x > -1 then
		touch.touch(x,y)
		mSleep(1000)
		if t == 4 then
			touch.touch(565,919)--vip任务tab
		elseif t == 3 then
			touch.touch(571,753)--联盟任务tab
		elseif t == 2 then
			touch.touch(566,535)--内政任务tab
		end
		mSleep(1000)
	end
	return x;
end


--vip任务宝箱
function lm.findVipBox()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xf2c639,10|11|0xff3e3c,15|32|0x21ffff,21|48|0xee2c2a,15|65|0xffd161,-12|50|0xd12322,-24|11|0xc42322,-21|28|0xbf8623,-8|31|0x178dcc",
		85, 1, 0, 0)
	if x > -1 then
		touch.touch(x,y)
	end
end

function zdwc()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xf9f195,1|8|0x926124,-1|23|0xfff799,1|36|0xa9722b,1|39|0xbdac64,0|50|0xeee48c,0|58|0xf0e68d,-1|54|0xb17731,2|71|0xfdf497,3|84|0xfcf497",
		70, 1, 0, 0)
	if x > -1 then
		touch.touch(x,y)
	end
	return x
end

--执行vip任务
function lm.vipTask()
	sh.show("开始VIP任务")
	--回到城内
	findHome.openCastle()
	--开始任务
	if lm.findLMTaskPage(4) > -1 then
		lm.findVipBox() -- vip宝箱是动态的 为确保点击 点两次
		mSleep(200)
		lm.findVipBox()
	end
	findHome.openCastle()
end

--执行联盟任务
function lm.lmTask()
	sh.show("开始联盟任务")
	--回到城内
	findHome.openCastle()
	--开始任务
	if lm.findLMTaskPage(3) > -1 then
		while (true)
		do
			mSleep(500)
			if zdwc() == -1 then
				break
			end
		end
	end
	sh.show("内政任务结束")
	findHome.openCastle()
end

--执行内政任务
function lm.nzTask()
	sh.show("开始内政任务")
	--回到城内
	findHome.openCastle()
	--开始任务
	if lm.findLMTaskPage(2) > -1 then
		while (true)
		do
			mSleep(500)
			if zdwc() == -1 then
				break
			end
		end
	end
	sh.show("内政任务结束")
	findHome.openCastle()
end

return lm;