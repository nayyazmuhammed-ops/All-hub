--[[ 
    KING PERFORMANCE | MOONSEC V3 TITAN-ULTRA
    [!] FULL VIRTUALIZATION PROTOCOL
    [!] SPAGHETTI CONTROL FLOW ENABLED
    [!] AUTH: ZAYAN | NO-TRACE ACTIVE
]]

local _0xVOID = function()
    --// 1. ELITE RUNTIME INTEGRITY
    local _0xERR = function() while true do end end
    if not game or not (type(loadstring) == "function") then _0xERR() end

    --// 2. LAYERED DYNAMIC DECRYPTOR
    local _0xDEC = function(_d, _s)
        local _r, _seed = "", _s
        for i = 1, #_d do
            _seed = (bit32.bxor(_seed, 0xAF) * 1664525 + 1013904223) % 4294967296
            _r = _r .. string.char(bit32.bxor(string.byte(_d, i), bit32.band(bit32.rshift(_seed, 24), 0xFF)))
        end
        return _r
    end

    --// 3. INTERNAL API MASK (Indirect Calls)
    local _API = {
        [0xA1] = "CreateWindow", [0xB2] = "AddTab", [0xC3] = "AddButton", [0xD4] = "Minimize"
    }

    --// 4. TITAN VM REGISTERS
    local _REG = { [0x0] = 1, [0x1] = nil, [0x2] = {} }
    
    --// 5. SCRAMBLED BYTECODE (Instructions: OP, P1, P2, P3)
    -- Opcodes: 0x11 (GET_URL), 0x22 (CALL_API), 0x33 (JUMP), 0x44 (BRANCH), 0x99 (HALT)
    local _BC = {
        [1] = {0x11, "\242\133\37\135\226\214\140\218\130\131\233\224\235\159\199\144\179\170\166\139\201\176\204\218\201\135\189\152\141\198\176\215\209\154\186\129\138\230\254\240\212\148\196\139\157\142\199\176\215\207", 0x7A}, -- Fetch Loader
        [2] = {0x22, 0xA1, "All Hub | All Game Script", "by zayan"}, -- Create Window
        [3] = {0x33, 6}, -- FAKE JUMP (Anti-Trace)
        [4] = {0x99}, -- DEAD PATH
        [5] = {0x11, "Junk Data", 0x0}, -- Junk
        [6] = {0x22, 0xB2, "Sailor piece script", "anchor"}, -- Make Tab 1
        [7] = {0x22, 0xB2, "Grow a Garden", "leaf"}, -- Make Tab 2
        [8] = {0x44, 10}, -- Conditional Branch to Logic
        [9] = {0x33, 1}, -- Loopback Junk
        [10] = {0x22, 0xC3, "Sailor piece script", "Chiyo Hub"}, -- Add Button
        [11] = {0x22, 0xC3, "Grow a Garden", "Lumin Hub"},
        [12] = {0x22, 0xC3, "Grow a Garden", "Thunder Z"},
        [13] = {0x22, 0xC3, "Grow a Garden", "Speed Hub X"},
        [14] = {0x99} -- Halt
    }

    --// 6. THE TITAN INTERPRETER (SPAGHETTI EXECUTION)
    local _IP = 1
    while true do
        local _I = _BC[_IP]
        local _OP = _I[1]

        if _OP == 0x11 then -- [FETCH_URL_VIRTUAL]
            _REG[0x1] = loadstring(game:HttpGet(_0xDEC(_I[2], _I[3])))()
        
        elseif _OP == 0x22 then -- [INDIRECT_API_CALL]
            local _method = _API[_I[2]]
            if _method == "CreateWindow" then
                _REG[0x3] = _REG[0x1]:CreateWindow({Title = _I[3], SubTitle = _I[4], Theme = "Dark"})
            elseif _method == "AddTab" then
                _REG[0x2][_I[3]] = _REG[0x3]:AddTab({Title = _I[3], Icon = _I[4]})
            elseif _method == "AddButton" then
                local _tab = _REG[0x2][_I[3]]
                _tab:AddButton({Title = _I[4], Callback = function()
                    -- Encrypted Callback Logic
                    local _u = ""
                    if _I[4] == "Chiyo Hub" then _u = "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"
                    elseif _I[4] == "Lumin Hub" then _u = "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua"
                    elseif _I[4] == "Thunder Z" then _u = "https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua"
                    elseif _I[4] == "Speed Hub X" then _u = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"
                    end
                    loadstring(game:HttpGet(_u))()
                end})
            end

        elseif _OP == 0x33 then -- [JUMP]
            _IP = _I[2] - 1 -- Adjust for increment
            
        elseif _OP == 0x44 then -- [BRANCH]
            if _REG[0x3] then _IP = _I[2] - 1 end

        elseif _OP == 0x99 then -- [HALT]
            break
        end

        _IP = _IP + 1
        if _IP > #_BC then break end
    end

    -- MOBILE TOGGLE
    local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)
    TB.Name="HUB"; TB.Size=UDim2.new(0, 50, 0, 50); TB.Position=UDim2.new(0.12, 0, 0.15, 0)
    TB.BackgroundColor3=Color3.fromRGB(30,30,30); TB.Text="HUB"; TB.TextColor3=Color3.new(1,1,1)
    Instance.new("UICorner", TB).CornerRadius = UDim.new(0, 12)
    TB.Draggable = true; TB.Active = true; TB.MouseButton1Click:Connect(function() _REG[0x3]:Minimize() end)
end

--// FINAL WRAPPER
task.spawn(function()
    local success, err = pcall(_0xVOID)
    if not success then warn("BOOT_ERROR") end
end)
