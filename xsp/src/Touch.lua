t = {}

function t.touch(x,y)
	touchDown(1, x, y)
	mSleep(200)
	touchUp(1,x,y)
	mSleep(200)
end

function t.move()
	touchDown(1, 100, 100)
	mSleep(50)
	touchMove(1, 150, 150)
	mSleep(50)
	touchUp(1, 150, 150)  
end

return t