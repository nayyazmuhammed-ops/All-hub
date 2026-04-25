--[[ 
    ALL HUB | ARCHITECT EDITION
    [!] DESIGN: MODULAR SERVER-GATE ARCHITECTURE
    [!] FOCUS: STABILITY & STRATEGIC HARDENING
    [!] AUTH: ZAYAN
]]

local AllHub = {
    _VERSION = "4.0",
    _ACTIVE = false,
    _REG = {}
}

--// 1. THE GATEKEEPER (Simulating a Server-Side Request)
-- In a real MoonSec setup, this would be an API call.
local function GetSecureChunk(id)
    local chunks = {
        ["UI_CORE"] = "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/main.lua",
        ["SAILOR_PIECE"] = "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua",
        ["GARDEN"] = "https://raw.githubusercontent.com/shlexware/LuminHub/main/LuminHub.lua"
    }
    -- Simple hardening: URL is never stored in a variable, just returned
    return chunks[id]
end

--// 2. THE PROTECTOR (Lightweight Environment Check)
local function IsSafe()
    if hookmetamethod or getgc then
        -- We don't crash, we just return a warning for internal use
        return false
    end
    return true
end

--// 3. MODULAR INITIALIZATION
function AllHub:Boot()
    if self._ACTIVE then return end
    self._ACTIVE = true

    -- Fetch UI Core
    local success, UI_Library = pcall(function()
        return loadstring(game:HttpGet(GetSecureChunk("UI_CORE")))()
    end)

    if not success or not UI_Library then
        warn("All Hub: Communication Error.")
        return
    end

    -- Build Interface
    local Window = UI_Library:CreateWindow({
        Title = "All Hub",
        SubTitle = "by zayan",
        TabWidth = 160,
        Theme = "Dark"
    })

    self._REG.Window = Window

    -- Add Tabs via Fetching
    local MainTab = Window:AddTab({ Title = "Sailor piece script", Icon = "anchor" })

    --// 4. ON-DEMAND LOADING (Value-Splitting)
    MainTab:AddButton({
        Title = "Chiyo Hub",
        Description = "Loads Sailor Piece Script",
        Callback = function()
            -- The script is ONLY fetched the moment the button is pressed.
            loadstring(game:HttpGet(GetSecureChunk("SAILOR_PIECE")))()
        end
    })

    --// 5. MOBILE-FRIENDLY TOGGLE
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    local Toggle = Instance.new("TextButton", ScreenGui)
    Toggle.Name = "AllHubToggle"; Toggle.Size = UDim2.new(0, 50, 0, 50)
    Toggle.Position = UDim2.new(0.1, 0, 0.2, 0); Toggle.Text = "HUB"
    Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30); Toggle.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", Toggle).CornerRadius = UDim.new(0, 12)
    
    -- Draggable Logic
    Toggle.Active = true; Toggle.Draggable = true
    Toggle.MouseButton1Click:Connect(function()
        Window:Minimize()
    end)
end

--// EXECUTE
AllHub:Boot()
