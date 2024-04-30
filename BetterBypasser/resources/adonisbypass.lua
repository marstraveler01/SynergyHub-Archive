for k, v in pairs(getgc(true)) do
	if pcall(function()
		return rawget(v, "indexInstance")
	end) and type(rawget(v, "indexInstance")) == "table" and (rawget(v, "indexInstance"))[1] == "kick" then
		v.tvk = {
			"kick",
			function()
				return coroutine.yield(coroutine.running())
			end
		}
	end
end
