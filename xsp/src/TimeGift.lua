local touch  = require("Touch")
local findHome = require("FindHome")
local sh = require("ShowHUD")

tg = {}
number = 0

function tg.findBox()
	sh.show("领取倒计时礼包")
	--回到城内
	findHome.openCastle()
	--打开倒计时礼包
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x674e14,-6|12|0x6a5107,-16|20|0xe7b84f,-1|21|0xffe8a4,-4|29|0xa18036,-2|12|0xa35f1f,14|0|0x4d8734,14|7|0xd8b661,8|14|0x568835,-4|24|0xbc731f,12|20|0x87ed76,9|11|0x677d49,2|1|0xc6832e,-2|-6|0x70680d,0|0|0x674e14,-7|14|0x7c5b16,-16|18|0xf6ca5e,-8|26|0x8c5611,-1|26|0xb37128,3|15|0x766e22",
		80, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
		mSleep(500)
	else
		--如果没找到找3次 找不到就判定没有
		if number < 3 then
			number = number + 1
			mSleep(200)
			findHome.openCastle()
		else
			sh.show("没有倒计时礼包")
		end
	end
	--领取倒计时礼包
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x322e1f,0|18|0xab732b,2|39|0xfceb9c,3|57|0xaf752b,9|64|0xaf752a,20|57|0xb07629,17|24|0x3d290f,18|0|0xb07629,-3|-54|0xaf752b,-8|-33|0xaf752b,-14|3|0xaf752b,-15|50|0xaf752b,-7|78|0xaf752b,8|79|0xaf752b,2|49|0xaf752b,1|43|0xaf752b,-10|-39|0xaf752b,-7|-49|0xaf752b,-3|38|0xf8e799,-4|74|0xaf752b",
		80, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
	end
	
	--回到城内
	findHome.openCastle()
end

return tg