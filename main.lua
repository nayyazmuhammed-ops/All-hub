--[[ 
    [[STABILIZED BYTE-ENGINE]]
    BUILD: NEBULA_STABLE_FIX
    STATUS: BYPASS_NIL_READY
]]

--// LAYER 1: DATA PROTECTION
local _D1 = {104, 116, 116, 112, 115, 58, 47, 47, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 100, 97, 119, 105, 100, 45, 115, 99, 114, 105, 112, 116, 115, 47, 70, 108, 117, 101, 110, 116, 47, 114, 101, 108, 101, 97, 115, 101, 115, 47, 108, 97, 116, 101, 115, 116, 47, 100, 111, 119, 110, 108, 111, 97, 100, 47, 109, 97, 105, 110, 46, 108, 117, 97}
local _D2 = {104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 107, 97, 105, 115, 101, 110, 108, 109, 97, 111, 47, 108, 111, 97, 100, 101, 114, 47, 114, 101, 102, 115, 47, 104, 101, 97, 100, 115, 47, 109, 97, 105, 110, 47, 99, 104, 105, 121, 111, 46, 108, 117, 97}

local function _DEC(t)
    local s = ""
    for i = 1, #t do s = s .. string.char(t[i]) end
    return s
end

--// LAYER 2: DIRECT LOAD (No Wrappers)
local _U = _DEC(_D1)
local _RAW = game:HttpGet(_U)
local _LIB = loadstring(_RAW)()

--// LAYER 3: UI CREATION
local _W = _LIB:CreateWindow({
    Title = "All Hub | All Game Script",
    SubTitle = "by zayan",
    TabWidth = 160, Size = UDim2.fromOffset(580, 460),
    Acrylic = false, Theme = "Dark"
})

local _TN = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
local _T = {}

for _, n in pairs(_TN) do
    _T[n] = _W:AddTab({Title = n, Icon = "circle"})
end

--// LAYER 4: CHIYO BUTTON
_T["Sailor piece script"]:AddButton({
    Title = "Chiyo Hub",
    Callback = function() 
        loadstring(game:HttpGet(_DEC(_D2)))()
    end
})

--// LAYER 5: MOBILE TOGGLE
local _G = Instance.new("ScreenGui", game.CoreGui)
local _B = Instance.new("TextButton", _G)
_B.Size = UDim2.new(0, 50, 0, 50); _B.Position = UDim2.new(0.12, 0, 0.2, 0)
_B.Text = "HUB"; _B.Draggable = true
_B.BackgroundColor3 = Color3.fromRGB(30,30,30); _B.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", _B).CornerRadius = UDim.new(0, 12)
_B.MouseButton1Click:Connect(function() _W:Minimize() end)

