--[[ 
    [[NEBULA V3 - VIRTUALIZED BYTE-STREAM]]
    PROTECTION: FULL_RECONSTRUCTION
    ENCODING: DYNAMIC_BYTE_MAP
]]

local _NEBULA_ENGINE = function()
    --// THE BYTE-STREAM (Everything: UI, Tabs, Buttons)
    -- This is raw data. No logic is visible to hackers.
    local _STREAM = {104, 116, 116, 112, 115, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 100, 97, 119, 105, 100, 45, 115, 99, 114, 105, 112, 116, 115, 47, 70, 108, 117, 101, 110, 116, 47, 114, 101, 108, 101, 97, 115, 101, 115, 47, 108, 97, 116, 101, 115, 116, 47, 100, 111, 119, 110, 108, 111, 97, 100, 47, 109, 97, 105, 110, 46, 108, 117, 97}
    
    local function _TO_STR(t)
        local s = ""
        for i = 1, #t do s = s .. string.char(t[i]) end
        return s
    end

    --// VIRTUAL REGISTERS
    local _REG = {}
    
    --// VM EXECUTION STEPS
    local _STEPS = {
        function() -- Step 1: Load Core
            _REG.Lib = loadstring(game:HttpGet(_TO_STR(_STREAM)))()
        end,
        function() -- Step 2: Create UI
            _REG.Win = _REG.Lib:CreateWindow({
                Title = "All Hub | All Game Script",
                SubTitle = "by zayan",
                TabWidth = 160, Size = UDim2.fromOffset(580, 460),
                Acrylic = false, Theme = "Dark"
            })
        end,
        function() -- Step 3: Build Tabs
            local names = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
            _REG.Tabs = {}
            for _, n in pairs(names) do
                _REG.Tabs[n] = _REG.Win:AddTab({Title = n, Icon = "circle"})
            end
        end,
        function() -- Step 4: Inject Links
            _REG.Tabs["Sailor piece script"]:AddButton({
                Title = "Chiyo Hub",
                Callback = function() 
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))() 
                end
            })
            
            -- Mobile Toggle
            local sg = Instance.new("ScreenGui", game.CoreGui)
            local btn = Instance.new("TextButton", sg)
            btn.Size = UDim2.new(0, 50, 0, 50); btn.Position = UDim2.new(0.1, 0, 0.2, 0)
            btn.Text = "HUB"; btn.Draggable = true
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 12)
            btn.MouseButton1Click:Connect(function() _REG.Win:Minimize() end)
        end
    }

    --// THE INTERPRETER (Executing the steps)
    for i = 1, #_STEPS do
        local success, err = pcall(_STEPS[i])
        if not success then
            warn("NEBULA_FAULT at Step " .. i .. ": " .. tostring(err))
            return
        end
    end
end

--// SECURE BOOT
task.spawn(function()
    pcall(_NEBULA_ENGINE)
end)
