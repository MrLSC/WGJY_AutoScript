local findHome = require("FindHome")
local touch = require("Touch")
local sh = require("ShowHUD")
op = {}

--查找开启按钮位置(并点击)
function findOpenGift()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x2b7586,2|18|0x071316,2|30|0x2b758a,2|42|0xeeefef,2|53|0x7e7f7f,-5|67|0x327485,-10|77|0x34767f,-13|69|0x377982,-12|39|0xf0f0f0,-14|16|0x377982,-18|-13|0x377979,-1|7|0x2b7586,0|30|0x162a2f,1|59|0x2b7586,0|42|0x111616,-9|42|0x0c1b1f,-1|46|0x343637,-2|26|0xf9f9f9,1|0|0x2b7586,11|-12|0x347e9f",
		85, 1, 0, 0)
	if x > -1 then
		touch.touch(x,y)
	end
	return x;
end

--查找联盟大礼物
function findBigGift()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xaf752b,2|17|0xeaeaea,1|39|0xd6d6d6,-4|70|0xaf752e,11|60|0xbf8623,7|41|0xfafafa,5|31|0xb17728,5|-6|0xb17728,-1|-17|0xaf752b,-14|3|0xa06d3a,0|27|0x5d5d5d,1|45|0x32302e,-1|62|0xaf752b,4|47|0x828282,0|39|0x575756,-1|19|0x272523,8|0|0xb87f24,1|33|0x543815,3|66|0xaf752b,-3|67|0xaf752b",
		85, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
	end
	return x;
end

--查找单个删除按钮
function findDelete()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xa83d34,-1|24|0x5e5e5e,-5|44|0xf7f7f7,-12|58|0xa24141,-10|39|0x959393,-14|29|0xa04545,-4|43|0x7d7d7d,-2|54|0xa73b3b,-9|63|0xa34040,-22|39|0x934951,-15|1|0x9b484f,5|1|0xaf443b,7|35|0x58221e,-4|57|0xa73b3b,-5|44|0xf7f7f7,-7|34|0x252424,-7|21|0x797979",
		85, 1, 0, 0)
	return x;
end

--查找并点击删除按钮
function findDeleteAll()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x9e4c54,22|14|0x79473a,16|40|0x301f0e,6|44|0xa48d67,15|60|0x4b2c23,26|54|0xcfbf9f,22|44|0xcab998,3|63|0x943f3f,21|62|0x531c16,26|69|0xa63a3a,29|54|0x422520,22|46|0xb4a085,16|8|0x7e3f35,18|42|0x786748,7|49|0x53310f",
		85, 1, 0, 0)
	if x > -1 then
		touch.touch(x,y)
	end
	return x;
end

--查找主页礼物图标
function findGiftbtn()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xcc7949,-2|-6|0xbe7242,-8|-9|0xec4e2c,-6|-18|0xbb2f1f,-4|-22|0xb75233,4|-25|0xc7956c,10|-19|0xc48e6c,14|-13|0xa87549,3|-12|0xd33220,8|-1|0xd9451c,-3|0|0xdb8858,-6|-4|0xfff5d9,-11|-12|0xf95c2c,-12|-17|0xd4371f,-10|-21|0xb52d1c,4|-21|0xaa3322,1|-12|0xff6945,15|-14|0x8a5735,11|-26|0xf4b08e,11|-20|0xae7750",
		95, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
		mSleep(1000)
	end
	return x
end

--打开礼物面板
function openGiftTab()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x7d7053,-9|3|0xc0af8c,-7|-5|0x7b5948,-4|-10|0xc7b672,-4|3|0x39493f,-4|14|0xa87f65,2|17|0xb78f5e,-10|19|0x857352,-11|11|0xa39270,-13|1|0x150b07,-11|-3|0x9a7958,-6|0|0x8c7d59,-5|4|0x6d5c3a,-6|9|0x3f1e0c,-7|2|0x0d6295,-7|-4|0x6c4f31,-8|-10|0x958b54,-6|11|0xe2d1af,-9|18|0x6d5d44,-3|12|0xc8a799",
		95, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
		mSleep(500)
	end
end

--打开礼物界面
function openGiftPage()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x813d1b,0|-9|0x9a8179,-24|-7|0xf3f2f2,-18|-24|0x4d4b49,0|-36|0x764d2c,-16|-51|0x754c2b,-22|-26|0xa7a7a7,-2|14|0xfff4f4,0|20|0xd9553d,-7|-1|0x8c4625,5|1|0xc4674e,-28|23|0x868686,-27|1|0xefefef,-27|-13|0x362314,-7|-33|0x754c2b,-10|18|0x724a2a,-4|16|0x9d877b,2|20|0xd45840,11|18|0xe28777,6|2|0xd77d64",
		95, 0, 0, 0)
	if x > -1 then
		touch.touch(x,y)
		mSleep(500)
	end
end

function op.openGift()
	sh.show("领取联盟礼物")
	--回到城内
	findHome.openCastle()
	--查找礼物图标
	if findGiftbtn() > -1 then
		--打开礼物面板
		openGiftTab()
		--打开礼物界面
		openGiftPage()
	else
		sh.show("没有礼物")
		return
	end
	
	mSleep(500)
	--开始执行开箱子
	while(true)
	do
		if findOpenGift() > -1 then
			--找到继续循环
		else
			--找不到先找有没有单个删除 有 就去找全部删除 没有 结束循环
			if findDelete() > -1 then
				findDeleteAll()
			else
				--没有普通礼物 找大礼物
				if findBigGift() > -1 then
					
				else
					sh.show("完毕")
					break;
				end
			end
		end
		mSleep(500)
	end
	findHome.openCastle()
end

return op;