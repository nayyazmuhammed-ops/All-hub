--[[ 
    [[OFFICIAL MOONSEC V3 ARCHITECTURE]]
    CORE: OMNI_VM_REVOLVER_V2
    REASON: COMPILER-GRADE SHIFTING
    STATUS: FINAL_STABILIZED_BUILD
]]

local _CPU = function()
    --// LAYER 1: ENCRYPTED INSTRUCTION STREAM (The "Brain")
    -- Format: {Opcode, Arg1, Arg2, JumpOffset}
    local _BYTECODE = {
        {0xAF, "L1", nil, 0}, -- LOAD_LIB
        {0xBC, "W1", "T1", 0}, -- CREATE_WIN
        {0xDE, "TABS", nil, 0}, -- MAP_TABS
        {0xFF, nil, nil, 0}    -- TERMINATE
    }

    --// LAYER 2: THE CONSTANT VAULT (Encoded)
    local _CONST = {
        ["L1"] = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\100\97\119\105\100\45\115\103\114\105\112\116\115\47\70\108\117\101\110\116\47\114\101\108\101\97\115\101\115\47\108\97\116\101\115\116\47\106\111\119\110\108\111\97\100\47\109\107\105\110\46\108\117\97",
        ["T1"] = "All Hub | All Game Script",
        ["S1"] = "by zayan",
        ["U1"] = "https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"
    }

    --// LAYER 3: VIRTUAL REGISTERS
    local _REG = {}
    local _PC = 1
    local _RUN = true

    --// LAYER 4: THE INTERPRETER (The CPU Loop)
    local _OPS = {
        [0xAF] = function(a) -- OP_LOAD
            _REG["LIB"] = loadstring(game:HttpGet(_CONST[a]))()
        end,
        [0xBC] = function(a, b) -- OP_WINDOW
            _REG["WIN"] = _REG["LIB"]:CreateWindow({
                Title = _CONST[b], SubTitle = _CONST["S1"],
                TabWidth = 160, Size = UDim2.fromOffset(580, 460),
                Acrylic = false, Theme = "Dark"
            })
        end,
        [0xDE] = function() -- OP_INTERFACE
            local names = {"Main", "Sailor piece script", "Rivals", "Fisch", "Grow a Garden"}
            _REG["T"] = {}
            for _, v in pairs(names) do
                _REG["T"][v] = _REG["WIN"]:AddTab({Title = v, Icon = "circle"})
            end
            
            -- Instruction for Button Injection
            _REG["T"]["Sailor piece script"]:AddButton({
                Title = "Chiyo Hub",
                Callback = function() loadstring(game:HttpGet(_CONST["U1"]))() end
            })

            -- Floating Toggle
            local s, b = Instance.new("ScreenGui", game.CoreGui), Instance.new("TextButton")
            b.Parent = s; b.Size = UDim2.new(0,50,0,50); b.Position = UDim2.new(0.1,0,0.1,0)
            b.Text = "HUB"; b.Draggable = true
            b.MouseButton1Click:Connect(function() _REG["WIN"]:Minimize() end)
        end,
        [0xFF] = function() _RUN = false end
    }

    --// EXECUTION ENGINE
    while _RUN do
        local inst = _BYTECODE[_PC]
        if not inst then break end
        
        local op, a1, a2 = inst[1], inst[2], inst[3]
        
        -- Safe Execution Call
        local success, err = pcall(function()
            _OPS[op](a1, a2)
        end)

        if not success then
            warn("VM_FAULT at PC " .. _PC .. ": " .. tostring(err))
            break
        end

        _PC = _PC + 1
    end
end

--// LAYER 5: DYNAMIC WRAPPER
task.spawn(function()
    local s, e = pcall(_CPU)
    if not s then print("CRITICAL_VM_ERROR") end
end)
