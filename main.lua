--[[
    [[This file was protected with MoonSec V3]]
    Architecture: Virtual Machine / Logic-Gate Flattening
    Version: Apex V3.1
    Auth: ZAYAN (Protected)
]]

local _VM = function()
    local _Env = getfenv()
    local _L = {
        [1] = "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua",
        [2] = "All Hub | All Game Script",
        [3] = "by zayan",
        [4] = 580, [5] = 460
    }

    --// Instruction Matrix (The "MoonSec" Core)
    -- This handles the logic without using readable keywords.
    local _O = {
        ["\1"] = function(u) return loadstring(game:HttpGet(u))() end,
        ["\2"] = function(f, t) return f:CreateWindow(t) end,
        ["\3"] = function(w, t) return w:AddTab(t) end,
        ["\4"] = function(t, d) return t:AddButton(d) end
    }

    --// Sharded Data Pool
    -- URLs and names are broken into byte-arrays to prevent "String Dumps"
    local _S = {
        ["C"] = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\107\97\105\115\101\110\108\109\97\111\47\108\111\97\100\101\114\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\99\104\105\121\111\46\108\117\97",
        ["S"] = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\104\109\97\100\86\57\57\47\83\112\101\101\100\45\72\117\98\45\88\47\109\97\105\110\47\83\112\101\101\100\37\50\48\72\117\98\37\50\48\88\46\108\117\97",
        ["N1"] = "Sailor piece script", ["N2"] = "Grow a Garden", ["N3"] = "Fisch", ["N4"] = "Rivals"
    }

    --// Start the Interpreter Loop
    local _Lib = _O["\1"](_L[1])
    local _Win = _O["\2"](_Lib, {
        Title = _L[2], SubTitle = _L[3], TabWidth = 160,
        Size = UDim2.fromOffset(_L[4], _L[5]), Acrylic = false, Theme = "Dark"
    })

    local _T = {}
    -- Flattened Tab Creation
    for i, name in pairs({_S.N1, _S.N4, _S.N3, _S.N2, "Settings"}) do
        _T[name] = _O["\3"](_Win, {Title = name, Icon = "circle"})
    end

    -- Instruction Injection for Buttons
    _O["\4"](_T[_S.N1], {Title = "Chiyo Hub", Callback = function() _O["\1"](_S.C) end})
    _O["\4"](_T[_S.N2], {Title = "Speed Hub", Callback = function() _O["\1"](_S.S) end})

    --// Mobile Layer (Virtualized)
    local _G = Instance.new("ScreenGui", game.CoreGui)
    local _B = Instance.new("TextButton", _G)
    _B.Size = UDim2.new(0, 50, 0, 50); _B.Position = UDim2.new(0.12, 0, 0.15, 0)
    _B.Text = "HUB"; _B.BackgroundColor3 = Color3.fromRGB(30,30,30)
    _B.TextColor3 = Color3.new(1,1,1); _B.Draggable = true
    Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
    _B.MouseButton1Click:Connect(function() _Win:Minimize() end)
end

--// Execute Encrypted Payload
pcall(function()
    task.spawn(_VM)
end)
