k = {}

-- 3级石矿
function k.sk_3()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xababac,11|-4|0xaaabac,12|39|0x8e8c8d,9|50|0xa39b96,3|43|0x595b5c,3|38|0xa79fa0,15|55|0xaeb1b1,24|61|0x5b5d5e,35|52|0x9f9e9f,16|48|0xb7b9ba,-13|76|0xb5b1b1,-18|33|0x626b73,-13|36|0x656d73,13|90|0x505c5d,14|84|0x5e6062,-6|91|0x266f97,-6|102|0xa3d0e3,0|104|0xeff4f5,4|105|0xcbddde,-2|106|0xbfd8e1",
		80, 0, 0, 0)
	return x, y
end

-- 4级石矿
function k.sk_4()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xc8c0b8,11|-1|0xaea6a5,3|-11|0x9c9c9b,4|8|0x8e8f8e,-25|-13|0x4f606f,-28|-18|0x666666,-11|-48|0x595959,-6|-55|0xa9aaa9,22|6|0xb9bab9,29|6|0x666665,2|41|0xc3c3c2,-18|26|0x76807f,-12|43|0x246d95,-9|55|0xf8f9f8,-12|55|0xe9f0f3,-4|55|0xeef8f8,-9|51|0xf0fafc,-9|56|0xe7ecec,-7|53|0x1e2f37,-17|2|0x959595",
		80, 0, 0, 0)
	return x, y
end

-- 3级铁矿
function k.tk_3()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0x36f0e5,-8|11|0xdb9a5e,-19|-1|0x93938c,-3|-35|0x404040,4|-46|0xb7b8b8,3|-24|0x526262,24|14|0x4e463f,38|20|0x693a2a,11|42|0xb89181,4|35|0x9c9688,29|-12|0x2f787f,17|-9|0x91e5e6,-2|52|0x246d96,-2|60|0xdce4e6,3|63|0xcdd6d6,7|62|0xcbdddd,12|41|0xad7e6f,3|9|0xba9981,-15|21|0xb57160,3|12|0xf8f2e2",
		80, 0, 0, 0)
	return x, y
end

-- 4级铁矿
function k.tk_4()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xc07e5c,20|8|0x867e75,38|14|0xd6713e,32|20|0x246860,9|34|0xb98878,-15|2|0xb8775d,-21|-13|0x919189,-4|-41|0x4f5857,11|-39|0x40c3c2,7|-25|0x18f5ed,-8|-1|0x544454,-14|9|0x823f2d,6|32|0xe9c7a5,13|40|0xb7623b,1|30|0x706857,-6|44|0x246d96,-3|56|0xf9f9f9,-4|66|0x246d95,12|45|0x3af0ef,25|20|0x858281",
		80, 0, 0, 0)
	return x, y
end

-- 3级木矿
function k.mk_3()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xe9c289,-21|-8|0x8b532c,-15|-18|0xaa724a,-2|-30|0x92612f,14|-39|0x5e4d24,-2|0|0xebc288,-13|30|0xb4814f,3|37|0xa98856,18|24|0x553d1b,25|1|0x745331,20|-14|0x697939,19|-26|0x87874d,18|41|0x758541,2|39|0xa18056,-14|32|0xb59c69,-3|50|0x236c95,-3|58|0xd5e9f1,3|60|0xe4e8eb,6|61|0xfdfdfd,7|59|0xd8e8f6",
		80, 0, 0, 0)
	return x, y
end

-- 4级木矿
function k.mk_4()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xe9c087,-20|-6|0x845331,-10|-16|0xb87947,2|-28|0xa67444,17|-39|0x5e4d24,25|-12|0x41511f,31|3|0x543b12,14|6|0xd0b381,26|24|0x544322,20|41|0x72823f,10|24|0x523910,5|39|0x9d7c53,-10|32|0xa18452,0|48|0x236c95,3|60|0xf8f8f8,9|66|0x246d95,-1|48|0x236c95,-12|29|0x6c451f,-20|-2|0x958d65,-17|-11|0x7b4119",
		80, 0, 0, 0)
	return x, y
end

-- 3级金矿
function k.jk_3()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xd1b89a,18|-3|0xb87745,42|-3|0xb58360,-36|1|0xf5dcc4,8|-55|0x957363,-15|-37|0x5d4934,8|26|0xcdb48f,-9|46|0x246d95,-7|57|0xc9e3ee,-4|60|0xa1b9c1,-2|58|0xcadbdd,2|60|0xf8fafc,3|59|0xcbe3e3",
		80, 0, 0, 0)
	if x > -1 then
		
	end
	return x, y
end

-- 4级金矿
function k.jk_4()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xd8bf9e,18|0|0xa35e2d,46|1|0xa87e59,-31|7|0xceb5a4,-12|-32|0x72523e,10|-51|0x9e7d6d,12|34|0xaf9f7c,-4|51|0x246d96,-4|63|0xcfdee5,-1|63|0xe9eae9,4|63|0xeefbfa,-1|59|0xd1e1ea,-2|66|0x738a94",
		80, 0, 0, 0)
	if x > -1 then
		
	end
	return x, y
end

--水晶矿
function k.sj()
	x, y = findColor({0, 0, 719, 1279}, 
		"0|0|0xc671e0,-29|15|0x4c30a3,-45|9|0x6f6277,-25|-27|0x4b4d56,10|-17|0xc05cf3,37|-4|0xca59de,27|9|0x9f16f1,22|34|0xa239dc,1|41|0x56389a,-15|47|0x423777,-22|31|0x9f5ac1,-8|13|0x7b6d8e,-23|2|0x434554,-13|-13|0x616374,-16|-38|0x2a2c2f,-42|-2|0x91729a,-23|31|0x9d57be,-5|13|0x6578aa,4|0|0xc75bda,-5|-24|0xc26cd3",
		90, 0, 0, 0)
	return x, y
end

--黄色兵线
function k.h_bx(x,y,x1,y1)
	x, y = findColor({x,y,x1,y1}, 
		"0|0|0xf39328",
		95, 0, 0, 0)
	return x, y
end

--蓝色兵线
function k.l_bx(x,y,x1,y1)
	x, y = findColor({x, y, x1, y1}, 
		"0|0|0x017cc5",
		95, 0, 0, 0)
	return x, y
end

--深蓝兵线
function k.s_bx(x,y,x1,y1)
	x, y = findColor({x,y,x1,y1}, 
		"0|0|0x1136cc",
		95, 0, 0, 0)
	return x, y
end

return k