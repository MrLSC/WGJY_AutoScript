t = {}

function t.touch(x,y)
	touchDown(1, x, y)
	mSleep(200)
	touchUp(1,x,y)
	mSleep(200)
end

return t