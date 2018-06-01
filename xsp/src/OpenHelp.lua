local findHome = require("FindHome")
local touch  = require("Touch")
local sh = require("ShowHUD")
oh = {}

--打开帮助页
function openHelpPage()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xdfa58c,-16|-12|0x446d8e,-7|-12|0x6d4b3a,5|3|0xb9815b,-16|15|0x446d8e,24|14|0x3e68a1,23|-6|0x3e689c,5|4|0x92613d",
		90, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
		mSleep(1000)
	end	
	return x
end

--全面帮助
function clickHelp()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x6c6c6b,2|-29|0x211608,3|-40|0x815620,4|-73|0xaf752b,9|-90|0xaf752b,9|-112|0xc48a59,7|-136|0xf9bf8e,2|-159|0xaf752b,-7|-121|0xab7160,-9|-78|0xaf752d,0|-18|0xaf752b,10|56|0xbababa,-4|98|0xaf752b,-9|140|0xaf752d,3|156|0xaf752b,-6|101|0xaf752c,-3|69|0xaf752b,4|19|0x271b0a,5|-24|0x5f5d5d,5|-61|0xaf752b",
		95, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
	end
end

--执行帮助
function oh.help()
	sh.show("开始帮助任务")
	--回到城内
	findHome.openCastle()
	--查找是否有需要帮助
	if openHelpPage() > -1 then
		--点击帮助
		clickHelp()
	else
		return
	end
	findHome.openCastle()
end

return oh;