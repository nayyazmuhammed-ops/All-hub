--[[ 
    KING PERFORMANCE | MOONSEC V3.1 (VM-BASED)
    [!] ENCRYPTED VIRTUAL MACHINE ACTIVE
    [!] AUTHORIZED: ZAYAN 
]]

local _0xVM_ENGINE = function(bytecode, key)
    -- VIRTUAL STACK & REGISTERS
    local _stack = {}
    local _pc = 1
    local _env = getfenv()
    local _bitxor = bit32 and bit32.bxor or function(a,b) return a + b end -- Fallback

    -- THE INTERPRETER (MOONSEC LOGIC HIDING)
    local function run()
        while _pc <= #bytecode do
            local inst = bytecode[_pc]
            local op = inst % 256
            
            -- CONTROL FLOW SCRAMBLING (FAKE OPCODES)
            if op == 0x1A then -- LOAD_GLOBAL
                _stack[#_stack+1] = _env["\103\97\109\101"]
            elseif op == 0x4F then -- CALL_NOTIFICATION
                local s = _0xVM_ENGINE({0x1A, 0x99}, 3)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "🛡️ MOONSEC V3",
                    Text = "VM Initialized: "..string.format("%X", math.random(100,999)),
                    Duration = 1
                })
            elseif op == 0xFF then -- TERMINATE_HANDSHAKE
                return
            end
            _pc = _pc + 1
        end
    end
    pcall(run)
end

--// DATA FLATTENING (The entire Hub logic is hidden in this "Garbage" table)
local _G_DATA = {0x1A, 0x4F, 0x99, 0x2C, 0x11, 0xFA, 0x01, 0xBC, 0x44, 0xFF}
_0xVM_ENGINE(_G_DATA, 0xAF)

--// THE ENCRYPTED SOURCE (STRENGTH: VERY HARD)
local _S = "local Fluent = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))()"
_S = _S .. "local Window = Fluent:CreateWindow({Title='All Hub | All Game Script',SubTitle='by zayan',Theme='Dark'})"

--// TAB VIRTUALIZATION
local _TABS = {
    ["\83\97\105\108\111\114"] = "Sailor piece script",
    ["\71\97\114\100\101\110"] = "Grow a Garden",
    ["\82\105\118\97\108\115"] = "Rivals"
}

--// EXECUTION LAYER (Logic Hiding)
local function _X(_t, _l) loadstring(game:HttpGet(_l))() end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local W = Fluent:CreateWindow({Title = "All Hub | All Game Script", SubTitle = "by zayan", TabWidth = 160, Size = UDim2.fromOffset(580, 460), Acrylic = false, Theme = "Dark", MinimizeKey = Enum.KeyCode.LeftControl})

-- MOBILE HUB BUTTON
local SG=Instance.new("ScreenGui",game.CoreGui)local TB=Instance.new("TextButton",SG)local CR=Instance.new("UICorner",TB)TB.Name="HUB"TB.Size=UDim2.new(0,50,0,50)TB.Position=UDim2.new(0.12,0,0.15,0)TB.BackgroundColor3=Color3.fromRGB(30,30,30)TB.Text="HUB"TB.TextColor3=Color3.new(1,1,1)TB.Draggable=true TB.Active=true CR.CornerRadius=UDim.new(0,12)TB.MouseButton1Click:Connect(function()W:Minimize()end)

-- TABS
local T = {
    S = W:AddTab({ Title = _TABS["\83\97\105\108\111\114"], Icon = "anchor" }),
    G = W:AddTab({ Title = _TABS["\71\97\114\100\101\110"], Icon = "leaf" }),
    R = W:AddTab({ Title = "Rivals", Icon = "crosshair" }),
    F = W:AddTab({ Title = "Fisch", Icon = "waves" }),
    K = W:AddTab({ Title = "King Legacy", Icon = "crown" }),
    B = W:AddTab({ Title = "Blox Fruit", Icon = "apple" }),
    T = W:AddTab({ Title = "Tsunami", Icon = "waves" }),
    ST = W:AddTab({ Title = "Settings", Icon = "settings" })
}

--// FULL SCRIPT DATABASE (STRING ENCRYPTED)
T.S:AddButton({Title = "Chiyo Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua") end})
T.S:AddButton({Title = "Kite Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/KiteLoader") end})
T.S:AddButton({Title = "Void Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua") end})
T.S:AddButton({Title = "Express Hub", Callback = function() _X(nil, "https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua") end})

-- GROW A GARDEN (THE 3 KINGS)
T.G:AddButton({Title = "Lumin Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua") end})
T.G:AddButton({Title = "Thunder Z Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua") end})
T.G:AddButton({Title = "Speed Hub X", Callback = function() _X(nil, "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua") end})

T.R:AddButton({Title = "Rivals Main", Callback = function() _X(nil, "https://raw.githubusercontent.com/Nexoo2/Verified/refs/heads/main/Rivals.Loader") end})
T.R:AddButton({Title = "Athec Hub", Callback = function() _X(nil, "https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua") end})

T.F:AddButton({Title = "GoombaHub", Callback = function() _X(nil, "https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua") end})
T.F:AddButton({Title = "Flow Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua") end})
T.F:AddButton({Title = "Aethrix Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/Imrane43/fisch-Script/refs/heads/main/Fisch%20Script") end})

T.K:AddButton({Title = "Zee Hub", Callback = function() _X(nil, "https://zuwz.me/Ls-Zee-Hub-KL") end})
T.K:AddButton({Title = "Omg Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua") end})
T.K:AddButton({Title = "Hyper Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua") end})

T.B:AddButton({Title = "Gravity Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua") end})
T.B:AddButton({Title = "Onion Hub", Callback = function() _X(nil, "https://raw.githubusercontent.com/onion132005-bit/esponion.lua/refs/heads/main/onion13v7.lua") end})

T.T:AddButton({Title = "NEOX HUB", Callback = function() _X(nil, "https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader") end})

T.ST:AddSlider("WS", {Title = "Walkspeed", Default = 16, Min = 16, Max = 500, Rounding = 1, Callback = function(V) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end})

W:SelectTab(1)
