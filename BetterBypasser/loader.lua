local Services = setmetatable({}, {
	__index = function(_, serviceName)
		return game:GetService(serviceName)
	end
})

local player = Services.Players.LocalPlayer
repeat task.wait() until game:IsLoaded() and player.Character

local executor = identifyexecutor()
if executor == "Solara" then
	error("Unsupported executor: " .. executor)
	return 
end

if getgenv().OptionsSettings ~= nil then player:Kick("This version is outdated. Join vaultcord.win/synergy, then to the scripts channel to get the script") end;

loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/publicproduct.lua", true))()
