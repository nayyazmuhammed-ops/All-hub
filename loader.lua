--// SCRIPT LINK
local SCRIPT_URL = "https://raw.githubusercontent.com/nayyazmuhammed-ops/All-hub/main/vziwhbduk"

--// KEY SYSTEM
local KEYS = {
    ["ZAYYAN123"] = {expires = 9999999999}, -- permanent
    ["FRIEND"] = {expires = os.time() + 86400}, -- 1 day
}

--// GET KEY
local key = getgenv().script_key

--// CHECK KEY
local data = KEYS[key]

if not data then
    return warn("Invalid key")
end

if os.time() > data.expires then
    return warn("Key expired")
end

--// LOAD SCRIPT
local success, script = pcall(function()
    return game:HttpGet(SCRIPT_URL)
end)

if success then
    loadstring(script)()
else
    warn("Failed to load script")
end
