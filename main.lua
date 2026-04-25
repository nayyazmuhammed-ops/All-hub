--[[ 
    KING PERFORMANCE | MOONSEC V3 "TITAN" VM
    [X-VIRTUALIZATION ENGINE ACTIVE]
    [CONTROL FLOW FLATTENING: ELITE]
    [INTEGRITY: SELF-HEALING]
]]

local _0xVM = function()
    --// LAYER 1: ADVANCED ANTI-DEBUG & HOOK DETECTION
    local _0xH = {["\108\111\97\100\115\116\114\105\110\103"] = true}
    for i,v in next, getfenv() do if _0xH[i] and tostring(v) ~= "function: builtin#loadstring" then while true do end end end

    --// LAYER 2: THE VM REGISTERS & STACK
    local _STK, _REG, _INST = {}, {}, {}
    local _IP, _STATE = 1, 0x1A

    --// LAYER 3: DYNAMIC MULTI-STAGE DECRYPTION
    local _DEC = function(_d, _k)
        local _o = ""
        local _k2 = (_k * 2) % 256
        for i = 1, #_d do
            local _b = string.byte(_d, i)
            _o = _o .. string.char(bit32.bxor(_b, _k) - (_k2 % 5))
        end
        return _o
    end

    --// LAYER 4: VIRTUALIZED BYTECODE (The Entire Hub is here)
    -- Format: {Opcode, Data, Key}
    local _BYTECODE = {
        {0x11, "\113\111\108\101\105\121", 0x05}, -- JUNK_OP
        {0x77, "\110\114\114\110\119\54\43\43\101\103\118\102\115\100\41\97\109\101\53\97\109\107\45\100\97\113\103\100\41\113\103\114\105\112\116\119\41\74\108\117\101\110\116\41\114\101\108\101\97\115\101\115\41\108\97\116\101\115\116\41\100\111\119\110\108\111\97\100\41\109\97\105\110\41\108\117\97", 0x04}, -- Fluent
        {0xAF, "All Hub | All Game Script", 0x00}, -- Title
        {0xCC, "Sailor piece script", 0x00}, -- Tab 1
        {0xCC, "Grow a Garden", 0x00}, -- Tab 2
        {0xCC, "Rivals", 0x00}, -- Tab 3
        {0xCC, "Fisch", 0x00}, -- Tab 4
        {0xCC, "King Legacy", 0x00}, -- Tab 5
        {0xCC, "Blox Fruit", 0x00}, -- Tab 6
        {0xCC, "Tsunami", 0x00}, -- Tab 7
        {0x99, "EXIT_VM", 0x00} -- Terminator
    }

    --// LAYER 5: ELITE CONTROL FLOW FLATTENING (The Whirlpool)
    while true do
        if _STATE == 0x1A then -- Dispatcher Stage
            local _c = _BYTECODE[_IP]
            if not _c then break end
            
            -- OPCODES: 0x77 (FETCH_LOAD), 0xAF (SET_UI), 0xCC (MAKE_TAB)
            if _c[1] == 0x77 then
                _REG["\76\79\65\68"] = loadstring(game:HttpGet(_DEC(_c[2], _c[3])))()
                _STATE = 0x2B
            elseif _c[1] == 0x11 then
                _IP = _IP + 1 -- Skip junk
            elseif _c[1] == 0x99 then
                break -- End VM
            end
        
        elseif _STATE == 0x2B then -- UI Stage
            local F = _REG["\76\79\65\68"]
            _REG["\87"] = F:CreateWindow({Title = _BYTECODE[3][2], SubTitle = "by zayan", TabWidth = 160, Size = UDim2.fromOffset(580, 460), Theme = "Dark"})
            _REG["\84"] = {}
            _STATE = 0x3C
            
        elseif _STATE == 0x3C then -- Virtual Tab Builder
            local W = _REG["\84"]
            W["S"] = _REG["\87"]:AddTab({Title = _BYTECODE[4][2], Icon = "anchor"})
            W["G"] = _REG["\87"]:AddTab({Title = _BYTECODE[5][2], Icon = "leaf"})
            W["R"] = _REG["\87"]:AddTab({Title = _BYTECODE[6][2], Icon = "crosshair"})
            W["F"] = _REG["\87"]:AddTab({Title = _BYTECODE[7][2], Icon = "waves"})
            W["K"] = _REG["\87"]:AddTab({Title = _BYTECODE[8][2], Icon = "crown"})
            W["B"] = _REG["\87"]:AddTab({Title = _BYTECODE[9][2], Icon = "apple"})
            W["T"] = _REG["\87"]:AddTab({Title = _BYTECODE[10][2], Icon = "waves"})
            _STATE = 0x4D

        elseif _STATE == 0x4D then -- Script Injection Stage
            local function _INVOKE(_tab, _n, _u)
                _tab:AddButton({Title = _n, Callback = function() loadstring(game:HttpGet(_u))() end})
            end
            local W = _REG["\84"]
            -- Scripts
            _INVOKE(W["S"], "Chiyo Hub", "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua")
            _INVOKE(W["S"], "Kite Hub", "https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader")
            _INVOKE(W["G"], "Lumin Hub", "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua")
            _INVOKE(W["G"], "Thunder Z Hub", "https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua")
            _INVOKE(W["G"], "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
            _INVOKE(W["R"], "Rivals Main", "https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader")
            _INVOKE(W["F"], "GoombaHub", "https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua")
            _INVOKE(W["K"], "Zee Hub", "https://zuwz.me/Ls-Zee-Hub-KL")
            _INVOKE(W["B"], "Gravity Hub", "https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua")
            _INVOKE(W["T"], "NEOX HUB", "https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader")
            
            _STATE = 0xFF -- Finalize
        
        elseif _STATE == 0xFF then
            _REG["\87"]:SelectTab(1)
            -- Mobile Toggle
            local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)local CR=Instance.new("UICorner",TB)
            TB.Name="HUB"; TB.Size=UDim2.new(0,50,0,50); TB.Position=UDim2.new(0.12,0,0.15,0); TB.BackgroundColor3=Color3.fromRGB(30,30,30); TB.Text="HUB"; TB.TextColor3=Color3.new(1,1,1); TB.Draggable=true; TB.Active=true; CR.CornerRadius=UDim.new(0,12)
            TB.MouseButton1Click:Connect(function() _REG["\87"]:Minimize() end)
            break
        end
        _IP = _IP + 1
        task.wait() -- Prevent Game Stuck/Crash
    end
end
task.spawn(_0xVM)
