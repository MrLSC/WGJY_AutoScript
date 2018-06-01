local touch  = require("Touch")

fh = {}

--寻找地图按钮
function fh.findMapBtn()
	 x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xaf7d3b,0|-5|0xa8763c,-8|-22|0x875a2d,-11|-30|0xc29257,-1|-36|0xd5b47a,4|-6|0xae7c3d,8|18|0xb9884e,-13|33|0xb78644,11|53|0x41878d,28|56|0x4a90a5,-6|28|0xc9a870,-12|6|0xa86e34,-13|-64|0x407982,27|-40|0xc9a863,29|-5|0x9db9ae,-10|28|0xb1803e,-24|38|0xc8bb8a,7|54|0x45898e,18|59|0x388393,-22|63|0x47868c",
		95, 0, 1, 0)
	return x,y
end

--寻找城堡按钮
function fh.findCastleBtn()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x908585,-3|-27|0xeee9e9,-9|-37|0x7f99b0,14|-46|0x3a848c,-11|-44|0x346f81,-4|-5|0xc2b1b1,20|24|0x9ebde1,9|48|0x428a96,-25|57|0x44868e,-17|38|0x5c7387,0|18|0x5d5050,6|14|0x655658,2|-6|0xc5c5c5,-24|-20|0x46868f,-20|-36|0x3b868e,10|-37|0x5399af,24|-23|0x3b869e,1|-3|0x7d6c7d,-29|20|0x7095a8,0|38|0xa39384",
		95, 0, 1, 0)
	return x,y
end

--寻找关闭按钮
function fh.findCloseBtn()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xfdbb37,2|-20|0x994f4f,19|-1|0x9b4951,-24|1|0x954d4d,-1|19|0xa15353,3|2|0xffbf3b,-4|-1|0xfeb531,-1|-11|0xbf6565,6|-4|0xffbf44,-17|2|0x9d5252,17|-1|0xa55158,0|-23|0x994f4f,-3|21|0xa15156,18|-1|0xa14d53,-23|-5|0x964c4c,-10|-10|0xfdac28,13|-12|0xfdc448,12|13|0xfdc448,-12|12|0xfeab27,1|4|0xfdbb37",
		95, 1, 1, 0)
	if x > -1 then
		touch.touch(x,y)
	end
	return x
end

--定位当前位于哪个页面 
function fh.location()
	local mx,my = fh.findMapBtn()
	local cx,cy = fh.findCastleBtn()
	if mx > -1 then
		return 1 --城堡内
	elseif cx > -1 then
		return 2 --地图内
	else
		return 3 --未知界面
	end
end

--退到主界面
function fh.backToFirstPage()
	while (true)
	do
		if fh.findCloseBtn() == -1 then
			break
		end
		mSleep(500)
	end
end

--打开城堡
function fh.openCastle()
	local location = fh.location()
	if location == 1 then
		
	elseif location == 2 then
		local cx,cy = fh.findCastleBtn()
		if cx > -1 then
			touch.touch(cx,cy)
			mSleep(2000)
		end
	elseif location == 3 then
		fh.backToFirstPage()
		fh.openCastle()
	end
end

--打开地图
function fh.openMap()
	local location = fh.location()
	if location == 1 then
		local cx,cy = fh.findMapBtn()
		if cx > -1 then
			touch.touch(cx,cy)
			mSleep(2000)
		end
	elseif location == 2 then
		
	elseif location == 3 then
		fh.backToFirstPage()
		fh.openMap()
	end
end

return fh;