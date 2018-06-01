local sh = require("ShowHUD")
local se = require("Start_Ex")

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



