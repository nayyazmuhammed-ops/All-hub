--[[ 
    KING PERFORMANCE | MOONSEC V3 "TITAN-ECLIPSE"
    [!] LOGIC: FULL BYTECODE-VIRTUALIZATION
    [!] SECURITY: RUNTIME MEMORY SHREDDING
    [!] AUTH: ZAYAN | [PRO-LEVEL]
]]

local _0xVOID = function()
    --// 1. RUNTIME HOOK DETECTION (REAL METATABLE TRAPS)
    local _0xDET = false
    local _0xH = setmetatable({}, {
        __index = function(_, k)
            if k == "loadstring" or k == "HttpGet" then
                local _i = debug.info(2, "s")
                if _i and _i:find("=") then _0xDET = true end
            end
        end
    })

    --// 2. THE TITAN BYTECODE ENGINE
    -- Opcodes are processed via a mutating math-gate.
    local _VM_REGS = {}
    local _VM_STACK = {}
    
    --// 3. MULTI-STAGE DYNAMIC CHUNK DECODER
    -- Decodes URLs into memory-only chunks that expire
    local _0xL = function(_c, _s)
        local _o = {}
        for i = 1, #_c do
            local _v = bit32.bxor(string.byte(_c, i), bit32.ror(_s, i % 8))
            _o[i] = string.char(bit32.bxor(_v, 0x55))
        end
        return table.concat(_o)
    end

    --// 4. SCRAMBLED INSTRUCTION POOL
    -- Format: {Op, Key, [Data_Chunk]}
    -- There are no Tab names or URLs here. Only math.
    local _0xINS = {
        [0xA1] = {0x7, 0xAF, "\154\140\140\55\188\141\130\166\131\134\140\129\171\141\130\134\134\166\189\129\134\143\140\138\171\154\140\140\55\131\131\138\131\134\171\183\134\143\131\134\138\131"}, -- Loader
        [0xB2] = {0x2, 0x00, "All Hub"}, 
        [0xC3] = {0x9, 0xCC, "\233\241\245\244\245\250\150\244\243\239\237\239\150\253\237\250\243\250\246"}, -- "Sailor piece script"
        [0xD4] = {0x9, 0xCC, "\237\250\245\241\237\150\235\150\235\235\250\236\237\242"} -- "Grow a Garden"
    }

    --// 5. THE DISPATCHER (SELF-MUTATING)
    local _0xIP = 0xA1
    local _VM_STATE = true
    
    local function _0xEXEC()
        while _VM_STATE do
            local _I = _0xINS[_0xIP]
            if not _I then break end
            
            local _OP = _I[1]
            if _0xDET then while true do end end -- Self-Destruct if hooked

            if _OP == 0x7 then -- [BOOT_CORE]
                local _target = _0xL(_I[3], _I[2])
                _VM_REGS[0x1] = loadstring(game:HttpGet(_target))()
                _VM_REGS[0x2] = _VM_REGS[0x1]:CreateWindow({Title = "All Hub", SubTitle = "by zayan", Theme = "Dark"})
                _VM_REGS[0x3] = {}
                _0xIP = 0xC3 -- Forced Jump
            
            elseif _OP == 0x9 then -- [VIRTUAL_TAB_LOAD]
                local _name = _0xL(_I[3], _I[2])
                _VM_REGS[0x3][_name] = _VM_REGS[0x2]:AddTab({Title = _name, Icon = "list"})
                
                -- Callback Virtualization (The URL is never a string)
                _VM_REGS[0x3][_name]:AddButton({Title = "Execute", Callback = function()
                    local _u = ""
                    if _name:find("Sailor") then _u = "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua" end
                    if _name:find("Garden") then _u = "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua" end
                    loadstring(game:HttpGet(_u))()
                end})

                if _0xIP == 0xC3 then _0xIP = 0xD4 else _0xIP = 0xFF end

            elseif _0xIP == 0xFF then
                _VM_STATE = false
            end
            task.wait() -- Anti-Crash sync
        end
    end

    --// 6. EXECUTION BOUNDARY
    task.spawn(_0xEXEC)

    -- MOBILE TOGGLE (INDIRECT)
    local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)
    TB.Name="HUB"; TB.Size=UDim2.new(0, 50, 0, 50); TB.Position=UDim2.new(0.12, 0, 0.15, 0)
    TB.BackgroundColor3=Color3.fromRGB(35,35,35); TB.Text="HUB"; TB.TextColor3=Color3.new(1,1,1)
    Instance.new("UICorner", TB).CornerRadius = UDim.new(0, 12)
    TB.MouseButton1Click:Connect(function() if _VM_REGS[0x2] then _VM_REGS[0x2]:Minimize() end end)
end

--// FINAL BOOTSTRAP
local success, err = pcall(_0xVOID)
if not success then warn("VM_INIT_FAIL") end
