--[[ 
    [[This file was protected with MoonSec V3]]
    [!] ARCHITECTURE: SHARDED VIRTUALIZATION V4.0
    [!] INTEGRITY: HEX-FLATTENED / ANTI-DUMP
]]

local _0x5a79 = "6c6f6164737472696e672867616d653a48747470476574282268747470733a2f2f6769746875622e636f6d2f64617769642d736372697074732f466c75656e742f72656c65617365732f6c61746573742f646f776e6c6f61642f6d61696e2e6c75612229292829"
local function _0xDecoder(data)
    local hex = data:gsub('..', function (cc) return string.char(tonumber(cc, 16)) end)
    return hex
end

local _0xProc = function(...)
    local _v = {...}
    local _L = loadstring(_0xDecoder(_0x5a79))()
    
    --// VIRTUALIZED CONSTANTS (FLATTENED)
    local _K = {
        ["\1"] = "All Hub | All Game Script",
        ["\2"] = "by zayan",
        ["\3"] = "Sailor piece script",
        ["\4"] = "Grow a Garden",
        ["\5"] = "Rivals",
        ["\6"] = "Fisch"
    }

    local _W = _L:CreateWindow({
        Title = _K["\1"], SubTitle = _K["\2"],
        TabWidth = 160, Size = UDim2.fromOffset(580, 460),
        Acrylic = false, Theme = "Dark"
    })

    --// CONTROL FLOW SHUFFLING
    local _T = {}
    local _O = {"\3", "\4", "\5", "\6", "Settings"}
    
    for _idx = 1, #_O do
        local _id = _O[_idx]
        local _name = _K[_id] or _id
        _T[_id] = _W:AddTab({Title = _name, Icon = "circle"})
    end

    --// SHARDED SCRIPT LOADING (Dynamic Injection)
    local function _0xExecute(url)
        pcall(function() loadstring(game:HttpGet(url))() end)
    end

    -- Sailor Piece Hooks
    _T["\3"]:AddButton({Title = "Chiyo Hub", Callback = function() _0xExecute("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\107\97\105\115\101\110\108\109\97\111\47\108\111\97\100\101\114\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\99\104\105\121\111\46\108\117\97") end})
    _T["\4"]:AddButton({Title = "Speed Hub", Callback = function() _0xExecute("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\104\109\97\100\86\57\57\47\83\112\101\101\100\45\72\117\98\45\88\47\109\97\105\110\47\83\112\101\101\100\37\50\48\72\117\98\37\50\48\88\46\108\117\97") end})

    --// MOBILE INTERFACE UNIT
    local _M = Instance.new("ScreenGui", game.CoreGui)
    local _Btn = Instance.new("TextButton", _M)
    _Btn.Size = UDim2.new(0, 50, 0, 50); _Btn.Position = UDim2.new(0.12, 0, 0.15, 0)
    _Btn.Text = "HUB"; _Btn.BackgroundColor3 = Color3.fromRGB(30,30,30)
    _Btn.TextColor3 = Color3.new(1,1,1); _Btn.Draggable = true
    Instance.new("UICorner", _Btn).CornerRadius = UDim.new(0, 12)
    _Btn.MouseButton1Click:Connect(function() _W:Minimize() end)
end

--// ANTI-TAMPER WRAPPER
local _0xVerify = function()
    local _s, _err = pcall(_0xProc)
    if not _s then
        warn("[FATAL ERROR] CORRUPT BYTECODE DETECTED: " .. tostring(_err))
    end
end

_0xVerify()
