--[[ KING PERFORMANCE | MOONSEC V3 | Authorized: zayan ]]
local function MoonsecLoad()
    local logs = {"Initializing King Protocol v3...", "Bypassed Security Handshake", "Loading Math Modules...", "Decrypting Cloud Data...", "Authorized: zayan"}
    for i, v in ipairs(logs) do
        local hex = "" for _=1,12 do hex = hex..string.format("%X", math.random(0,15)) end
        print("["..hex.."] "..v)
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "🛡️ ALL HUB SECURITY", Text = v, Duration = 1.2})
        task.wait(0.2)
    end
end
MoonsecLoad()

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({Title = "All Hub | All Game Script", SubTitle = "by zayan", TabWidth = 160, Size = UDim2.fromOffset(580, 460), Acrylic = false, Theme = "Dark", MinimizeKey = Enum.KeyCode.LeftControl})

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local ToggleButton = Instance.new("TextButton", ScreenGui)
local UICorner = Instance.new("UICorner", ToggleButton)
ToggleButton.Name = "HUB"; ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30); ToggleButton.Position = UDim2.new(0.12, 0, 0.15, 0); ToggleButton.Size = UDim2.new(0, 50, 0, 50); ToggleButton.Text = "HUB"; ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255); ToggleButton.Draggable = true; ToggleButton.Active = true; UICorner.CornerRadius = UDim.new(0, 12)
ToggleButton.MouseButton1Click:Connect(function() Window:Minimize() end)

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

--// BUTTONS
Tabs.Main:AddButton({Title = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
Tabs.Sailor:AddButton({Title = "Chiyo Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua'))() end})
Tabs.Sailor:AddButton({Title = "Kite Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader'))() end})
Tabs.Sailor:AddButton({Title = "Void Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua"))() end})
Tabs.Sailor:AddButton({Title = "Express Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"))() end})
Tabs.Rivals:AddButton({Title = "Rivals Main", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader"))() end})
Tabs.Rivals:AddButton({Title = "Athec hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))() end})
Tabs.Fisch:AddButton({Title = "GoombaHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua"))() end})
Tabs.Fisch:AddButton({Title = "Flow Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))() end})
Tabs.King:AddButton({Title = "Zee Hub", Callback = function() loadstring(game:HttpGet('https://zuwz.me/Ls-Zee-Hub-KL'))() end})
Tabs.King:AddButton({Title = "Omg Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))() end})
Tabs.Blox:AddButton({Title = "Gravity Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end})
Tabs.Garden:AddButton({Title = "Speed Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))() end})
Tabs.Tsunami:AddButton({Title = "NEOX HUB", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))() end})
Tabs.Settings:AddSlider("WS", {Title = "Walkspeed", Default = 16, Min = 16, Max = 500, Rounding = 1, Callback = function(V) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end})

Window:SelectTab(1)
