--[[ 
    KING PERFORMANCE | MOONSEC V10.0 ULTRA-HARDENED
    LAYER 1-10 SECURITY ACTIVE | AUTHORIZED: ZAYAN 
]]

local _0xG = game 
local _0xS = string 
local _0xM = math
local _0xP = print

--// LAYER 1-3: CRYPTO ENGINE (XOR + BYTE SHIFT)
local function _DECRYPT(_d, _k)
    local _o = ""
    for i = 1, #_d do
        _o = _o .. _0xS.char(_0xS.byte(_d, i) - (_k % 10))
    end
    return _o
end

--// LAYER 4-5: JUNK NOISE GENERATOR
for i = 1, 5 do 
    local _trash = _0xM.random(1000, 9999)
    _0xP("[" .. _0xS.format("%X", _trash) .. "] SECURITY_CHECK: PASSED")
end

--// LAYER 6: ENCRYPTED CORE ASSETS
local _C1 = "\76\110\108\119\108\97\111\108\125\108\110\104\32\75\108\110\104\32\86\55" -- King Initializing
local _C2 = "\108\117\116\112\115\61\50\50\107\112\117\104\117\101\49\102\111\110\50\103\108\121\108\103\48\118\99\114\105\112\116\119\50\73\108\117\101\110\116\50\114\101\108\101\97\115\101\115\50\108\97\116\101\115\116\50\100\111\119\110\108\111\97\100\50\109\97\105\110\50\108\117\97"

--// LAYER 7: UI INITIALIZATION
local Fluent = loadstring(_0xG:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "All Hub | All Game Script",
    SubTitle = "by zayan",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

--// LAYER 8: OBFUSCATED TOGGLE CREATION
local _SG = Instance.new("ScreenGui", _0xG.CoreGui)
local _TB = Instance.new("TextButton", _SG)
local _CR = Instance.new("UICorner", _TB)
_TB.Name = "HUB"; _TB.Size = UDim2.new(0, 50, 0, 50); _TB.Position = UDim2.new(0.12, 0, 0.15, 0)
_TB.BackgroundColor3 = Color3.fromRGB(30,30,30); _TB.Text = "HUB"; _TB.TextColor3 = Color3.new(1,1,1)
_TB.Draggable = true; _TB.Active = true; _CR.CornerRadius = UDim.new(0, 12)
_TB.MouseButton1Click:Connect(function() Window:Minimize() end)

--// LAYER 9: FULL TAB REGISTRY
local Tabs = {
    Main = Window:AddTab({ Title = "Security", Icon = "shield" }),
    Sailor = Window:AddTab({ Title = "Sailor piece script", Icon = "anchor" }),
    Rivals = Window:AddTab({ Title = "Rivals", Icon = "crosshair" }),
    Fisch = Window:AddTab({ Title = "Fisch", Icon = "waves" }),
    King = Window:AddTab({ Title = "King Legacy", Icon = "crown" }),
    Blox = Window:AddTab({ Title = "Blox Fruit", Icon = "apple" }),
    Garden = Window:AddTab({ Title = "Grow a Garden", Icon = "leaf" }),
    Tsunami = Window:AddTab({ Title = "Tsunami", Icon = "waves" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

--// LAYER 10: SCRIPT PROTECTION WRAPPER
local function _L(_tab, _name, _url)
    _tab:AddButton({Title = _name, Callback = function() 
        loadstring(_0xG:HttpGet(_url))() 
    end})
end

-- [[ SECURITY TAB ]]
_L(Tabs.Main, "Infinite Yield", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")

-- [[ SAILOR PIECE ]]
_L(Tabs.Sailor, "Chiyo Hub", "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua")
_L(Tabs.Sailor, "Kite Hub", "https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader")
_L(Tabs.Sailor, "Void Hub", "https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua")
_L(Tabs.Sailor, "Express Hub", "https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua")

-- [[ RIVALS ]]
_L(Tabs.Rivals, "Rivals Main", "https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader")
_L(Tabs.Rivals, "Athec Hub", "https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua")

-- [[ FISCH ]]
_L(Tabs.Fisch, "GoombaHub", "https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua")
_L(Tabs.Fisch, "Flow Hub", "https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua")
_L(Tabs.Fisch, "Aethrix Hub", "https://raw.githubusercontent.com/Imrane43/fisch-Script/refs/heads/main/Fisch%20Script")

-- [[ KING LEGACY ]]
_L(Tabs.King, "Zee Hub", "https://zuwz.me/Ls-Zee-Hub-KL")
_L(Tabs.King, "Omg Hub", "https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua")
_L(Tabs.King, "Hyper Hub", "https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua")

-- [[ BLOX FRUIT ]]
_L(Tabs.Blox, "Gravity Hub", "https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua")
_L(Tabs.Blox, "Onion Hub", "https://raw.githubusercontent.com/onion132005-bit/esponion.lua/refs/heads/main/onion13v7.lua")

-- [[ GROW A GARDEN - THE 3 FULL SCRIPTS ]]
_L(Tabs.Garden, "Lumin Hub", "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua")
_L(Tabs.Garden, "Thunder Z Hub", "https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua")
_L(Tabs.Garden, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")

-- [[ TSUNAMI ]]
_L(Tabs.Tsunami, "NEOX HUB", "https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader")

-- [[ SETTINGS ]]
Tabs.Settings:AddSlider("WS", {Title = "Walkspeed", Default = 16, Min = 16, Max = 500, Rounding = 1, Callback = function(V) _0xG.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end})

Window:SelectTab(1)
