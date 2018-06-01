local findHome = require("FindHome")
local touch  = require("Touch")
local sh = require("ShowHUD")

local lm = {}

--打开联盟任务页面
function lm.findLMTaskPage()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x197f7f,14|1|0x209194,-11|14|0xb2dbf8,-13|-7|0xb89663,38|24|0xbf2222",
		85, 1, 0, 0)
	if x > -1 then
		touch.touch(x,y)
		mSleep(1000)
		touch.touch(565,919)--vip任务tab
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

--执行vip任务
function lm.vipTask()
	sh.show("开始VIP任务")
	--回到城内
	findHome.openCastle()
	--开始任务
	if lm.findLMTaskPage() > -1 then
		lm.findVipBox() -- vip宝箱是动态的 为确保点击 点两次
		mSleep(200)
		lm.findVipBox()
	end
	findHome.openCastle()
end

return lm;