-- https://v3rm.net/threads/trading-adonis-bypass-i-made-for-krampus-key.4730/post-33749
local Hooked = {}

local function handleAdonis()
    for _, obj in ipairs(getgc(true)) do
        if type(obj) == "table" then
            local DetectedFunc = rawget(obj, "Detected")
            local KillFunc = rawget(obj, "Kill")
            
            if type(DetectedFunc) == "function" then
                Detected = DetectedFunc
                hookfunction(Detected, function(Action, Info, NoCrash)
                    return true
                end)
                table.insert(Hooked, Detected)
            end
            
            if type(obj.Variables) == "table" and type(obj.Process) == "function" and type(KillFunc) == "function" then
                Kill = KillFunc
                hookfunction(Kill, function(Info)
                end)
                table.insert(Hooked, Kill)
            end
        end
    end
end

local oldInfo = hookfunction(getrenv().debug.info, newcclosure(function(...)
    local LevelOrFunc, Info = ...
    if Detected and LevelOrFunc == Detected then
        return coroutine.yield(coroutine.running())
    end
    return oldInfo(...)
end))

handleAdonis()

