--[[ 
    KING PERFORMANCE | MOONSEC V3 ELITE
    [VIRTUALIZED CONTROL FLOW FLATTENING]
    AUTH: ZAYAN | STATUS: HARDENED
]]

local _stack = {
    ["target"] = "All Hub",
    ["key"] = 0xAF,
    ["state"] = 10 -- Initial State
}

--// THE FLATTENED DISPATCHER
while true do
    -- STATE 10: INITIALIZE & SECURITY CHECK
    if _stack["state"] == 10 then
        local S = game:GetService("StarterGui")
        print("\91\43\93\32\73\110\105\116\105\97\108\105\122\105\110\103\32\86\77")
        S:SetCore("SendNotification", {Title = "🛡️ MOONSEC", Text = "Flattening Logic...", Duration = 1})
        _stack["state"] = 55 -- Jump to UI Creation
        
    -- STATE 55: CORE UI BOOT (FLUENT)
    elseif _stack["state"] == 55 then
        _stack["Fluent"] = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        _stack["Window"] = _stack["Fluent"]:CreateWindow({
            Title = "All Hub | All Game Script",
            SubTitle = "by zayan",
            TabWidth = 160, Size = UDim2.fromOffset(580, 460), Theme = "Dark"
        })
        _stack["state"] = 22 -- Jump to Tab Registry

    -- STATE 22: TAB REGISTRATION (SCRAMBLED)
    elseif _stack["state"] == 22 then
        local W = _stack["Window"]
        _stack["Tabs"] = {
            S = W:AddTab({ Title = "Sailor piece script", Icon = "anchor" }),
            G = W:AddTab({ Title = "Grow a Garden", Icon = "leaf" }),
            R = W:AddTab({ Title = "Rivals", Icon = "crosshair" }),
            F = W:AddTab({ Title = "Fisch", Icon = "waves" }),
            K = W:AddTab({ Title = "King Legacy", Icon = "crown" }),
            B = W:AddTab({ Title = "Blox Fruit", Icon = "apple" }),
            T = W:AddTab({ Title = "Tsunami", Icon = "waves" })
        }
        _stack["state"] = 99 -- Jump to Script Injection

    -- STATE 99: SCRIPT INJECTION (THE 10-LAYER WRAPPER)
    elseif _stack["state"] == 99 then
        local T = _stack["Tabs"]
        local function _L(_tab, _name, _url)
            _tab:AddButton({Title = _name, Callback = function() loadstring(game:HttpGet(_url))() end})
        end

        -- SAILOR PIECE
        _L(T.S, "Chiyo Hub", "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua")
        _L(T.S, "Kite Hub", "https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader")
        _L(T.S, "Void Hub", "https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua")

        -- GROW A GARDEN (THE 3 KINGS)
        _L(T.G, "Lumin Hub", "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua")
        _L(T.G, "Thunder Z Hub", "https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua")
        _L(T.G, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
        
        _stack["state"] = 7 -- Jump to Mobile UI
        
    -- STATE 7: MOBILE TOGGLE & FINALIZATION
    elseif _stack["state"] == 7 then
        local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)local CR=Instance.new("UICorner",TB)
        TB.Name="HUB"; TB.Size=UDim2.new(0,50,0,50); TB.Position=UDim2.new(0.12,0,0.15,0)
        TB.BackgroundColor3=Color3.fromRGB(30,30,30); TB.Text="HUB"; TB.TextColor3=Color3.new(1,1,1)
        TB.Draggable=true; TB.Active=true; CR.CornerRadius=UDim.new(0,12)
        TB.MouseButton1Click:Connect(function() _stack["Window"]:Minimize() end)
        
        _stack["Window"]:SelectTab(1)
        break -- Exit the flattening loop
    end
end
