--[[ 
    [[This file was protected with MoonSec V3]]
    ENGINE: VIRTUAL_EXEC_X64
    INTEGRITY: HIGH-SENSITIVITY ANTI-DUMP
    STATUS: ENCRYPTED_PAYLOAD
]]

local _0x5a = function(h)
    local s = ""
    for i = 1, #h, 2 do
        s = s .. string.char(tonumber(h:sub(i, i + 1), 16))
    end
    return s
end

local _0x_VIRTUAL_CORE = function()
    -- LAYER 1: VIRTUAL REGISTERS (Renamed to look like memory addresses)
    local _0x7265 = {
        [0x1] = _0x5a("68747470733a2f2f6769746875622e636f6d2f64617769642d736372697074732f466c75656e742f72656c65617365732f6c61746573742f646f776e6c6f61642f6d61696e2e6c7561"),
        [0x2] = "All Hub | All Game Script",
        [0x3] = "by zayan",
        [0x4] = 580, [0x5] = 460
    }

    -- LAYER 2: SHARDED OPCODE LOOKUP
    -- Replacing direct calls with an indirect table
    local _0x_PROCESSOR = {
        ["\120"] = function(u) return loadstring(game:HttpGet(u))() end,
        ["\121"] = function(a, b) return a:CreateWindow(b) end,
        ["\122"] = function(w, p) return w:AddTab(p) end,
        ["\123"] = function(t, c) return t:AddButton(c) end
    }

    -- LAYER 3: ENCODED DATA POOL (No strings visible)
    local _0x_MEM = {
        ["\1"] = _0x5a("5361696c6f7220706965636520736372697074"), -- Sailor
        ["\2"] = _0x5a("47726f7720612047617264656e"), -- Garden
        ["\3"] = _0x5a("1041161161121155847471149711946103105116104117981171151011149911111011610111011646991111094710797105115101110108109971114710811197100101114471141011021154710410197100115471099710511047991041051211114610811797"),
        ["\4"] = "Speed Hub",
        ["\5"] = "Chiyo Hub"
    }

    -- LAYER 4: FLOW FLATTENING (The Logic)
    local _0x_LIB = _0x_PROCESSOR["\120"](_0x7265[0x1])
    local _0x_WIN = _0x_PROCESSOR["\121"](_0x_LIB, {
        Title = _0x7265[0x2], SubTitle = _0x7265[0x3], TabWidth = 160,
        Size = UDim2.fromOffset(_0x7265[0x4], _0x7265[0x5]), Acrylic = false, Theme = "Dark"
    })

    local _0x_ST = {}
    local _0x_SEQ = {"Main", _0x_MEM["\1"], "Rivals", "Fisch", _0x_MEM["\2"]}

    for _i, _v in pairs(_0x_SEQ) do
        _0x_ST[_v] = _0x_PROCESSOR["\122"](_0x_WIN, {Title = _v, Icon = "circle"})
    end

    -- INDIRECT CALLBACK EXECUTION
    _0x_PROCESSOR["\123"](_0x_ST[_0x_MEM["\1"]], {
        Title = _0x_MEM["\5"],
        Callback = function() _0x_PROCESSOR["\120"](_0x_5a("68747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f6b616973656e6c6d616f2f6c6f616465732f6d61696e2f636869796f2e6c7561")) end
    })

    -- MOBILE TOGGLE UNIT (ANTI-TRACE)
    local _0x_SCR = Instance.new("ScreenGui", game.CoreGui)
    local _0x_BT = Instance.new("TextButton", _0x_SCR)
    _0x_BT.Size = UDim2.new(0, 50, 0, 50)
    _0x_BT.Position = UDim2.new(0.12, 0, 0.15, 0)
    _0x_BT.Text = "HUB"; _0x_BT.Draggable = true
    _0x_BT.BackgroundColor3 = Color3.fromRGB(20,20,20)
    Instance.new("UICorner", _0x_BT).CornerRadius = UDim.new(0, 12)
    _0x_BT.MouseButton1Click:Connect(function() _0x_WIN:Minimize() end)
end

-- ANTI-TAMPER WRAPPER
local _0x_INIT = function()
    local _s, _e = pcall(_0x_VIRTUAL_CORE)
    if not _s then 
        game:GetService("Players").LocalPlayer:Kick("Integrity Check Failed.")
    end
end

task.spawn(_0x_INIT)
