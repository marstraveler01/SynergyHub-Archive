if identifyexecutor() == "Solara" then
	return error("Executor not supported.")
end

local Services = setmetatable({}, {
	__index = function(_, serviceName)
		local success, service = pcall(function()
			return game:GetService(serviceName)
		end)
		if success then
			return cloneref(service)
		else
			warn("Service not found: " .. serviceName)
			return nil
		end
	end
})

local player = Services.Players.LocalPlayer
repeat task.wait() until game:IsLoaded() and player.Character

getgenv().OptionsSettings = ({...})[1]
--loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/publicproduct.lua",true))()
player:Kick("BetterBypasser patched until further notice.")
