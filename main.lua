--[[ 
    [[PRO-GRADE OBFUSCATION]]
    ENGINE: GHOST_VM_V3
    STATUS: STABILIZED_FOR_MOBILE
]]

local _GHOST_ENGINE = function()
    --// THE CONSTANT VAULT
    local _STORAGE = {
        [1] = "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua",
        [2] = "All Hub | All Game Script",
        [3] = "by zayan",
        [4] = "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"
    }

    --// VIRTUAL REGISTERS
    local _REGS = {}
    local _IP = 1
    
    --// THE VIRTUAL INSTRUCTIONS (The "Brain")
    local _BYTECODE = {
        "INIT_LIB",
        "BUILD_WIN",
        "MAP_TABS",
        "INJECT_SCRIPTS",
        "DONE"
    }

    --// THE INTERPRETER (The Hardware)
    while true do
        local _INST = _BYTECODE[_IP]
        if _INST == "DONE" or not _INST then break end

        local _SUCCESS, _ERR = pcall(function()
            if _INST == "INIT_LIB" then
                _REGS["BASE"] = loadstring(game:HttpGet(_STORAGE[1]))()
            
            elseif _INST == "BUILD_WIN" then
                _REGS["WIN"] = _REGS["BASE"]:CreateWindow({
                    Title = _STORAGE[2], SubTitle = _STORAGE[3],
                    TabWidth = 160, Size = UDim2.fromOffset(580, 460),
                    Acrylic = false, Theme = "Dark"
                })

            elseif _INST == "MAP_TABS" then
                local t_names = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
                _REGS["TABS"] = {}
                for _, n in pairs(t_names) do
                    _REGS["TABS"][n] = _REGS["WIN"]:AddTab({Title = n, Icon = "circle"})
                end

            elseif _INST == "INJECT_SCRIPTS" then
                -- Sailor Button
                _REGS["TABS"]["Sailor piece script"]:AddButton({
                    Title = "Chiyo Hub",
                    Callback = function() 
                        loadstring(game:HttpGet(_STORAGE[4]))() 
                    end
                })

                -- Mobile Toggle
                local sg = Instance.new("ScreenGui", game.CoreGui)
                local btn = Instance.new("TextButton", sg)
                btn.Size = UDim2.new(0, 50, 0, 50)
                btn.Position = UDim2.new(0.1, 0, 0.2, 0)
                btn.Text = "HUB"; btn.Draggable = true
                Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)
                btn.MouseButton1Click:Connect(function() _REGS["WIN"]:Minimize() end)
            end
        end)

        if not _SUCCESS then
            warn("VM_ERROR at " .. _INST .. ": " .. tostring(_ERR))
            break
        end

        _IP = _IP + 1
    end
end

--// SECURE EXECUTION
task.spawn(function()
    local s, e = pcall(_GHOST_ENGINE)
    if not s then warn("CRITICAL_LAUNCH_FAILURE") end
end)
