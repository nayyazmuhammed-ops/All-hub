--// CONFIG
local SCRIPT_URL = "PASTE YOUR RAW LINK HERE"

--// KEY DATABASE
local KEYS = {
    ["ZAYYAN123"] = {expires = 9999999999},
    ["VIPKEY"] = {expires = os.time() + 86400},
}

--// WAIT GAME LOAD
if not game:IsLoaded() then
    game.Loaded:Wait()
end

--// BASIC ANTI-TAMPER
if not getgenv then
    return
end

--// GET USER KEY
local user_key = getgenv().script_key

--// VALIDATION FUNCTION
local function checkKey(key)
    local data = KEYS[key]
    if not data then
        return false, "Invalid key"
    end
    
    if os.time() > data.expires then
        return false, "Expired key"
    end
    
    return true
end

--// CHECK KEY
local ok, msg = checkKey(user_key)

if not ok then
    return warn("Access denied: "..msg)
end

--// LOAD SCRIPT
local success, data = pcall(function()
    return game:HttpGet(SCRIPT_URL)
end)

if success and data then
    loadstring(data)()
else
    warn("Load failed")
end
