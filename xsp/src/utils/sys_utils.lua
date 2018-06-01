sys = {}

-- 任意输出
function sys.sysLogLst(...)
	local msg = ''
	for k,v in pairs({...}) do
		msg = string.format('%s %s ', msg, tostring(v))
	end
	sysLog(msg)
end

return sys