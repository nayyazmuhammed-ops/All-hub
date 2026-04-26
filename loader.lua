-- simple working loader

local KEY = "ZAYYAN123"
local URL = "https://raw.githubusercontent.com/nayyazmuhammed-ops/All-hub/main/main.lua"

if getgenv().script_key ~= KEY then
    return warn("Wrong key")
end

local data = game:HttpGet(URL)
loadstring(data)()
