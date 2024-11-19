pcall(function()
    -- Variables
    local uis = game:GetService("UserInputService")
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()

    -- Function to handle the attachment logic
    local function attachToNPC()
        -- Check for Target
        if mouse.Target then
            local npc = mouse.Target
            local npcparts = mouse.Target.Parent
            local PlayerCharacter = player.Character
            local PlayerRootPart = PlayerCharacter.HumanoidRootPart

            local A0 = Instance.new("Attachment")
            local AP = Instance.new("AlignPosition")
            local AO = Instance.new("AlignOrientation")
            local A1 = Instance.new("Attachment")

            -- Make NPC parts non-collidable
            for _, v in pairs(npcparts:GetDescendants()) do
                if (v:IsA("BasePart") or v:IsA("Part")) and v.Name ~= "HumanoidRootPart" then
                    v.CanCollide = false
                end
            end

            -- Make NPC parts collidable again on pressing 'e'
            local bind = "e" -- has to be lowercase
            uis.InputBegan:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.E then
                    for _, v in pairs(npcparts:GetDescendants()) do
                        if (v:IsA("BasePart") or v:IsA("Part")) and v.Name ~= "HumanoidRootPart" then
                            v.CanCollide = true
                        end
                    end
                end
            end)

            -- Attach AlignPosition and AlignOrientation to the NPC
            A0.Parent = npc
            AP.Parent = npc
            AO.Parent = npc
            AP.Responsiveness = 200
            AP.MaxForce = math.huge
            AO.MaxTorque = math.huge
            AO.Responsiveness = 200
            AP.Attachment0 = A0
            AP.Attachment1 = A1
            AO.Attachment1 = A1
            AO.Attachment0 = A0
            A1.Parent = PlayerRootPart
        end
    end

    -- Connect the function to the 'C' key press
    uis.InputBegan:Connect(function(input, gameProcessedEvent)
        if input.KeyCode == Enum.KeyCode.C and not gameProcessedEvent then
            attachToNPC()
        end
    end)

end)
