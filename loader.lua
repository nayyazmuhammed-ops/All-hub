--// SETTINGS
local KEY = string.reverse("321NAYYAZ") -- real key = ZAYYAN123
local URL = "https://raw.githubusercontent.com/nayyazmuhammed-ops/All-hub/main/main.lua"

--// WAIT GAME LOAD
if not game:IsLoaded() then
    game.Loaded:Wait()
end

--// KEY CHECK
if getgenv().script_key ~= KEY then
    return warn("Invalid Key")
end

--// LOAD SCRIPT
local success, data = pcall(function()
    return game:HttpGet(URL)
end)

if success and data then
    loadstring(data)()
else
    warn("Load failed")
end
