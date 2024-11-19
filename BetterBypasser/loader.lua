local Services = setmetatable({}, {
	__index = function(_, serviceName)
		return cloneref(game:GetService(serviceName))
	end
})

local Players = Services.Players
local Player = Players.LocalPlayer

if getgenv().OptionsSettings then 
    Player:Kick("This version is outdated. Join vaultcord.win/synergy, then to the scripts channel to get the script") 
end

loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/publicproduct.lua", true))()
