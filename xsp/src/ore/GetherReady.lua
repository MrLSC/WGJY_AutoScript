local touch  = require("Touch")
local sh = require("ShowHUD")
local fo = require("ore/findOre")

function line_1()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xb59d7c,18|-7|0xb2906e,20|-25|0xab4037,2|-24|0xbeb8ad,-16|-29|0x9e4344,-22|-5|0x6c3232,-18|18|0x703535,25|15|0xc82525,23|26|0xffffff,29|26|0xfefdfd,36|26|0xffffff,35|22|0xede1e1",
		80, 0, 0, 0)
	return x
end

function line_2()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x8f8a87,-2|25|0xb8a07f,-14|-11|0x9e4444,27|-7|0xaf443b,-2|27|0xb4a382,33|36|0xcd2828,28|42|0xeee6e6,28|49|0xfffefe,32|46|0xfaf9f9,38|50|0xfdfcfc,41|44|0xf5f1f1",
		80, 0, 0, 0)
	return x
end

function line_3()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xd2c5b6,16|-7|0xa88675,-13|9|0xb8a07f,-10|-13|0x7e7b73,-19|-18|0x9e4444,19|-17|0xaf443b,-24|26|0x883e42,24|20|0xcb2626,20|29|0xeadfdf,24|36|0xfefefe,27|33|0xffffff,30|35|0xfaf9f9,34|30|0xdccece",
		80, 0, 0, 0)
	return x
end

function line_4()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xb6a17f,19|-6|0x866442,20|-17|0xa83d34,-9|-25|0x9e4343,-1|-17|0x8f8a87,-17|24|0x8c4247,26|-4|0xf5d39f,1|11|0xb4a281,30|19|0xcb2626,27|32|0xfefdfd,31|32|0xffffff,40|32|0xffffff,31|25|0xfcfbfb,31|34|0xede6e6",
		80, 0, 0, 0)
	return x
end

function line_5()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xcdb594,15|-4|0x76543a,15|-19|0xa63a3a,4|-20|0xd8d8c8,-18|-23|0x9e444c,-24|-1|0x7b3b3e,-20|24|0x803636,-3|15|0xad957c,25|18|0xcb2626,22|27|0xede0e0,24|34|0xfaf9f9,28|33|0xfbfbfb,30|28|0xfdfdfd,35|28|0xfdfdfd,35|33|0xebe3e3",
		80, 0, 0, 0)
	return x
end

gr = {}

function gr.ready(t)
	sh.show("准备采集")
	mSleep(500)
	if line_5() > -1 then
		sh.show("兵线已满")
		return
	elseif line_4() > -1 then 
		sh.show("当前剩余1条兵线")
		fo.start_gether(1,t)
	elseif line_3() > -1 then
		sh.show("当前剩余2条兵线")
		fo.start_gether(2,t)
	elseif line_2() > -1 then 
		sh.show("当前剩余3条兵线")
		fo.start_gether(3,t)
	elseif line_1() > -1 then 
		sh.show("当前剩余4条兵线")
		fo.start_gether(4,t)
	else
		sh.show("当前剩余5条兵线")
		fo.start_gether(5,t)
	end
end

return gr