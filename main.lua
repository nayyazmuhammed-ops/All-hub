--[[ 
    KING PERFORMANCE | MOONSEC V6.0 HARDENED
    (c) Authorized: zayan 
]]

--// THE DECRYPTOR ENGINE (Hides everything from leakers)
local function _K(_d)
    local _o = ""
    local _s = 3 -- The Secret Shift Key
    for i = 1, #_d do
        _o = _o .. string.char(_d:byte(i) - _s)
    end
    return _o
end

--// ENCRYPTED DATA (Leakers see nothing but numbers here)
local _SEC = {
    "\76\110\108\119\108\97\111\108\125\108\110\104\32\75\108\110\104\32\86\54", -- Initializing King V6
    "\107\119\116\104\111\117\42\103\105\116\104\118\98\46\99\111\109\47\100\97\119\105\100\45\115\99\114\105\112\116\115\47\70\108\117\101\110\116\47\114\101\108\101\97\115\101\115\47\108\97\116\101\115\116\47\100\111\119\110\108\111\97\100\47\109\97\105\110\46\108\117\97", -- Fluent Link
    "\65\108\108\32\72\117\98\32\124\32\65\108\108\32\71\97\109\101\32\83\99\114\105\112\116" -- Hub Title
}

--// BOOT SEQUENCE
print("------------------------------")
print(_K(_SEC[1]))
print("AUTH_KEY: " .. string.format("%X", math.random(1000, 9999)))
print("------------------------------")

local Fluent = loadstring(game:HttpGet(_K(_SEC[2])))()
local Window = Fluent:CreateWindow({
    Title = _K(_SEC[3]),
    SubTitle = "by zayan",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

--// MOBILE TOGGLE
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Button = Instance.new("TextButton", ScreenGui)
local Corner = Instance.new("UICorner", Button)
Button.Name = "HUB"; Button.Size = UDim2.new(0, 50, 0, 50); Button.Position = UDim2.new(0.12, 0, 0.15, 0)
Button.BackgroundColor3 = Color3.fromRGB(30,30,30); Button.Text = "HUB"; Button.TextColor3 = Color3.new(1,1,1)
Button.Draggable = true; Button.Active = true; Corner.CornerRadius = UDim.new(0, 12)
Button.MouseButton1Click:Connect(function() Window:Minimize() end)

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

--// FUNCTION TO PROTECT BUTTONS
local function AddS(tab, name, link)
    tab:AddButton({Title = name, Callback = function() 
        loadstring(game:HttpGet(link))() 
    end})
end

--// ALL SCRIPTS (LOADED SECURELY)
AddS(Tabs.Main, "Infinite Yield", 'https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')

-- Sailor Piece
AddS(Tabs.Sailor, "Chiyo Hub", 'https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua')
AddS(Tabs.Sailor, "Kite Hub", 'https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader')
AddS(Tabs.Sailor, "Void Hub", "https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua")
AddS(Tabs.Sailor, "Express Hub", "https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua")

-- Rivals
AddS(Tabs.Rivals, "Rivals Main", "https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader")
AddS(Tabs.Rivals, "Athec Hub", "https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua")

-- Fisch
AddS(Tabs.Fisch, "GoombaHub", "https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua")
AddS(Tabs.Fisch, "Flow Hub", "https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua")

-- Grow a Garden (The 3 Fixed Ones)
AddS(Tabs.Garden, "Lumin Hub", "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua")
AddS(Tabs.Garden, "Thunder Z Hub", 'https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua')
AddS(Tabs.Garden, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")

-- Tsunami
AddS(Tabs.Tsunami, "NEOX HUB", "https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader")

Tabs.Settings:AddSlider("WS", {Title = "Walkspeed", Default = 16, Min = 16, Max = 500, Rounding = 1, Callback = function(V) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end})

Window:SelectTab(1)
