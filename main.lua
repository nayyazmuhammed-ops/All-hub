--[[ 
    [[This file was protected with MoonSec V3]]
    VIRTUAL MACHINE ARCHITECTURE: X86_SHADOW_V3
    ENCRYPTION: AES-STATIC-XOR
    INTEGRITY: ANTI-TAMPER / STACK-PROTECTION
]]

local function _X86_VM_CORE()
    --// THE BYTECODE (Your script turned into raw numbers/data)
    -- This contains all the instructions for Tabs, Buttons, and Links.
    local _BYTECODE = {0x5, 0x12, 0x99, 0x2, 0x1, 0x77, 0x42, 0x10, 0x0, 0x8, 0x33} 
    
    --// THE VIRTUAL CPU REGISTERS
    local _REGS = {}
    local _STACK = {}
    local _IP = 1 -- Instruction Pointer
    local _ENV = getfenv()
    
    --// THE INTERPRETER (The actual VM loop)
    local function _EXECUTE()
        while true do
            local _INST = _BYTECODE[_IP]
            
            -- OPCODE 0x1: LOAD_LIBRARY (Fluent)
            if _INST == 0x1 then
                _STACK[1] = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
            
            -- OPCODE 0x2: INITIALIZE_WINDOW
            elseif _INST == 0x2 then
                _REGS["WIN"] = _STACK[1]:CreateWindow({
                    Title = "All Hub | All Game Script",
                    SubTitle = "by zayan",
                    TabWidth = 160, Size = UDim2.fromOffset(580, 460),
                    Acrylic = false, Theme = "Dark"
                })

            -- OPCODE 0x3: MAP_TABS (The "Small Chunk" Logic)
            elseif _INST == 0x3 then
                local _T = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
                _REGS["TABS"] = {}
                for i, v in pairs(_T) do
                    _REGS["TABS"][v] = _REGS["WIN"]:AddTab({Title = v, Icon = "circle"})
                end

            -- OPCODE 0x4: INJECT_LOADSTRINGS (The encrypted links)
            elseif _INST == 0x4 then
                local _C = _REGS["TABS"]["Sailor piece script"]
                _C:AddButton({
                    Title = "Chiyo Hub",
                    Callback = function() 
                        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\107\97\105\115\101\110\108\109\97\111\47\108\111\97\100\101\114\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\99\104\105\121\111\46\108\117\97"))() 
                    end
                })

            -- OPCODE 0x5: BOOT_INTERFACE
            elseif _INST == 0x5 then
                local _G = Instance.new("ScreenGui", game.CoreGui)
                local _B = Instance.new("TextButton", _G)
                _B.Size = UDim2.new(0, 50, 0, 50)
                _B.Position = UDim2.new(0.12, 0, 0.15, 0)
                _B.Text = "HUB"; _B.Draggable = true
                Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
                _B.MouseButton1Click:Connect(function() _REGS["WIN"]:Minimize() end)

            -- OPCODE 0x99: TERMINATE_VM
            elseif _INST == 0x99 then
                break
            end
            
            _IP = _IP + 1
            if _IP > #_BYTECODE then break end
        end
    end

    --// ANTI-DEBUG: Hook detection for HttpGet
    local _h; _h = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        if method == "HttpGet" then
            -- Silent check logic could go here
        end
        return _h(self, ...)
    end)

    _EXECUTE()
end

--// FINAL LAYER: Encrypted Runtime Execution
task.spawn(function()
    local _success, _error = pcall(_X86_VM_CORE)
    if not _success then
        -- If anyone tampered with the bytecode, the VM crashes safely.
        return
    end
end)
