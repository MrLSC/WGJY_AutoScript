local openGift = require("OpenGift")
local findHome = require("FindHome")
local openHelp = require("OpenHelp")
local timeGift = require("TimeGift")
local lm = require("LianMengTask")
local sh = require("ShowHUD")

se={}

function se.task()
	--自动领取联盟礼物
	openGift.openGift()
	--自动帮助
	openHelp.help()
	--自动领取倒计时礼包
	timeGift.findBox()
	--自动VIP任务
	lm.vipTask()
	--自动联盟
	lm.lmTask()
	--自动内政
	lm.nzTask()
end

ex_time = 60
function se.start_ex()
	
	--判断是否支持当前分辨率
	width,height = getScreenSize()
	if width ~= 720 and height ~= 1280 then
		toast("不支持当前分辨率")
		lua_exit()
	end
	
	sh.show("准备开始任务")
	
	mSleep(1000)
	
	while (true)
	do
		if tonumber(ex_time) == 60 then
			se.task() --开始执行任务
			sh.show("一分钟后再次执行")
			ex_time = tonumber(ex_time) -1
		elseif tonumber(ex_time) > 0 then
			ex_time = tonumber(ex_time) -1
			sh.show(string.format("%s%s",ex_time,"秒后再次执行"))
		else 
			ex_time = 60
		end
		mSleep(1000)
	end
end

return se;