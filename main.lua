--[[ KING PERFORMANCE | MOONSEC V3 OBFUSCATION | AUTHORIZED: ZAYAN ]]
local _0xK,_0xZ=game:GetService("StarterGui"),{'\73\110\105\116\105\97\108\105\122\105\110\103\32\75\105\110\103\32\86\51','\66\121\112\97\115\115\105\110\103\32\72\97\110\100\115\104\97\107\101','\76\111\97\100\105\110\103\32\77\97\116\104\32\77\111\100\117\108\101\115','\68\101\99\114\121\112\116\105\110\103\32\68\97\116\97','\65\117\116\104\111\114\105\122\101\100\58\32\122\97\121\97\110'}for i,v in ipairs(_0xZ)do local h=""for _=1,12 do h=h..string.format("%X",math.random(0,15))end print("["..h.."] "..v)_0xK:SetCore("SendNotification",
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "All Hub | All Game Script",
    SubTitle = "by zayan",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Toggle = Instance.new("TextButton", ScreenGui)
local Corner = Instance.new("UICorner", Toggle)
Toggle.Name = "HUB"; Toggle.Size = UDim2.new(0, 50, 0, 50); Toggle.Position = UDim2.new(0.12, 0, 0.15, 0); Toggle.BackgroundColor3 = Color3.fromRGB(30,30,30); Toggle.Text = "HUB"; Toggle.TextColor3 = Color3.new(1,1,1); Toggle.Draggable = true; Toggle.Active = true; Corner.CornerRadius = UDim.new(0, 12)
Toggle.MouseButton1Click:Connect(function() Window:Minimize() end)

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

Tabs.Main:AddButton({Title = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})

Tabs.Sailor:AddButton({Title = "Chiyo Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua'))() end})
Tabs.Sailor:AddButton({Title = "Kite Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader'))() end})
Tabs.Sailor:AddButton({Title = "Void Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua"))() end})
Tabs.Sailor:AddButton({Title = "Express Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"))() end})

Tabs.Rivals:AddButton({Title = "Rivals Main", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader"))() end})
Tabs.Rivals:AddButton({Title = "Athec Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))() end})

Tabs.Fisch:AddButton({Title = "GoombaHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua"))() end})
Tabs.Fisch:AddButton({Title = "Flow Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))() end})

Tabs.King:AddButton({Title = "Zee Hub", Callback = function() loadstring(game:HttpGet('https://zuwz.me/Ls-Zee-Hub-KL'))() end})
Tabs.King:AddButton({Title = "Omg Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))() end})

Tabs.Blox:AddButton({Title = "Gravity Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end})

--// GROW A GARDEN (LUMIN HUB ADDED)
Tabs.Garden:AddButton({Title = "Speed Hub X", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))() end})
Tabs.Garden:AddButton({Title = "Thunder Z Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua'))() end})
Tabs.Garden:AddButton({Title = "Lumin Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua"))() end})

Tabs.Tsunami:AddButton({Title = "NEOX HUB", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader"))() end})

Tabs.Settings:AddSlider("WS", {Title = "Walkspeed", Default = 16, Min = 16, Max = 500, Rounding = 1, Callback = function(V) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end})

Window:SelectTab(1)
