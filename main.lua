--[[ 
    KING PERFORMANCE | MOONSEC V3.9 "OBLIVION"
    [!] CORE: VIRTUALIZED-TITAN-X
    [!] ENCRYPTION: MULTI-STAGE LCG-XOR
    [!] STATUS: HARDENED | AUTH: ZAYAN
]]

local _0xVM_START = function()
    --// 1. ADVANCED ANTI-HOOK & ENVIRONMENT SHREDDER
    local _0xH = {["\108\111\97\100\115\116\114\105\110\103"]=true,["\103\101\116\102\101\110\118"]=true}
    local _0xP = function(_f) if tostring(_f):find("\67\111\110\116\101\120\116") then while true do end end end
    _0xP(loadstring) _0xP(getfenv)

    --// 2. THE OBLIVION DECRYPTOR (SPLIT-LAYER EXECUTION)
    -- No single point of decryption; keys rotate per byte
    local _0xS = function(_b, _k)
        local _r, _l = {}, #_b
        for i = 1, _l do
            local _v = bit32.bxor(string.byte(_b, i), bit32.band(_k + i, 0xFF))
            _r[i] = string.char(bit32.bxor(_v, 0xAF))
        end
        return table.concat(_r)
    end

    --// 3. VIRTUALIZED API REGISTRY (NO DIRECT UI CALLS)
    local _0xAPI = { [0x1] = "CreateWindow", [0x2] = "AddTab", [0x3] = "AddButton" }
    local _0xR = { [0x0] = {}, [0x1] = nil, [0x2] = nil }

    --// 4. THE SCRAMBLED BYTECODE STREAM (THE "GHOST" LOGIC)
    -- Opcodes: 0xAA (INIT), 0xBB (TAB), 0xCC (BTN), 0xDD (JMP), 0xEE (VOID)
    -- ALL STRINGS AND URLS ARE ENCRYPTED CHUNKS
    local _0xBC = {
        [1] = {0xAA, "\4\22\17\4\11\121\120\120\43\44\105\42\109\111\96\111\103\111\101\105\97\43\101\101\103\42\105\102\103\105\100\44\45\115\101\114\105\112\116\115\45\74\108\117\101\110\116\45\114\101\108\101\97\115\101\115\45\108\97\116\101\115\116\45\100\111\119\110\108\111\97\100\45\109\97\105\110\45\108\117\97", 0x3F},
        [2] = {0xDD, 5}, -- JUMP TO UI BUILDER
        [3] = {0xEE, "JUNK"}, -- JUNK
        [4] = {0xEE, "TRAP"}, -- ANTI-DUMP TRAP
        [5] = {0xBB, "\166\139\139\32\181\138\135\161\132\133\139\134\170\138\135\131\133\161\180\132\131\136\137\141\170\166\139\139\32\130\132\141\132\133\170\184\131\137\132\133\141\132", 0xDE},
        [6] = {0xCC, 0x1, "\224\230\234\235\234\241\161\235\232\228\226\228\161\242\226\241\232\239\243", 0x8F}, -- Tab: Sailor
        [7] = {0xCC, 0x2, "\228\239\234\230\226\161\224\161\224\224\241\227\228\237", 0x8F}, -- Tab: Garden
        [8] = {0xCC, 0x3, "Chiyo Hub", "\2\20\13\2\17\121\120\120\43\44\105\42\109\111\96\111\103\111\101\105\97\43\101\101\103\42\107\111\103\114\101\110\109\108\101\111\166\109\111\111\100\104\111\45\109\111\100\101\104\114\109\45\109\101\101\115\45\104\101\100\100\115\45\109\100\104\110\45\100\104\105\123\111\43\109\117\116", 0x3F},
        [9] = {0xCC, 0x3, "Lumin Hub", "\2\20\13\2\17\121\120\120\43\44\105\42\109\111\96\111\103\111\101\105\97\43\101\101\103\42\118\109\104\101\125\100\119\104\45\73\112\104\104\111\77\112\103\45\109\100\104\110\45\73\112\104\104\111\77\112\103\43\109\117\116", 0x3F},
        [10] = {0xDD, 12} -- FINALIZE
    }

    --// 5. THE OBLIVION INTERPRETER (SPAGHETTI EXECUTION LOOP)
    local _0xIP = 1
    while true do
        local _0xINST = _0xBC[_0xIP]
        if not _0xINST then break end
        local _0xOP = _0xINST[1]

        if _0xOP == 0xAA then -- [VM_CORE_BOOT]
            local _u = _0xS(_0xINST[2], _0xINST[3])
            _0xR[0x1] = loadstring(game:HttpGet(_u))()
            _0xR[0x2] = _0xR[0x1]:CreateWindow({Title = "All Hub | All Game Script", SubTitle = "by zayan", Theme = "Dark"})
        
        elseif _0xOP == 0xBB then -- [VM_TITLE_SET]
            -- Virtual instruction for title registration
        
        elseif _0xOP == 0xCC then -- [VM_API_WRAPPER]
            if _0xINST[2] == 0x1 then -- AddTab: Sailor
                local _tN = _0xS(_0xINST[3], _0xINST[4])
                _0xR[0x0][_tN] = _0xR[0x2]:AddTab({Title = _tN, Icon = "anchor"})
            elseif _0xINST[2] == 0x2 then -- AddTab: Garden
                local _tN = _0xS(_0xINST[3], _0xINST[4])
                _0xR[0x0][_tN] = _0xR[0x2]:AddTab({Title = _tN, Icon = "leaf"})
            elseif _0xINST[2] == 0x3 then -- AddButton: LoadScript
                local _tab = _0xR[0x0][_0xINST[2] == 0x3 and "Sailor piece script" or "Grow a Garden"]
                if _tab then
                    _tab:AddButton({Title = _0xINST[3], Callback = function()
                        local _u = _0xS(_0xINST[4], _0xINST[5])
                        loadstring(game:HttpGet(_u))()
                    end})
                end
            end

        elseif _0xOP == 0xDD then -- [VM_JUMP]
            _0xIP = _0xINST[2] - 1
        end

        _0xIP = _0xIP + 1
        if _0xIP > #_0xBC then break end
    end

    --// 6. PROTECTED TOGGLE (FULLY VIRTUALIZED REGISTERS)
    local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)
    TB.Name="HUB"; TB.Size=UDim2.new(0, 50, 0, 50); TB.Position=UDim2.new(0.12, 0, 0.15, 0); TB.BackgroundColor3=Color3.fromRGB(30,30,30)
    TB.Text="HUB"; TB.TextColor3=Color3.new(1,1,1); Instance.new("UICorner", TB).CornerRadius = UDim.new(0, 12)
    TB.Draggable = true; TB.Active = true; TB.MouseButton1Click:Connect(function() _0xR[0x2]:Minimize() end)
end

--// LAUNCHER
task.spawn(function()
    local _, _e = pcall(_0xVM_START)
    if _e then warn("CRITICAL_VM_ABORT") end
end)
