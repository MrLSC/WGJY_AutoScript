local openGift = require("OpenGift")
local findHome = require("FindHome")
local openHelp = require("OpenHelp")
local timeGift = require("TimeGift")
local lm = require("LianMengTask")
local sh = require("ShowHUD")
local sys = require("utils/sys_utils")
local gr = require("ore/GetherReady")

se={}

function se.task(results)
	sysLog(results.cbg_1)
	sysLog(results.cj_1)
	
	--自动领取联盟礼物
	if sys.contains(results.cbg_1,"0") then
		openGift.openGift()
	end
	--自动帮助
	if sys.contains(results.cbg_1,"1") then
		openHelp.help()
	end
	--自动领取倒计时礼包
	if sys.contains(results.cbg_1,"2") then
		timeGift.findBox()
	end
	--自动VIP任务
	if sys.contains(results.cbg_1,"3") then
		lm.vipTask()
	end
	--自动联盟
	if sys.contains(results.cbg_1,"4") then
		lm.lmTask()
	end
	--自动内政
	if sys.contains(results.cbg_1,"5") then
		lm.nzTask()
	end
	--自动采集
	if sys.contains(results.cbg_1,"6") then
		local t = "石"
		if results.cj_1 == "0" then
			t = "石"
		elseif results.cj_1 == "1" then
			t = "木"
		elseif results.cj_1 == "2" then
			t = "铁"
		elseif results.cj_1 == "3" then
			t = "金"
		elseif results.cj_1 == "4" then
			t = "水"
		end
		gr.ready(t)
	end
end

user_time = 60

function se.start_ex(results)
	user_time = results.Edit_time
	ex_time = user_time
	
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
		if ex_time == user_time then
			se.task(results) --开始执行任务
			sh.show(user_time.."秒后再次执行")
			ex_time = ex_time -1
		elseif ex_time > 0 then
			ex_time = ex_time -1
			sh.show(ex_time.."秒后再次执行")
		else 
			ex_time = user_time
		end
		mSleep(1000)
	end
end

return se;