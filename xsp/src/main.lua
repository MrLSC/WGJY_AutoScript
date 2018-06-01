local sh = require("ShowHUD")
local se = require("Start_Ex")
local touch = require("Touch")

while (true)
do
	if isFrontApp("com.igg.android.lordsmobile_cn") == 1 then
		break
	end
	toast("请切换到王国纪元主页")
	mSleep(1000)
end

init("com.igg.android.lordsmobile_cn",0)
ret,results = showUI('ui.json')

--用户点击确定就开始执行  取消就结束
if ret == 1 then se.start_ex() else lua_exit() end

--touch.move(100,"左")

--x, y = findColor({0, 0, 719, 1279}, 
--	"0|0|0x1f6179,4|23|0x69d8dd,4|30|0x5fc5ca,5|39|0x78f5fa,4|47|0x6ee1e6,4|54|0x7afaff,3|62|0x6bdde2,3|70|0x7afaff,3|77|0x7afaff,7|92|0x78f6fb,2|112|0x1f6179",
--	85, 1, 0, 0)
--if x > -1 then
--	sysLog(x)
--	sysLog(y)
--end





