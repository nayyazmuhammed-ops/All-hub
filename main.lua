--[[ 
    KING PERFORMANCE | MOONSEC V3 "BLACK-HOLE"
    [!] TOTAL VIRTUALIZATION ACTIVE
    [!] NO-TRACE CALLBACK LOGIC
    [!] AUTH: ZAYAN 
]]

local _0xVOID = function()
    --// 1. ELITE ANTI-TAMPER (SELF-DESTRUCT LOGIC)
    local _0xERR = function() while true do end end
    local _0xCHK = {tostring, getfenv, loadstring, game.HttpGet}
    for i, v in next, _0xCHK do 
        if tostring(v):find("\67\111\110\116\101\120\116") then _0xERR() end 
    end

    --// 2. MULTI-LAYERED DECRYPTOR (LCG + REVERSE OFFSET)
    local _0xDEC = function(_d, _s)
        local _r, _seed = "", _s
        for i = 1, #_d do
            _seed = (_seed * 1664525 + 1013904223) % 4294967296
            _r = _r .. string.char(bit32.bxor(string.byte(_d, i), bit32.band(bit32.rshift(_seed, 24), 0xFF)))
        end
        return _r
    end

    --// 3. THE TITAN STACK & REGISTER
    local _VM_STACK = {}
    local _VM_REGS = { ["\85\82\76"] = _0xDEC("\231\156\32\255\212\3\146\214\227\249\242\211\142\196\136\152\141\198\176\215\209\154\186\129\138\230\254\240\212\148\196\139\157\142\199\176\215\207\147\185\145\159\224\131\138\234\249\251\223\158", 0x7A) }
    
    --// 4. THE VIRTUALIZED INSTRUCTION SET (The "Black Box")
    -- Format: {Opcode, Arg1, Arg2, Arg3}
    -- Opcodes: 0x1 (BOOT), 0x2 (TAB), 0x3 (BUTTON_V), 0x4 (JUMP)
    local _BYTECODE = {
        {0x1, 0xAF1}, -- OP_BOOT_CORE (Initializes Fluent)
        {0x2, "Sailor piece script", "anchor"}, -- OP_MAKE_TAB_S
        {0x3, "Sailor piece script", "Chiyo Hub", "\212\148\196\139\157\142\199\176\215\207\147\185\145\159\224\131\138\234\249\251\223\158\187\131\156\147\205\180\215\212\155\187\129\137\231\248\242\210\150\200\128\148\146\199\182\222\203\157\176"},
        {0x2, "Grow a Garden", "leaf"},
        {0x3, "Grow a Garden", "Lumin Hub", "\212\148\196\139\157\142\199\176\215\207\147\185\145\159\224\131\138\234\249\251\223\158\187\131\156\147\205\180\215\212\155\187\129\137\231\248\242\210\150\200\128\148"},
        {0x3, "Grow a Garden", "Thunder Z", "\212\148\196\139\157\142\199\176\215\207\147\185\145\159\224\131\138\234\249\251\223\158\187\131\156\147\205\180\215\212\155\187\129\137\231\248\242\210\150"},
        {0x3, "Grow a Garden", "Speed Hub X", "\212\148\196\139\157\142\199\176\215\207\147\185\145\159\224\131\138\234\249\251\223\158\187\131\156\147\205\180\215\212\155\187\129\137"},
        {0x2, "Rivals", "crosshair"},
        {0x3, "Rivals", "Rivals Main", "\212\148\196\139\157\142\199\176\215\207\147\185\145\159\224\131\138\234\249\251\223\158\187\131\156\147\205\180\215\212\155\187\129\137\231\248"},
        {0x5, 0x1} -- OP_FINALIZE
    }

    --// 5. THE TITAN INTERPRETER (TOTAL VIRTUALIZATION)
    local _IP = 1
    while _BYTECODE[_IP] do
        local _INST = _BYTECODE[_IP]
        local _OP = _INST[1]

        if _OP == 0x1 then -- [VM_BOOT]
            local _F = loadstring(game:HttpGet(_VM_REGS["\85\82\76"]))()
            _VM_REGS["\87"] = _F:CreateWindow({Title = "All Hub | All Game Script", SubTitle = "by zayan", Theme = "Dark"})
            _VM_REGS["\84"] = {}
        
        elseif _OP == 0x2 then -- [VM_TAB]
            local _name = _INST[2]
            _VM_REGS["\84"][_name] = _VM_REGS["\87"]:AddTab({Title = _name, Icon = _INST[3]})
        
        elseif _OP == 0x3 then -- [VM_BUTTON_PROTECTED]
            local _tab = _VM_REGS["\84"][_INST[2]]
            _tab:AddButton({Title = _INST[3], Callback = function()
                -- Callback logic is virtualized too
                local _u = _0xDEC(_INST[4], 0xAF)
                loadstring(game:HttpGet(_u))()
            end})

        elseif _OP == 0x5 then -- [VM_FINALIZE]
            _VM_REGS["\87"]:SelectTab(1)
            -- Mobile Toggle (Encapsulated)
            local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)
            TB.Name="HUB"; TB.Size=UDim2.new(0, 50, 0, 50); TB.Position=UDim2.new(0.12, 0, 0.15, 0)
            TB.BackgroundColor3=Color3.fromRGB(30,30,30); TB.Text="HUB"; TB.TextColor3=Color3.new(1,1,1)
            Instance.new("UICorner", TB).CornerRadius = UDim.new(0, 12)
            TB.Draggable = true; TB.Active = true; TB.MouseButton1Click:Connect(function() _VM_REGS["\87"]:Minimize() end)
        end
        
        _IP = _IP + 1
    end
end

--// EXECUTION BOUNDARY
task.spawn(function()
    local success, err = pcall(_0xVOID)
    if not success then warn("VM_CRITICAL_FAILURE: Integrity Compromised") end
end)
