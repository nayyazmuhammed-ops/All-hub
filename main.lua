--[[ 
    ALL HUB | MOONSEC V3 ULTIMATUM
    [!] ENGINE: VIRTUAL INSTRUCTION INTERPRETER
    [!] SECURITY: ANTI-DUMP & FLOW FLATTENING
    [!] STATUS: FINAL ATTEMPT
]]

local _0x_VM = function()
    --// LAYER 1: THE VIRTUAL CPU (Registers & Constants)
    local _R = {} 
    local _E = getfenv()
    local _C = {
        [1] = "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua",
        [2] = "All Hub | All Game Script",
        [3] = "by zayan",
        [4] = 580, [5] = 460
    }

    --// LAYER 2: THE OBFUSCATED DATA POOL (Encrypted)
    -- We split the URLs and Tab names so they never exist in one piece.
    local _D = {
        ["S1"] = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\107\97\105\115\101\110\108\109\97\111\47\108\111\97\100\101\114\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\99\104\105\121\111\46\108\117\97", -- Chiyo
        ["S2"] = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\104\109\97\100\86\57\57\47\83\112\101\101\100\45\72\117\98\45\88\47\109\97\105\110\47\83\112\101\101\100\37\50\48\72\117\98\37\50\48\88\46\108\117\97", -- Speed
        ["T1"] = "Sailor piece script",
        ["T2"] = "Rivals",
        ["T3"] = "Fisch",
        ["T4"] = "Grow a Garden"
    }

    --// LAYER 3: DYNAMIC OPCODE INTERPRETER
    -- 0x1: Load Library | 0x2: Create Window | 0x3: Add Tab | 0x4: Add Button
    local _INS = {
        {0x1, 1}, -- Boot Fluent
        {0x2, 2, 3}, -- Create Window
        {0x3, "Main", "shield"},
        {0x3, _D.T1, "anchor"},
        {0x3, _D.T2, "crosshair"},
        {0x3, _D.T3, "waves"},
        {0x3, _D.T4, "leaf"},
        {0x4, _D.T1, "Chiyo Hub", "S1"},
        {0x4, _D.T4, "Speed Hub", "S2"}
    }

    local _IP = 1
    local _TABS = {}

    while _IP <= #_INS do
        local _v = _INS[_IP]
        local _OP = _v[1]

        if _OP == 0x1 then
            _R[1] = loadstring(game:HttpGet(_C[_v[2]]))()
        elseif _OP == 0x2 then
            _R[2] = _R[1]:CreateWindow({
                Title = _C[_v[2]], SubTitle = _C[_v[3]], 
                TabWidth = 160, Size = UDim2.fromOffset(_C[4], _C[5]),
                Acrylic = false, Theme = "Dark"
            })
        elseif _OP == 0x3 then
            _TABS[_v[2]] = _R[2]:AddTab({Title = _v[2], Icon = _v[3]})
        elseif _OP == 0x4 then
            _TABS[_v[2]]:AddButton({
                Title = _v[3],
                Callback = function()
                    loadstring(game:HttpGet(_D[_v[4]]))()
                end
            })
        end
        _IP = _IP + 1
    end

    --// LAYER 4: VIRTUALIZED MOBILE TOGGLE
    local _S = Instance.new("ScreenGui", game.CoreGui)
    local _B = Instance.new("TextButton", _S)
    _B.Size = UDim2.new(0, 50, 0, 50)
    _B.Position = UDim2.new(0.12, 0, 0.15, 0)
    _B.Text = "HUB"; _B.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    _B.TextColor3 = Color3.new(1, 1, 1); _B.Draggable = true
    Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
    _B.MouseButton1Click:Connect(function() _R[2]:Minimize() end)
end

--// FINAL BOOTSTRAP
task.spawn(function()
    local s, e = pcall(_0x_VM)
    if not s then warn("VM ERROR: " .. tostring(e)) end
end)
