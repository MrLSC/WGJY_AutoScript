hud = {}

local id = createHUD()---创建HUD

function hud.show(text)
	showHUD(id,text,20,"0xffffffff","0xff000000",0,1,450,150,30)
end

function hud.hide(id)
	hideHUD(id)
end

return hud