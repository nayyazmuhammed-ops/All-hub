local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "All Hub | All Game Script",
    SubTitle = "by zayan",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- Turned off blur to make it load 2x faster on mobile
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

------------------------------------------------
--// MOBILE TOGGLE BUTTON
------------------------------------------------
local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "AllHub_DirectToggle"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ScreenGui
ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ToggleButton.Position = UDim2.new(0.12, 0, 0.15, 0)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.Text = "HUB"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 12
ToggleButton.Draggable = true
ToggleButton.Active = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
    Window:Minimize()
end)

------------------------------------------------
--// TABS
------------------------------------------------
local Tabs = {
    Main = Window:AddTab({ Title = "Security & Admin", Icon = "shield" }),
    Sailor = Window:AddTab({ Title = "Sailor piece script", Icon = "anchor" }),
    Rivals = Window:AddTab({ Title = "Rivals", Icon = "crosshair" }),
    Fisch = Window:AddTab({ Title = "Fisch", Icon = "waves" }),
    King = Window:AddTab({ Title = "King Legacy", Icon = "crown" }),
    Blox = Window:AddTab({ Title = "Blox Fruit", Icon = "apple" }),
    Garden = Window:AddTab({ Title = "Grow a Garden", Icon = "leaf" }),
    Tsunami = Window:AddTab({ Title = "Tsunami", Icon = "waves" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

--// SECURITY & ADMIN
Tabs.Main:AddToggle("WebhookBlocker", {Title = "Ultra Webhook Blocker", Default = false })
Tabs.Main:AddButton({
    Title = "Infinite Yield",
    Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end
})

--// SAILOR PIECE
Tabs.Sailor:AddButton({
    Title = "Chiyo Hub",
    Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua'))() end
})
Tabs.Sailor:AddButton({
    Title = "Kite Hub",
    Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader'))() end
})
Tabs.Sailor:AddButton({
    Title = "Void Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua"))() end
})
Tabs.Sailor:AddButton({
    Title = "Express Hub",
    Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"))() end
})

--// RIVALS
Tabs.Rivals:AddButton({
    Title = "Rivals Main",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader"))() end
})
Tabs.Rivals:AddButton({
    Title = "Athec hub",
    Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))() end
})

--// FISCH
Tabs.Fisch:AddButton({
    Title = "GoombaHub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua"))() end
})
Tabs.Fisch:AddButton({
    Title = "Flow Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))() end
})
Tabs.Fisch:AddButton({
    Title = "Aethrix Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Imrane43/fisch-Script/refs/heads/main/Fisch%20Script",true))() end
})

--// KING LEGACY
Tabs.King:AddButton({
    Title = "Zee Hub",
    Callback = function() loadstring(game:HttpGet('https://zuwz.me/Ls-Zee-Hub-KL'))() end
})
Tabs.King:AddButton({
    Title = "Omg Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))() end
})
Tabs.King:AddButton({
    Title = "Hyper Hub",
    Callback = function() 
        repeat task.wait() until game:IsLoaded()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))() 
    end
})

--// BLOX FRUIT
Tabs.Blox:AddButton({
    Title = "Gravity Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end
})
Tabs.Blox:AddButton({
    Title = "Onion Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/onion132005-bit/esponion.lua/refs/heads/main/onion13v7.lua"))() end
})

--// GARDEN
Tabs.Garden:AddButton({
    Title = "Speed Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))() end
})
Tabs.Garden:AddButton({
    Title = "Thunder Z Hub",
    Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua'))() end
})
Tabs.Garden:AddButton({
    Title = "Lumin Hub",
    Callback = function() loadstring(game:HttpGet("http://luminon.top/loader.lua"))() end
})

--// TSUNAMI
Tabs.Tsunami:AddButton({
    Title = "NEOX HUB",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))() end
})

--// SETTINGS
Tabs.Settings:AddSlider("Slider", {
    Title = "Walkspeed",
    Description = "Adjust your speed",
    Default = 16,
    Min = 16,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

Window:SelectTab(1)
