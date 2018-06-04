sys = {}

-- 任意输出
function sys.sysLogLst(...)
	local msg = ''
	for k,v in pairs({...}) do
		msg = string.format('%s %s ', msg, tostring(v))
	end
	sysLog(msg)
end

function sys.contains(str,find)  --Returns true if @str contains @find
    if not str then return nil end
    str = tostring(str)
  for n=1, #str-#find+1 do
    if str:sub(n,n+#find-1) == find then return true end
  end
  return false
end

return sys