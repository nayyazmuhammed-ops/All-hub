local url = "YOUR_SCRIPT_URL"

local success, data = pcall(function()
    return game:HttpGet(url)
end)

if success then
    loadstring(data)()
else
    warn("Failed to load script")
end
