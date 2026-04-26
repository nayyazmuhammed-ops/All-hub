--[[ 
    [[STABILIZED OBFUSCATION V4]]
    PROJECT: ALL_HUB_ULTIMATUM
    STATUS: BYPASS_NIL_ERROR_BUILD
]]

--// LAYER 1: DATA SHIELD
local _0x_DATA = {
    [1] = "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua",
    [2] = "All Hub | All Game Script",
    [3] = "by zayan",
    [4] = "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"
}

--// LAYER 2: PROTECTED EXECUTION ENGINE
local _0x_RUN = function()
    --// Verify Environment
    if not loadstring or not game:HttpGet("") then 
        return warn("UNSUPPORTED_EXECUTOR") 
    end

    --// Step 1: Library Boot
    local _LIB = loadstring(game:HttpGet(_0x_DATA[1]))()
    if not _LIB then return end

    --// Step 2: Window Construction
    local _WIN = _LIB:CreateWindow({
        Title = _0x_DATA[2], 
        SubTitle = _0x_DATA[3],
        TabWidth = 160, 
        Size = UDim2.fromOffset(580, 460),
        Acrylic = false, 
        Theme = "Dark"
    })

    --// Step 3: Tab Shifting
    local _T_POOL = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
    local _TABS = {}

    for _, _NAME in pairs(_T_POOL) do
        _TABS[_NAME] = _WIN:AddTab({Title = _NAME, Icon = "circle"})
    end

    --// Step 4: Button Injection
    _TABS["Sailor piece script"]:AddButton({
        Title = "Chiyo Hub",
        Callback = function() 
            loadstring(game:HttpGet(_0x_DATA[4]))() 
        end
    })

    --// Step 5: Mobile Toggle UI
    local _GUI = Instance.new("ScreenGui", game.CoreGui)
    local _BTN = Instance.new("TextButton", _GUI)
    _BTN.Size = UDim2.new(0, 50, 0, 50)
    _BTN.Position = UDim2.new(0.1, 0, 0.2, 0)
    _BTN.Text = "HUB"
    _BTN.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    _BTN.TextColor3 = Color3.new(1, 1, 1)
    _BTN.Draggable = true
    Instance.new("UICorner", _BTN).CornerRadius = UDim.new(0, 12)
    
    _BTN.MouseButton1Click:Connect(function() 
        _WIN:Minimize() 
    end)
end

--// LAYER 3: FINAL BOOTSTRAP
task.spawn(function()
    local success, err = pcall(_0x_RUN)
    if not success then
        print("BOOT_ERROR: " .. tostring(err))
    end
end)
