do
    repeat task.wait() until game:IsLoaded()
end

local id = game.GameId
if id == 4777817887 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/CoreClient/games/bladeball.lua",true))()
else
    return error("Game not supported")
end
