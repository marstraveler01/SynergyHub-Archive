local executorEnviroment = getfenv()
local Services = setmetatable({}, {
	__index = function(_, serviceName)
		if getfenv(2) ~= executorEnviroment then
			return nil;
		end
		return cloneref(game[serviceName])
	end
})

local player = Services.Players.LocalPlayer
repeat task.wait() until game:IsLoaded() and player.Character

getgenv().options = ({...})[1]
loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/alphaproduct.lua",true))()
