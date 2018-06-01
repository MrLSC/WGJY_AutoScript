local findHome = require("FindHome")
local touch  = require("Touch")
local sh = require("ShowHUD")
oh = {}

--打开帮助页
function openHelpPage()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xc68c73,-11|-16|0x446d8e,11|-3|0xdcae7f,28|1|0x3d679a,27|22|0x3e6899,19|21|0x6c5849,-10|18|0x426c8d,-14|12|0x4a738c,-14|3|0x477089,0|0|0xc68c73,8|1|0xa5765a,22|6|0x2c4a68,4|16|0x5a2615,-6|6|0x603928,-11|-2|0x3c5d76,-21|-10|0x3b5869,-13|-22|0x446d8e,-6|-5|0x233140,13|10|0xbb8760,24|10|0x3a6796",
		95, 0, 0, 0)
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