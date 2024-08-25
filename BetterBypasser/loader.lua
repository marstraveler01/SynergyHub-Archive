local Services = setmetatable({}, {
	__index = function(_, serviceName)
		return game:GetService(serviceName)
	end
})

local player = Services.Players.LocalPlayer
repeat task.wait() until game:IsLoaded() and player.Character

loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/publicproduct.lua",true))()
