local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "HELLO HUB",
    SubTitle = "by hellohellohell012321",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    presets = Window:AddTab({ Title = "personal stuff", Icon = "" }),
    tps = Window:AddTab({ Title = "teleports", Icon = "" }),
    fling = Window:AddTab({ Title = "fling shit", Icon = "" }),
    main = Window:AddTab({ Title = "main", Icon = "" }),
    troll1 = Window:AddTab({ Title = "troll tier 1", Icon = "" }),
    troll2 = Window:AddTab({ Title = "troll tier 2", Icon = "" }),
    troll3 = Window:AddTab({ Title = "troll tier 3", Icon = "" }),  
    basic = Window:AddTab({ Title = "basic", Icon = "" }),
    other = Window:AddTab({ Title = "other", Icon = "" }),
    clientreplication = Window:AddTab({ Title = "client replication", Icon = "" }),
    games = Window:AddTab({ Title = "games", Icon = "" })
}



local Options = Fluent.Options


-- PERSONAL STUFF

Tabs.presets:AddParagraph({
    Title = "personal stuff",
    Content = "presets i use to save time, u can use too idc"
})

Tabs.presets:AddButton({
    Title = "natural disaster trolling (all guis) (V2)",
    Description = "",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/fling_shit/OG_fling_gui.lua', true))() -- OG Fling GUI
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/main/infinite_yield.lua'))()  -- Infinite Yield
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/main/rochips_panel.lua", true))() -- Rochips Panel
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/nds_hub.lua"))() -- NDS Hub
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/kawaii_magnet.lua",true))() -- kawaii magne
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/kawaii_aura.lua", true))() -- kawaii aura
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/fling_shit/kawaii_freaky_fling.lua",true))() -- kawaii freaky fling
    end
})

Tabs.presets:AddButton({
    Title = "sigma toolset",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/telekinesis.lua'),true))() -- Telekinesis
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/misc/tptool.lua'),true))() -- TpTool
    end
})



-- GAME TPS

Tabs.tps:AddParagraph({
    Title = "game teleports",
    Content = "cause even leaving the game to the roblox menu is too much work"
})


Tabs.tps:AddButton({
    Title = "natural disaster survival",
    Callback = function()
        game:GetService('TeleportService'):Teleport(189707, game.Players.LocalPlayer)
    end
})

Tabs.tps:AddButton({
    Title = "therapy",
    Callback = function()
        game:GetService('TeleportService'):Teleport(8286149869, game.Players.LocalPlayer)
    end
})

Tabs.tps:AddButton({
    Title = "dress to impress",
    Callback = function()
        game:GetService('TeleportService'):Teleport(15101393044, game.Players.LocalPlayer)
    end
})

Tabs.tps:AddButton({
    Title = "a literal baseplate.",
    Callback = function()
        game:GetService('TeleportService'):Teleport(4483381587, game.Players.LocalPlayer)
    end
})

Tabs.tps:AddButton({
    Title = "murder mystery 3",
    Callback = function()
        game:GetService('TeleportService'):Teleport(142823291, game.Players.LocalPlayer)
    end
})



-- FLING SHIT

Tabs.fling:AddParagraph({
    Title = "fling shit",
    Content = "bully children"
})

Tabs.fling:AddButton({
    Title = "OG fling gui",
    Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/fling_shit/OG_fling_gui.lua', true))()
    end    
})

Tabs.fling:AddButton({
    Title = "kawaii freaky fling",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/fling_shit/kawaii_freaky_fling.lua",true))()
    end    
})

Tabs.fling:AddButton({
    Title = "fe fling all",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/fling_shit/fe_fling_all.lua"))()
    end    
})



-- MAIN

Tabs.main:AddParagraph({
    Title = "main",
    Content = "most common/used ig"
})

Tabs.main:AddButton({
    Title = "inf yield",
    Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/main/infinite_yield.lua'))() 
    end    
})

Tabs.main:AddButton({
    Title = "command x",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/main/command_x.lua", true))()
    end    
})

Tabs.main:AddButton({
    Title = "rochips panel",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/main/rochips_panel.lua", true))()
    end    
})

Tabs.main:AddButton({
    Title = "turtle spy",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/main/turtle_spy.lua", true))()
    end    
})



-- TROLL TIER 1

Tabs.troll1:AddParagraph({
    Title = "troll tier 1",
    Content = "troll scripts that are'nt that wild but still funny"
})

Tabs.troll1:AddButton({
    Title = "invisible VC trolling (q, e, mouseclick)",
    Callback = function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_1/invisible_vc_trolling.lua"),true))()
    end     
})

Tabs.troll1:AddButton({
    Title = "rizz!!1",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_1/rizz.lua"))()
    end    
})



