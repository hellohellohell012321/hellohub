-- made by SMUG#0558
-- gui library made by shidemuri on github (i stole from pendulum hub LOL)
-- this script was made so i could have all the scripts i use (and scripts my friends use) in one GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shidemuri/scripts/main/ui_lib.lua"))()
local Pendulum = Library:New("noras fe script hub")
local Luckygiver = Pendulum:NewTab("FE Scripts")

local app = Pendulum:NewTab("Apples to Pears")

local mydadismad = Pendulum:NewTab("Custom Deck")



Luckygiver:NewButton("walk on walls", "walking on walls pretty basic", function()
loadstring(game:HttpGet("https://pastebin.com/raw/5T7KsEWy", true))()
		end)

Luckygiver:NewButton("Infinite Yield", "Executes Infinite Yield FE Admin", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
        mydadismad:NewLabel("THIS WILL MAKE YOU REJOIN!!")
        mydadismad:NewLabel("play a custom card via other menu for 2 cards")
 

        
        app:NewButton("Wild Pears", "chooses wild pears", function()
local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage"):WaitForChild("NR"):FireServer(unpack(args))
        end)
                app:NewButton("LOOP Wild Pears", "chooses wild pears forever :b", function()
        while wait(2) do
local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage"):WaitForChild("NR"):FireServer(unpack(args))
end
        end)

         local customcard = app:NewTextBar("custom card", "geenie", "", function()
        end)
                    app:NewButton("play custom card", "play ur card u just put in", function()
        print(customcard.Text)
        local args = {
    [1] = customcard.Text
}

game:GetService("ReplicatedStorage"):WaitForChild("CC"):FireServer(unpack(args))
                    end)
    
    
    
    
    
    
    
    

         app:NewButton("Show Mystery Cards", "uhhh my dad got mad", function()
         while wait(2) do
card = workspace.red.Value
card1 = workspace.red.d1.Value
card2 = workspace.red.d2.Value
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.RedPear.name.Text = card
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.RedPear.d1.Text = card1
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.RedPear.d2.Text = card2 
end
         end)
        
        
        
        
        app:NewButton("spam reactions", "spams every reaction", function()
    -- List of arguments to loop through
local reactions = {"Skull", "Sob", "Cry", "Thumbs", "Thumbsd"}

-- Reference to the remote event
local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("ReactionSend")

-- Function to send the reaction
local function sendReaction(reaction)
    remoteEvent:FireServer(reaction)
end

-- Start time
local startTime = tick()

-- Loop for 10 seconds
while tick() - startTime < 10 do
    for _, reaction in ipairs(reactions) do
        sendReaction(reaction)
        wait(0) -- Adjust the wait time as needed
        if tick() - startTime >= 10 then
            break
        end
    end
end
end)





local custom1 = mydadismad:NewTextBar("custom card 1", "geenie1", "", function()
end)
local custom2 = mydadismad:NewTextBar("custom card 2", "geenie2", "", function()
end)
local custom3 = mydadismad:NewTextBar("custom card 3", "geenie", "", function()
end)
local custom4 = mydadismad:NewTextBar("custom card 4", "geenie", "", function()
end)
local custom5 = mydadismad:NewTextBar("custom card 5", "geenie", "", function()
end)
local custom6 = mydadismad:NewTextBar("custom card 6", "geenie", "", function()
end)
local custom7 = mydadismad:NewTextBar("custom card 7", "geenie", "", function()
end)
mydadismad:NewButton("make deck", "creates custom deck", function()

 local args = {
    [1] = custom1.Text,
    [2] = custom2.Text,
    [3] = custom3.Text,
    [4] = custom4.Text,
    [5] = custom5.Text,
    [6] = custom6.Text,
    [7] = custom7.Text
}

game:GetService("ReplicatedStorage"):WaitForChild("UpdateCardData"):FireServer(unpack(args))
        wait(1)
        local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer



ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end)