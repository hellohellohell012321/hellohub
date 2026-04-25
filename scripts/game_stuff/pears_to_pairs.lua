-- made by SMUG#0558
-- gui library made by shidemuri on github (i stole from pendulum hub LOL)
-- this script was made so i could have all the scripts i use (and scripts my friends use) in one GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shidemuri/scripts/main/ui_lib.lua"))()
local Pendulum = Library:New("noras fe script hub")




local exploitstab = Pendulum:NewTab("Exploits")

local customcard = exploitstab:NewTextBar("custom card", "geenie", "", function() end)


exploitstab:NewButton("play custom card", "play ur card u just put in", function()
    print(customcard.Text)
    local args = {
        [1] = customcard.Text
    }

    game:GetService("ReplicatedStorage"):WaitForChild("CC"):FireServer(unpack(args))
end)

exploitstab:NewButton("Show Mystery Cards", "uhhh my dad got mad", function()
    while wait(2) do
        card = workspace.red.Value
        card1 = workspace.red.d1.Value
        card2 = workspace.red.d2.Value
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.RedPear.name.Text = card
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.RedPear.d1.Text = card1
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.RedPear.d2.Text = card2 
    end
end)

exploitstab:NewButton("spam reactions", "spams every reaction", function()
    local reactions = {"Skull", "Sob", "Cry", "Thumbs", "Thumbsd"}
    
    local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("ReactionSend")
    
    local function sendReaction(reaction)
        remoteEvent:FireServer(reaction)
    end
    
    local startTime = tick()
    
    while tick() - startTime < 10 do
        for _, reaction in ipairs(reactions) do
            sendReaction(reaction)
            task.wait()
            if tick() - startTime >= 10 then
                break
            end
        end
    end
end)

exploitstab:NewButton("show chat as judge", "yep", function()
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
end)

exploitstab:NewButton("Infinite Yield", "Executes Infinite Yield FE Admin", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

 

local gametab = Pendulum:NewTab("Game")

gametab:NewButton("Flipped Pears", "chooses", function()
    local args = {
        [1] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("NR"):FireServer(unpack(args))
end)

gametab:NewButton("Wild Pears", "chooses", function()
    local args = {
        [1] = 2
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("NR"):FireServer(unpack(args))
end)

gametab:NewButton("Rotten Pears", "chooses", function()
    local args = {
        [1] = 3
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("NR"):FireServer(unpack(args))
end)

gametab:NewButton("Mystery Pear", "chooses", function()
    local args = {
        [1] = 4
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("NR"):FireServer(unpack(args))
end)



local customtab = Pendulum:NewTab("Custom Deck")

local custom1 = customtab:NewTextBar("custom card 1", "geenie1", "", function()
end)
local custom2 = customtab:NewTextBar("custom card 2", "geenie2", "", function()
end)
local custom3 = customtab:NewTextBar("custom card 3", "geenie", "", function()
end)
local custom4 = customtab:NewTextBar("custom card 4", "geenie", "", function()
end)
local custom5 = customtab:NewTextBar("custom card 5", "geenie", "", function()
end)
local custom6 = customtab:NewTextBar("custom card 6", "geenie", "", function()
end)
local custom7 = customtab:NewTextBar("custom card 7", "geenie", "", function()
end)

customtab:NewButton("make deck", "creates custom deck", function()
    
    local customboxes = {custom1, custom2, custom3, custom4, custom5, custom6, custom7}

    for i = 1, 7 do
        if customboxes[i].Text ~= "" then
            local args = {
                customboxes[i].Text,
                i
            }
            game:GetService("ReplicatedStorage"):WaitForChild("CustomC"):FireServer(unpack(args))            
        end
    end
end)