-- TROLL TIER 2

Tabs.troll2:AddParagraph({
    Title = "troll tier 2",
    Content = "troll scripts that are pretty wild but not the wildest"
})

Tabs.troll2:AddButton({
    Title = "spiderman mode (z to toggle)",
    Callback = function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_2/walk_on_walls.lua"),true))()
    end    
})

Tabs.troll2:AddButton({
    Title = "obby ruiner",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_2/obby_ruiner.lua",true))()
    end    
})



-- TROLL TIER 3

Tabs.troll3:AddParagraph({
    Title = "troll tier 3",
    Content = "wildest troll scripts"
})

Tabs.troll3:AddButton({
    Title = "parts",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/teleport_unanchored.lua", true))()
    end    
})

Tabs.troll3:AddButton({
    Title = "black hole (e to tp to mouse)",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/black_hole.lua'),true))()
    end    
})

Tabs.troll3:AddButton({
    Title = "attach to part (c key over mouse) (requires part claim) (use fly+noclip)",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/attach_to_part.lua'),true))()
    end    
})

Tabs.troll3:AddButton({
    Title = "use da force (requires part claim)",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/telekinesis.lua'),true))()
    end    
})

Tabs.troll3:AddButton({
    Title = "kawaii aura",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/kawaii_aura.lua", true))()
    end    
})

Tabs.troll3:AddButton({
    Title = "kawaii magnet part",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/troll_tier_3/kawaii_magnet.lua",true))()
    end    
})



-- BASIC

Tabs.basic:AddParagraph({
    Title = "basic",
    Content = "basic stuff/exploits ig"
})

Tabs.basic:AddButton({
    Title = "no more kill bloccs!! (toggle wit Z)",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/basic/no_kill_blocks.lua'),true))()
    end    
})

Tabs.basic:AddButton({
    Title = "better position teleport",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/basic/position_teleport.lua'),true))()
    end    
})



-- OTHER

Tabs.other:AddParagraph({
    Title = "other",
    Content = "other scripts"
})

Tabs.other:AddButton({
    Title = "pshade shaders",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/other/pshade.lua'),true))()
    end    
})  

Tabs.other:AddButton({
    Title = "bring",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/other/bring.lua'),true))()
    end    
}) 

Tabs.other:AddButton({
    Title = "talentless",
    Callback = function()
            pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/other/talentless.lua", true))()
            end)
    end    
}) 



-- CLIENT REPLICATION

Tabs.clientreplication:AddParagraph({
    Title = "client replication",
    Content = "old fe scripts, use in client replication"
})

Tabs.clientreplication:AddButton({
    Title = "fe script hub",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/clientreplication/fe_script_hub.lua", true))()
    end    
})

Tabs.clientreplication:AddButton({
    Title = "c00lgui",
    Callback = function()
            loadstring(game:GetObjects('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/clientreplication/c00lgui.lua')[1].Source)()
    end    
})

Tabs.clientreplication:AddButton({
    Title = "c00lgui reawakened",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/clientreplication/c00lgui_reawakened.lua"))()
    end    
})



-- GAME STUFF

Tabs.games:AddButton({
    Title = "toh",
    Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/toh.lua'))()
    end    
})

Tabs.games:AddButton({
    Title = "natural disaster hub",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/nds_hub.lua"))()
    end    
})

Tabs.games:AddButton({
    Title = "word bomb autotyper (v/b to change speed)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/word_bomb.lua",true))()
    end    
})

Tabs.games:AddButton({
    Title = "99% fail impossible - pattern memorizer",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/99_fail_pattern.lua",true))()
    end    
})

Tabs.games:AddButton({
    Title = "paris to pees",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/pears_to_pairs.lua",true))()
    end    
})

Tabs.games:AddButton({
    Title = "dress to impress fucker",
    Callback = function()
        pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/dti_gui.lua",true))()
        end)
    end    
})

Tabs.games:AddButton({
    Title = "therapy fucker",
    Callback = function()
        pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/therapy.lua", true))()
        end)
    end    
})

--[[ Tabs.games:AddButton({
    Title = "rate my avatar fucker",
    Callback = function()
        pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/rate-my-avatar-gui/main/main.lua", true))()
        end)
    end    
})
]]

Tabs.games:AddButton({
    Title = "italy fucker",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/pizza_place.lua",true))()
    end    
})

Tabs.games:AddButton({
    Title = "bloxburg - execute then go to blox burger cashier",
    Callback = function()
        _G.time = 4 -- how long to auto farm before getting kicked (in hours)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hellohellohell012321/hellohub/main/scripts/game_stuff/bloxburg_auto.lua', true))()
    end    
})

Window:SelectTab(1)