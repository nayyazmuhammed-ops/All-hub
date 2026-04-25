--[[ 
    KING PERFORMANCE | MOONSEC V3 ULTRA-SECURITY
    Authorized: zayan
]]

--// OBFUSCATION ENGINE (XOR + BYTE-SHIFT)
local _load = function(data, key)
    local out = ""
    for i = 1, #data do
        local byte = data:byte(i)
        -- Byte-shift and XOR decryption logic
        out = out .. string.char(bit32.bxor((byte - 1) % 256, key))
    end
    return out
end

-- Security Messages (Byte-encoded)
local _s1 = "\74\111\106\117\106\98\109\106\123\106\111\104\32\76\106\111\104\32\87\52"
local _s2 = "\67\122\113\98\116\116\106\111\104\32\84\102\98\118\115\106\117\122"

local function Boot()
    local S = game:GetService("StarterGui")
    print("------------------------------------------")
    print("INITIALIZING KING_DECRYPT_ENGINE...")
    print("STATUS: " .. _load(_s1, 1))
    
    for i = 1, 3 do
        local hex = "" for _=1,16 do hex=hex..string.format("%X",math.random(0,15))end
        print("["..hex.."] DEC_BYTE: " .. bit32.rshift(math.random(1000,9999), 2))
        S:SetCore("SendNotification", {Title = "🛡️ MOONSEC V3", Text = "DECRYPTING: " .. i*33 .. "%", Duration = 0.5})
        task.wait(0.2)
    end
    print("------------------------------------------")
end
Boot()

--// MAIN HUB (FLUENT CORE)
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

-- MOBILE TOGGLE
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Toggle = Instance.new("TextButton", ScreenGui)
local Corner = Instance.new("UICorner", Toggle)
Toggle.Name = "HUB"; Toggle.Size = UDim2.new(0, 50, 0, 50); Toggle.Position = UDim2.new(0.12, 0, 0.15, 0); Toggle.BackgroundColor3 = Color3.fromRGB(30,30,30); Toggle.Text = "HUB"; Toggle.TextColor3 = Color3.new(1,1,1); Toggle.Draggable = true; Toggle.Active = true; Corner.CornerRadius = UDim.new(0, 12)
Toggle.MouseButton1Click:Connect(function() Window:Minimize() end)

-- TABS
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

--// SCRIPTS
-- Admin
Tabs.Main:AddButton({Title = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})

-- Sailor Piece
Tabs.Sailor:AddButton({Title = "Chiyo Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua'))() end})
Tabs.Sailor:AddButton({Title = "Kite Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader'))() end})
Tabs.Sailor:AddButton({Title = "Void Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua"))() end})
Tabs.Sailor:AddButton({Title = "Express Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"))() end})

-- Rivals
Tabs.Rivals:AddButton({Title = "Rivals Main", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader"))() end})
Tabs.Rivals:AddButton({Title = "Athec Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))() end})

-- Fisch
Tabs.Fisch:AddButton({Title = "GoombaHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua"))() end})
Tabs.Fisch:AddButton({Title = "Flow Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))() end})

-- King Legacy
Tabs.King:AddButton({Title = "Zee Hub", Callback = function() loadstring(game:HttpGet('https://zuwz.me/Ls-Zee-Hub-KL'))() end})
Tabs.King:AddButton({Title = "Hyper Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))() end})

-- Blox Fruit
Tabs.Blox:AddButton({Title = "Gravity Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end})

-- Grow a Garden (The 3 Real Ones)
Tabs.Garden:AddButton({Title = "Lumin Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua"))() end})
Tabs.Garden:AddButton({Title = "Thunder Z Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua'))() end})
Tabs.Garden:AddButton({Title = "Speed Hub X", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))() end})

-- Tsunami
Tabs.Tsunami:AddButton({Title = "NEOX HUB", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader"))() end})

-- Settings
Tabs.Settings:AddSlider("WS", {Title = "Walkspeed", Default = 16, Min = 16, Max = 500, Rounding = 1, Callback = function(V) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end})

Window:SelectTab(1)
