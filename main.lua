--[[ 
    [[PROTECTED BY MOONSEC V3]]
    ENGINE: DELTA_OPTIMIZED_VM
    STATUS: FINAL_STABILIZED_BUILD
]]

local function _BOOT_VM()
    --// THE ENCRYPTED PAYLOAD
    local _STREAM = {161, 235, 99, 142, 204} 
    local _KEY = 0x4B
    local _PC = 1
    
    --// METHOD INDIRECTION (Hiding the UI calls)
    local _V = {
        ["L"] = "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua",
        ["T"] = "All Hub | All Game Script",
        ["S"] = "by zayan",
        ["M1"] = "CreateWindow",
        ["M2"] = "AddTab"
    }

    local _REGS = {}
    local _ACTIVE = true

    --// THE INTERPRETER
    while _ACTIVE do
        local _BYTE = _STREAM[_PC]
        if not _BYTE then break end

        -- Dynamic XOR Logic
        local _OP = bit32.bxor(_BYTE, _KEY)
        _KEY = bit32.band(_KEY + 1, 0xFF) -- Rotating key simple

        -- INSTRUCTION HANDLERS
        if _OP == 0xEA then -- [INIT_WINDOW]
            _REGS[1] = loadstring(game:HttpGet(_V["L"]))()
            _REGS[2] = _REGS[1][_V["M1"]](_REGS[1], {
                Title = _V["T"], SubTitle = _V["S"],
                TabWidth = 160, Size = UDim2.fromOffset(580, 460),
                Acrylic = false, Theme = "Dark"
            })
        
        elseif _OP == 0xB0 then -- [LOAD_TABS]
            local _T = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
            _REGS[3] = {}
            for _, name in pairs(_T) do
                _REGS[3][name] = _REGS[2][_V["M2"]](_REGS[2], {Title = name, Icon = "circle"})
            end
            
            -- Sailor Button (Chiyo)
            _REGS[3]["Sailor piece script"]:AddButton({
                Title = "Chiyo Hub",
                Callback = function()
                    local u = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\107\97\105\115\101\110\108\109\97\111\47\108\111\97\100\101\114\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\99\104\105\121\111\46\108\117\97"
                    loadstring(game:HttpGet(u))()
                end
            })

        elseif _OP == 0x2D then -- [BOOT_TOGGLE]
            local _G = Instance.new("ScreenGui", game.CoreGui)
            local _B = Instance.new("TextButton", _G)
            _B.Size = UDim2.new(0, 50, 0, 50); _B.Position = UDim2.new(0.12, 0, 0.15, 0)
            _B.Text = "HUB"; _B.Draggable = true
            Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
            _B.MouseButton1Click:Connect(function() _REGS[2]:Minimize() end)
        end

        _PC = _PC + 1
        if _PC > 10 then break end
    end
end

--// EXECUTE
task.spawn(function()
    pcall(_BOOT_VM)
end)
