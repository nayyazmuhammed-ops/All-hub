--[[ 
    [[PROTECTED BY MOONSEC V3]]
    ARCH: NEBULA_STABILIZED_V6
    STATUS: ANTI_NIL_PATCHED
]]

local _0x_ENGINE = function()
    --// LAYER 1: BYTE-MAPPING (Hides all URLs and names)
    local _0x_L = {104, 116, 116, 112, 115, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 100, 97, 119, 105, 100, 45, 115, 99, 114, 105, 112, 116, 115, 47, 70, 108, 117, 101, 110, 116, 47, 114, 101, 108, 101, 97, 115, 101, 115, 47, 108, 97, 116, 101, 115, 116, 47, 100, 111, 119, 110, 108, 111, 97, 100, 47, 109, 97, 105, 110, 46, 108, 117, 97}
    local _0x_U = {104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 107, 97, 105, 115, 101, 110, 108, 109, 97, 111, 47, 108, 111, 97, 100, 101, 114, 47, 114, 101, 102, 115, 47, 104, 101, 97, 100, 115, 47, 109, 97, 105, 110, 47, 99, 104, 105, 121, 111, 46, 108, 117, 97}

    local function _0x_DEC(_t)
        local _s = ""
        for i = 1, #_t do _s = _s .. string.char(_t[i]) end
        return _s
    end

    --// LAYER 2: STABILIZED LOAD (Fixes the Nil Error)
    local _RAW_LIB = game:HttpGet(_0x_DEC(_0x_L))
    local _LIB_FUNC = loadstring(_RAW_LIB)
    
    if not _LIB_FUNC then
        return warn("FAILED TO COMPILE UI LIBRARY - CHECK INTERNET")
    end
    
    local _LIB = _LIB_FUNC()

    --// LAYER 3: UI CONSTRUCTION
    local _WIN = _LIB:CreateWindow({
        Title = "All Hub | All Game Script",
        SubTitle = "by zayan",
        TabWidth = 160, Size = UDim2.fromOffset(580, 460),
        Acrylic = false, Theme = "Dark"
    })

    local _T_POOL = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
    local _TABS = {}
    for _, name in pairs(_T_POOL) do
        _TABS[name] = _WIN:AddTab({Title = name, Icon = "circle"})
    end

    --// LAYER 4: BUTTON HANDLERS
    _TABS["Sailor piece script"]:AddButton({
        Title = "Chiyo Hub",
        Callback = function() 
            local success, err = pcall(function()
                loadstring(game:HttpGet(_0x_DEC(_0x_U)))()
            end)
            if not success then warn("CHYO_LOAD_FAIL: " .. tostring(err)) end
        end
    })

    --// LAYER 5: MOBILE TOGGLE
    local _G = Instance.new("ScreenGui", game.CoreGui)
    local _B = Instance.new("TextButton", _G)
    _B.Size = UDim2.new(0, 50, 0, 50); _B.Position = UDim2.new(0.12, 0, 0.2, 0)
    _B.Text = "HUB"; _B.Draggable = true
    _B.BackgroundColor3 = Color3.fromRGB(30,30,30)
    _B.TextColor3 = Color3.new(1,1,1)
    Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
    _B.MouseButton1Click:Connect(function() _WIN:Minimize() end)
end

--// SECURE EXECUTION
task.spawn(function()
    local ok, err = pcall(_0x_ENGINE)
    if not ok then print("VM_FATAL_ERROR: " .. tostring(err)) end
end)
