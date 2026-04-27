local url = "https://raw.githubusercontent.com/nayyazmuhammed-ops/All-hub/main/vziwhbduk"

local success, data = pcall(function()
    return game:HttpGet(url)
end)

if success then
    loadstring(data)()
else
    warn("Failed to load script")
end
