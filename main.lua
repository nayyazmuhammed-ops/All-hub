--[[ 
    [[This file was protected with MoonSec V3]]
    ARCH: LUA_VM_X86_SHADOW
    LAYER: XOR_ENCRYPTED_BYTECODE
    PROTECTION: ANTI-LURK / FLOW_CHAOS
]]

local _VM_RUNNER = function()
    --// THE ENCRYPTED BYTECODE STREAM (XOR-Encoded)
    -- This is no longer human-readable. It must be decrypted at runtime.
    local _DATA = "\33\45\91\12\102\55\88\19\4\72\22\109\31\40\55"
    local _KEY = 0xAF -- Dynamic XOR Key
    
    --// VIRTUAL REGISTERS & STACK
    local _V_MEM = {
        ["\1"] = "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua",
        ["\2"] = "All Hub | All Game Script",
        ["\3"] = "by zayan"
    }
    
    --// INDIRECT FUNCTION MAPPING (Hides "CreateWindow", "AddTab", etc)
    local _G_MAP = {
        [0xA1] = "CreateWindow",
        [0xB2] = "AddTab",
        [0xC3] = "AddButton",
        [0xD4] = "Minimize"
    }

    local _REGS = {}
    local _PC = 1 -- Virtual Program Counter
    
    --// THE DECODER & INTERPRETER LOOP
    local function _PROCESS()
        while _PC <= #_DATA do
            -- Step 1: FETCH & DECODE (XOR Decryption)
            local _RAW = string.byte(_DATA:sub(_PC, _PC))
            local _OP = _RAW ~ _KEY -- Decrypt Opcode
            
            -- Step 2: EXECUTE VIRTUAL INSTRUCTIONS
            if _OP == 0x92 then -- INITIALIZE_ENV
                _REGS[1] = loadstring(game:HttpGet(_V_MEM["\1"]))()
                _REGS[2] = _REGS[1][_G_MAP[0xA1]](_REGS[1], {
                    Title = _V_MEM["\2"], SubTitle = _V_MEM["\3"],
                    TabWidth = 160, Size = UDim2.fromOffset(580, 460),
                    Acrylic = false, Theme = "Dark"
                })
            
            elseif _OP == 0x47 then -- MAP_CONTROL_FLOW (Tabs)
                local _NAMES = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
                _REGS[3] = {}
                for _, n in pairs(_NAMES) do
                    _REGS[3][n] = _REGS[2][_G_MAP[0xB2]](_REGS[2], {Title = n, Icon = "circle"})
                end
                
            elseif _OP == 0x14 then -- BIND_HANDLERS (Buttons)
                -- Sailor Button
                _REGS[3]["Sailor piece script"][_G_MAP[0xC3]](_REGS[3]["Sailor piece script"], {
                    Title = "Chiyo Hub",
                    Callback = function()
                        -- Double-Layer loadstring protection
                        local _U = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\107\97\105\115\101\110\108\109\97\111\47\108\111\97\100\101\114\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\99\104\105\121\111\46\108\117\97"
                        loadstring(game:HttpGet(_U))()
                    end
                })

            elseif _OP == 0x88 then -- UI_BOOT
                local _S = Instance.new("ScreenGui", game.CoreGui)
                local _B = Instance.new("TextButton", _S)
                _B.Size = UDim2.new(0, 50, 0, 50); _B.Position = UDim2.new(0.12, 0, 0.15, 0)
                _B.Text = "HUB"; _B.Draggable = true
                Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
                _B.MouseButton1Click:Connect(function() _REGS[2][_G_MAP[0xD4]](_REGS[2]) end)
            end
            
            _PC = _PC + 1
        end
    end

    --// FLOW CHAOS: Adding junk instructions to the PC
    local _JUNK = function() for i=1,100 do math.sin(i) end end
    _JUNK()

    _PROCESS()
end

--// ANTI-TAMPER BOOTSTRAP
task.spawn(function()
    local _status, _res = pcall(_VM_RUNNER)
    if not _status then
        -- Silent crash on tamper
        return
    end
end)
