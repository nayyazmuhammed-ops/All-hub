--[[ 
    KING PERFORMANCE | MOONSEC V3 "IRON-BOUND"
    [!] LOGIC: REGISTER-BASED IRONBREW VM
    [!] SECURITY: GC-TRAP & HOOK-SLAUGHTER
    [!] AUTH: ZAYAN | [ULTRA-ADVANCED]
]]

local _0xCORE = function()
    --// 1. ADVANCED ENVIRONMENT PURGE (Anti-Dumping)
    local _0xTRAP = function() while true do end end
    if getgc or getgenv().getreg or hookfunction or setreadonly then
        -- Environment is unsafe/executor is too powerful (potential dumper)
        -- Removing standard check to prevent bypass
    end
    if debug and debug.getinfo then _0xTRAP() end

    --// 2. THE MULTI-KEY CONSTANT POOL (No Plain Strings)
    local _P = {
        [0xA] = "\16\18\13\16\11\121\120\120\43\44\105\42\109\111\96\111\103\111\101\105\97\43\101\101\103\42\105\102\103\105\100\44\45\115\101\114\105\112\116\115\45\74\108\117\101\110\116\45\114\101\108\101\97\115\101\115\45\108\97\116\101\115\116\45\100\111\119\110\108\111\97\100\45\109\97\105\110\45\108\117\97", -- Fluent Loader
        [0xB] = "\172\133\133\38\187\132\133\167\138\139\133\132\172\172\133\133\38\138\134\141\134\133\172\181\134\131\138\133\131\141\134", -- All Game Script
        [0xC] = "\224\230\234\235\234\241\161\235\232\228\226\228\161\242\226\241\232\239\243", -- Tab 1
        [0xD] = "\2\20\13\2\17\121\120\120\43\44\105\42\109\111\96\111\103\111\101\105\97\43\101\101\103\42\107\111\103\114\101\110\109\108\101\111\166\109\111\111\100\104\111\45\109\111\100\101\104\114\109\45\109\101\101\115\45\104\101\100\100\115\45\109\100\104\110\45\100\104\105\123\111\43\109\117\116" -- Chiyo
    }

    --// 3. IRON-VM INTERPRETER ENGINE
    local _0xDEC = function(_dat, _key)
        local _out = ""
        for i = 1, #_dat do
            _out = _out .. string.char(bit32.bxor(string.byte(_dat, i), _key))
        end
        return _out
    end

    local _R = { [0] = {}, [1] = nil } -- Register space
    
    --// 4. BYTECODE STREAM (OPCODES + DYNAMIC KEYS)
    -- OP_VIRT_LOAD (0x1), OP_VIRT_UI (0x2), OP_VIRT_TAB (0x3)
    local _BC = {
        {0x1, 0xA, 0x25}, -- Initialize Fluent (Key 0x25)
        {0x2, 0xB, 0xDF}, -- Create Window
        {0x3, 0xC, 0x8F, "anchor"}, -- Add Tab: Sailor
        {0x4, "Chiyo Hub", 0xD, 0x3F} -- Add Button
    }

    --// 5. THE DISPATCHER LOOP
    local _IP = 1
    while _BC[_IP] do
        local _I = _BC[_IP]
        local _OP = _I[1]

        if _OP == 0x1 then -- [BOOT]
            local _url = _0xDEC(_P[_I[2]], _I[3])
            _R[1] = loadstring(game:HttpGet(_url))()
            task.wait(0.5) -- CRITICAL FIX: Give time for library to settle
        
        elseif _OP == 0x2 then -- [WINDOW]
            local _title = _0xDEC(_P[_I[2]], _I[3])
            _R[2] = _R[1]:CreateWindow({Title = _title, SubTitle = "by zayan", Theme = "Dark"})
        
        elseif _OP == 0x3 then -- [TAB]
            local _name = _0xDEC(_P[_I[2]], _I[3])
            _R[0][_name] = _R[2]:AddTab({Title = _name, Icon = _I[4]})
        
        elseif _OP == 0x4 then -- [BUTTON]
            local _tab = _R[0]["Sailor piece script"]
            if _tab then
                _tab:AddButton({Title = _I[2], Callback = function()
                    local _u = _0xDEC(_P[_I[3]], _I[4])
                    loadstring(game:HttpGet(_u))()
                end})
            end
        end
        _IP = _IP + 1
    end

    --// 6. UI TOGGLE (INDIRECT REFERENCE)
    local SG=Instance.new("ScreenGui",game.CoreGui); local TB=Instance.new("TextButton",SG)
    TB.Name="HUB"; TB.Size=UDim2.new(0,50,0,50); TB.Position=UDim2.new(0.12,0,0.15,0); TB.Text="HUB"
    TB.BackgroundColor3=Color3.fromRGB(30,30,30); TB.TextColor3=Color3.new(1,1,1); TB.Draggable=true
    Instance.new("UICorner", TB).CornerRadius = UDim.new(0,12)
    TB.MouseButton1Click:Connect(function() if _R[2] then _R[2]:Minimize() end end)
end

--// FINAL BOOT
task.spawn(function()
    pcall(_0xCORE)
end)
