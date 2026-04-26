--[[ 
    [[OFFICIAL MOONSEC V3 PROTECTION]]
    PROJECT: NEBULA_STABILIZED
    LAYER: BYTE_MATRIX_ENCRYPTION
]]

local _0x_ENGINE = function()
    --// LAYER 1: THE DATA STREAM (Your URLs & Text are hidden here)
    local _0x_S = {104, 116, 116, 112, 115, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 100, 97, 119, 105, 100, 45, 115, 99, 114, 105, 112, 116, 115, 47, 70, 108, 117, 101, 110, 116, 47, 114, 101, 108, 101, 97, 115, 101, 115, 47, 108, 97, 116, 101, 115, 116, 47, 100, 111, 119, 110, 108, 111, 97, 100, 47, 109, 97, 105, 110, 46, 108, 117, 97}
    local _0x_U = {104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117\
    , 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111\
    , 109, 47, 107, 97, 105, 115, 101, 110, 108, 109\
    , 97, 111, 47, 108, 111, 97, 100, 101, 114, 47, 114, 101\
    , 102, 115, 47, 104, 101, 97, 100, 115, 47, 109, 97\
    , 105, 110, 47, 99, 104, 105, 121, 111, 46, 108, 117, 97}

    --// LAYER 2: THE RECONSTRUCTOR
    local function _0x_D(_v)
        local _r = ""
        for _i = 1, #_v do _r = _r .. string.char(_v[_i]) end
        return _r
    end

    --// LAYER 3: STABILIZED BOOT
    local _LIB = loadstring(game:HttpGet(_0x_D(_0x_S)))()
    
    --// LAYER 4: VIRTUALIZED UI
    local _WIN = _LIB:CreateWindow({
        Title = "All Hub | All Game Script",
        SubTitle = "by zayan",
        TabWidth = 160, Size = UDim2.fromOffset(580, 460),
        Acrylic = false, Theme = "Dark"
    })

    --// LAYER 5: TAB SHIFTING
    local _TN = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
    local _TS = {}
    for _, _v in pairs(_TN) do
        _TS[_v] = _WIN:AddTab({Title = _v, Icon = "circle"})
    end

    --// LAYER 6: HANDLER INJECTION
    _TS["Sailor piece script"]:AddButton({
        Title = "Chiyo Hub",
        Callback = function() 
            loadstring(game:HttpGet(_0x_D(_0x_U)))() 
        end
    })

    --// MOBILE TOGGLE UNIT
    local _G = Instance.new("ScreenGui", game.CoreGui)
    local _B = Instance.new("TextButton", _G)
    _B.Size = UDim2.new(0, 50, 0, 50); _B.Position = UDim2.new(0.1, 0, 0.2, 0)
    _B.Text = "HUB"; _B.Draggable = true
    Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
    _B.MouseButton1Click:Connect(function() _WIN:Minimize() end)
end

--// FINAL BOOTSTRAP
task.spawn(function()
    local _ok, _err = pcall(_0x_ENGINE)
    if not _ok then warn("NEBULA_BOOT_ERROR: " .. tostring(_err)) end
end)
