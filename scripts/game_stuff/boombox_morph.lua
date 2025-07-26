--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Gui to Lua
-- Version: 3.2

-- Instances:
game.StarterGui:SetCore("SendNotification", {
    Title = "Boombox HUB 2.0";
    Text = "Cracked By @Erased_Coder on YouTube";
    Duration = 20;
})

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local HUBS = Instance.new("TextButton")
local SCRIPTS = Instance.new("TextButton")
local SCRIPTSTAB = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local HUBSTAB = Instance.new("Frame")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local TextButton_10 = Instance.new("TextButton")

--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(106, 36, 140)
Main.BorderColor3 = Color3.fromRGB(88, 60, 113)
Main.BorderSizePixel = 3
Main.Position = UDim2.new(0.105105095, 0, 0.0909090936, 0)
Main.Size = UDim2.new(0, 525, 0, 306)
Main.Active = true
Main.Draggable = true

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextLabel.Size = UDim2.new(0, 149, 0, 306)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextLabel_2.BorderColor3 = Color3.fromRGB(106, 36, 140)
TextLabel_2.Size = UDim2.new(0, 525, 0, 36)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Boombox HUB 2.0"
TextLabel_2.TextColor3 = Color3.fromRGB(170, 0, 255)
TextLabel_2.TextSize = 23.000

HUBS.Name = "HUBS"
HUBS.Parent = Main
HUBS.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
HUBS.BorderColor3 = Color3.fromRGB(106, 36, 140)
HUBS.BorderSizePixel = 2
HUBS.Position = UDim2.new(0.0190476198, 0, 0.156862751, 0)
HUBS.Size = UDim2.new(0, 128, 0, 39)
HUBS.Font = Enum.Font.SourceSans
HUBS.Text = "BUILDS"
HUBS.TextColor3 = Color3.fromRGB(170, 0, 255)
HUBS.TextSize = 22.000
HUBS.MouseButton1Down:Connect(function()
    HUBSTAB.Visible = true
    SCRIPTSTAB.Visible = false
end)

	--//=================================\\
	--|| 	      USEFUL STUFS
	--\\=================================//

SCRIPTS.Name = "SCRIPTS"
SCRIPTS.Parent = Main
SCRIPTS.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
SCRIPTS.BorderColor3 = Color3.fromRGB(106, 36, 140)
SCRIPTS.BorderSizePixel = 2
SCRIPTS.Position = UDim2.new(0.0190476198, 0, 0.336601317, 0)
SCRIPTS.Size = UDim2.new(0, 128, 0, 39)
SCRIPTS.Font = Enum.Font.SourceSans
SCRIPTS.Text = "SCRIPTS"
SCRIPTS.TextColor3 = Color3.fromRGB(170, 0, 255)
SCRIPTS.TextSize = 22.000
SCRIPTS.MouseButton1Down:Connect(function()
    HUBSTAB.Visible = false
    SCRIPTSTAB.Visible = true
end)

SCRIPTSTAB.Name = "SCRIPTSTAB"
SCRIPTSTAB.Parent = Main
SCRIPTSTAB.BackgroundColor3 = Color3.fromRGB(106, 36, 140)
SCRIPTSTAB.Position = UDim2.new(0.283809513, 0, 0.117647059, 0)
SCRIPTSTAB.Size = UDim2.new(0, 376, 0, 270)

TextButton.Parent = SCRIPTSTAB
TextButton.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton.Position = UDim2.new(0.0345744677, 0, 0.0444444455, 0)
TextButton.Size = UDim2.new(0, 350, 0, 39)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Dupe Tool (10)"
TextButton.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton.TextSize = 31.000
TextButton.MouseButton1Down:Connect(function()
    local amount = 10
    
    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character
    local ogpos = character.HumanoidRootPart.Position

    for i = 1, amount do
        character:WaitForChild("HumanoidRootPart")
        
        for _, v in pairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") then v.Parent = character end
        end
        for _, v in pairs(character:GetChildren()) do
            if v:IsA("Tool") then v.Parent = character end
        end
        
        character.HumanoidRootPart.CFrame = CFrame.new(0, 9999999999, 0)
        
        repeat wait() until not plr.Backpack:FindFirstChildOfClass("Tool")
        wait(0.75)
        
        for _, v in pairs(character:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
                v.Anchored = true
            end
        end
        
        for _, v in pairs(character:GetChildren()) do
            if v:IsA("Tool") then v.Parent = workspace end
        end
        
        character:BreakJoints()
        
        plr.CharacterAdded:Wait()
        character = plr.Character
    end

    character:WaitForChild('HumanoidRootPart')
    wait(0.15)
    character.HumanoidRootPart.CFrame = CFrame.new(ogpos)

    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("Tool") then
            character.Humanoid:EquipTool(v)
        end
    end
end)

TextButton_2.Parent = SCRIPTSTAB
TextButton_2.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_2.Position = UDim2.new(0.0345744677, 0, 0.225925922, 0)
TextButton_2.Size = UDim2.new(0, 350, 0, 39)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Change Boombox color"
TextButton_2.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_2.TextSize = 31.000
TextButton_2.MouseButton1Down:Connect(function()
    Section:NewColorPicker("Color Selector", "Changes the color of tools", Color3.fromRGB(0, 0, 0), function(color)
        local plr = game:GetService("Players").LocalPlayer
        plr.Character.Humanoid:UnequipTools()

        local function changeToolColor(tool)
            for _, part in pairs(tool:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Color = color
                end
            end
        end

        for _, tool in pairs(plr.Backpack:GetChildren()) do
            if tool:IsA("Tool") then
                changeToolColor(tool)
            end
        end

        for _, tool in pairs(plr.Character:GetChildren()) do
            if tool:IsA("Tool") then
                changeToolColor(tool)
            end
        end
    end)
end)

TextButton_3.Parent = SCRIPTSTAB
TextButton_3.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_3.Position = UDim2.new(0.0345744677, 0, 0.42592594, 0)
TextButton_3.Size = UDim2.new(0, 350, 0, 39)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Delete Mesh"
TextButton_3.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_3.TextSize = 31.000
TextButton_3.MouseButton1Down:Connect(function()
    local plr = game.Players.LocalPlayer

    for _, tool in pairs(plr.Backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.Name == "BoomBox" then
            tool.Parent = plr.Character
            local handle = tool:FindFirstChild("Handle")
            if handle then
                for _, mesh in pairs(handle:GetChildren()) do
                    if mesh:IsA("SpecialMesh") or mesh:IsA("MeshPart") then
                        mesh:Destroy()
                    end
                end
            end
        end
    end
end)

TextButton_4.Parent = SCRIPTSTAB
TextButton_4.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_4.Position = UDim2.new(0.0345744677, 0, 0.626388907, 0)
TextButton_4.Size = UDim2.new(0, 350, 0, 39)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Orbit Tool (broken)"
TextButton_4.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_4.TextSize = 31.000
TextButton_4.MouseButton1Down:Connect(function()
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    if not char then return end

    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    for _, tool in pairs(plr.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = char
            local handle = tool:FindFirstChild("Handle")
            if handle then
                handle.Massless = true
                handle.CanCollide = false
                handle.Anchored = true

                local angle = 0
                local runService = game:GetService("RunService")
                local connection

                -- Noclip stuff
                local function noclip()
                    for _, part in pairs(char:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end

                connection = runService.Heartbeat:Connect(function()
                    if not char or not char.Parent or not hrp.Parent then
                        connection:Disconnect()
                        return
                    end

                    noclip()

                    angle = (angle + 5) % 360
                    local radius = 5
                    local xOffset = math.cos(math.rad(angle)) * radius
                    local zOffset = math.sin(math.rad(angle)) * radius
                    handle.CFrame = hrp.CFrame * CFrame.new(xOffset, 2, zOffset) * CFrame.Angles(0, math.rad(angle * 5), 0)
                end)
            end
        end
    end
end)

TextButton_5.Parent = SCRIPTSTAB
TextButton_5.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_5.Position = UDim2.new(0.0345744677, 0, 0.826388896, 0)
TextButton_5.Size = UDim2.new(0, 350, 0, 39)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Orbit Tool V2 (broken)"
TextButton_5.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_5.TextSize = 31.000
TextButton_5.MouseButton1Down:Connect(function()
    local HEIGHT = 1 -- HRP height
    local DISTANCE = 4 -- Distance from HRP

    local LP = game.Players.LocalPlayer
    local Mouse = LP:GetMouse()
    local Tools = {}
    local move = 0
    local Target = LP

    Mouse.Button1Down:Connect(function()
        if Mouse.Target and Mouse.Target:FindFirstAncestorOfClass("Model") then
            local Model = Mouse.Target:FindFirstAncestorOfClass("Model")
            if game.Players:GetPlayerFromCharacter(Model) then
                Target = game.Players:GetPlayerFromCharacter(Model)
                wait(1)
                Target = LP
            end
        end
    end)

    LP.Character.Humanoid:UnequipTools()

    for _, v in pairs(LP.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name:lower():find("boombox") then
            Tools[#Tools + 1] = v
        end
    end

    for _, v in pairs(Tools) do
        v.Parent = LP.Character
        v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
    end

    wait(.5)

    if LP.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        LP.Character["RightHand"]:Destroy()
    else
        LP.Character["Right Arm"]:Destroy()
    end

    for _, v in pairs(Tools) do
        task.spawn(function()
            while true do
                v.Parent = LP.Backpack
                task.wait()
                v.Parent = LP.Character
            end
        end)
    end

    spawn(function()
        wait(.3)
        for _, v in pairs(LP.Character.Humanoid:GetPlayingAnimationTracks()) do
            if v.Animation and v.Name == "ToolNoneAnim" then
                v:Stop()
            end
        end
    end)

    while LP.Character and LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health > 0 do
        coroutine.wrap(function()
            for _, v in pairs(Tools) do
                v.Handle.Velocity = Vector3.new(0, 0, 30)
                v.Handle.RotVelocity = Vector3.new(10000, 10000, 10000)
            end
        end)()

        for i, v in pairs(Tools) do
            if Target == LP then
                v.Handle.CFrame = CFrame.new((LP.Character.HumanoidRootPart.Position) * CFrame.Angles(0, math.rad(move + (i * (360 / #Tools))), 0) * CFrame.new(0, HEIGHT, DISTANCE)).Position
                    * CFrame.Angles(move / 20, move / 20, 0)
            else
                if Target.Character then
                    v.Handle.CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(move / 20, move / 20, 0)
                else
                    Target = LP
                end
            end
        end

        move = move + 1
        task.wait(0.01)
    end
end)

HUBSTAB.Name = "BUILDS"
HUBSTAB.Parent = Main
HUBSTAB.BackgroundColor3 = Color3.fromRGB(106, 36, 140)
HUBSTAB.Position = UDim2.new(0.283809513, 0, 0.117647059, 0)
HUBSTAB.Size = UDim2.new(0, 376, 0, 270)
HUBSTAB.Visible = false

TextButton_6.Parent = HUBSTAB
TextButton_6.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_6.Position = UDim2.new(0.0345744677, 0, 0.0444444455, 0)
TextButton_6.Size = UDim2.new(0, 350, 0, 39)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "AK - 47"
TextButton_6.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_6.TextSize = 31.000
TextButton_6.MouseButton1Down:Connect(function()
    local plr = game:GetService("Players").LocalPlayer
    plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()

    local positions = {
        {0.7, -0.5, -0.2, 50, -180, 3.13}, {0.5, -1.2, -0.2, 0, -90, 0},
        {-1.5, -1.2, -0.2, 0, -90, 0.03}, {-2.5, -1.2, -0.2, 0, -90, 0},
        {-4.6, -0.4, -0.2, 1.6, -98, 1.6}, {-7, -1.2, -0.2, 0, -90, 0},
        {-9.6, -1.2, -0.2, 0, -90, 0}, {-12.2, -1.2, -0.2, 0, -90, 0},
        {-1.2, -3.1, -0.2, 1.6, -15, 1.6}, {-3.3, -2.7, -0.2, 1.6, -25, 1.6},
        {-0.1, 1.8, -0.1, 1.6, 65, 1.6}, {1.3, 2.05, -0.1, 1.6, 90, 1.6},
        {3.15, 2.05, -0.1, 1.6, 90, 1.6}, {5.3, 2.05, -0.1, 1.6, 90, 1.6},
        {6.5, 4.1, -0.1, 1.6, 110, 1.6}, {-14.3, -1.2, -0.2, 0, -90, 0},
        {3.1, -1.2, -0.2, 0, -90, 0}, {5.2, -1.2, -0.2, 0, -90, 0},
        {0.25, 6.8, -0.05, 1.6, 0, 1.6}, {3.8, -4.4, -0.27, 1.6, -137, 1.6}
    }

    for i, pos in ipairs(positions) do
        if Tools[i] then
            Tools[i].Grip = CFrame.new(pos[1], pos[2], pos[3]) * CFrame.Angles(pos[4], math.rad(pos[5]), pos[6])
            Tools[i].Parent = plr.Character
        end
    end
end)

TextButton_7.Parent = HUBSTAB
TextButton_7.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_7.Position = UDim2.new(0.0345744677, 0, 0.225925922, 0)
TextButton_7.Size = UDim2.new(0, 350, 0, 39)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "Hide Boombox (1-10)"
TextButton_7.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_7.TextSize = 31.000

TextButton_7.MouseButton1Down:Connect(function()
    local plr = game:GetService("Players").LocalPlayer
    plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()
    
    Tools[1].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[1].Parent = plr.Character

    Tools[2].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[2].Parent = plr.Character

    Tools[3].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[3].Parent = plr.Character

    Tools[4].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[4].Parent = plr.Character

    Tools[5].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[5].Parent = plr.Character

    Tools[6].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[6].Parent = plr.Character

    Tools[7].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[7].Parent = plr.Character

    Tools[8].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[8].Parent = plr.Character

    Tools[9].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[9].Parent = plr.Character

    Tools[10].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
    Tools[10].Parent = plr.Character
end)

TextButton_8.Parent = HUBSTAB
TextButton_8.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_8.Position = UDim2.new(0.0345744677, 0, 0.42592594, 0)
TextButton_8.Size = UDim2.new(0, 350, 0, 39)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "RPG (13)"
TextButton_8.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_8.TextSize = 31.000
TextButton_8.MouseButton1Down:Connect(function()
    local plr = game:GetService("Players").LocalPlayer
    plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()

    if Tools[1] then
        Tools[1].Grip = CFrame.new(0.7, -0.5, -0.2) * CFrame.Angles(50, math.rad(-180), 3.13)
        Tools[1].Parent = plr.Character
    end

    if Tools[2] then
        Tools[2].Grip = CFrame.new(0.7, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98), 1.6)
        Tools[2].Parent = plr.Character
    end

    if Tools[3] then
        Tools[3].Grip = CFrame.new(2.5, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98), 1.6)
        Tools[3].Parent = plr.Character
    end

    if Tools[4] then
        Tools[4].Grip = CFrame.new(4.3, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98), 1.6)
        Tools[4].Parent = plr.Character
    end

    if Tools[5] then
        Tools[5].Grip = CFrame.new(-6.5, -1.6, -0.2) * CFrame.Angles(1.6, math.rad(-250), 1.6)
        Tools[5].Parent = plr.Character
    end

    if Tools[6] then
        Tools[6].Grip = CFrame.new(6, -2.55, -0.2) * CFrame.Angles(1.6, math.rad(-115), 1.6)
        Tools[6].Parent = plr.Character
    end

    if Tools[7] then
        Tools[7].Grip = CFrame.new(1.55, 7.2, 0.1) * CFrame.Angles(1.6, math.rad(-10), 1.6)
        Tools[7].Parent = plr.Character
    end

    if Tools[8] then
        Tools[8].Grip = CFrame.new(-1.1, -1.2, -0.23) * CFrame.Angles(1.6, math.rad(-98), 1.57)
        Tools[8].Parent = plr.Character
    end

    if Tools[9] then
        Tools[9].Grip = CFrame.new(-2.8, -1.17, -0.17) * CFrame.Angles(1.6, math.rad(-99), 1.6)
        Tools[9].Parent = plr.Character
    end

    if Tools[10] then
        Tools[10].Grip = CFrame.new(0, 2.7, -0.2) * CFrame.Angles(1.575, math.rad(-175), 1.575)
        Tools[10].Parent = plr.Character
    end

    if Tools[11] then
        Tools[11].Grip = CFrame.new(-4.6, -1.1, -0.17) * CFrame.Angles(1.6, math.rad(-100), 1.6)
        Tools[11].Parent = plr.Character
    end

    if Tools[12] then
        Tools[12].Grip = CFrame.new(-6.3, -1.1, -0.17) * CFrame.Angles(1.6, math.rad(-100), 1.6)
        Tools[12].Parent = plr.Character
    end

    if Tools[13] then
        Tools[13].Grip = CFrame.new(-1, 6, -0.45) * CFrame.Angles(1.6, math.rad(-205), 1.4)
        Tools[13].Parent = plr.Character
    end
end)

TextButton_9.Parent = HUBSTAB
TextButton_9.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_9.Position = UDim2.new(0.0345744677, 0, 0.626388907, 0)
TextButton_9.Size = UDim2.new(0, 350, 0, 39)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = "Sword (10)"
TextButton_9.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_9.TextSize = 31.000
TextButton_9.MouseButton1Down:Connect(function()
    local plr = game:GetService("Players").LocalPlayer
    plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()

    if Tools[1] then
        Tools[1].Grip = CFrame.new(0, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
        Tools[1].Parent = plr.Character
    end

    if Tools[2] then
        Tools[2].Grip = CFrame.new(0.15, 1.7, -0.02) * CFrame.Angles(1.58, math.rad(90), 1.58)
        Tools[2].Parent = plr.Character
    end

    if Tools[3] then
        Tools[3].Grip = CFrame.new(3, -0.9, -0.05) * CFrame.Angles(1.58, math.rad(-45), 1.58)
        Tools[3].Parent = plr.Character
    end

    if Tools[4] then
        Tools[4].Grip = CFrame.new(-3.1, -0.67, -0.049) * CFrame.Angles(1.58, math.rad(-135), 1.58)
        Tools[4].Parent = plr.Character
    end

    if Tools[5] then
        Tools[5].Grip = CFrame.new(2.2, -0.3, -0.03) * CFrame.Angles(1.58, math.rad(-360), 1.58)
        Tools[5].Parent = plr.Character
    end

    if Tools[6] then
        Tools[6].Grip = CFrame.new(4.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
        Tools[6].Parent = plr.Character
    end

    if Tools[7] then
        Tools[7].Grip = CFrame.new(6.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
        Tools[7].Parent = plr.Character
    end

    if Tools[8] then
        Tools[8].Grip = CFrame.new(8.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
        Tools[8].Parent = plr.Character
    end

    if Tools[9] then
        Tools[9].Grip = CFrame.new(10.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
        Tools[9].Parent = plr.Character
    end

    if Tools[10] then
        Tools[10].Grip = CFrame.new(12.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
        Tools[10].Parent = plr.Character
    end

    local hum = game.Players.LocalPlayer.Character.Humanoid

    for _,x in next, hum:GetPlayingAnimationTracks() do
        if x.Animation then
            x:Stop()
        end
    end
end)

TextButton_10.Parent = HUBSTAB
TextButton_10.BackgroundColor3 = Color3.fromRGB(9, 11, 20)
TextButton_10.Position = UDim2.new(0.0345744677, 0, 0.826388896, 0)
TextButton_10.Size = UDim2.new(0, 350, 0, 39)
TextButton_10.Font = Enum.Font.SourceSans
TextButton_10.Text = "Comming Soon..."
TextButton_10.TextColor3 = Color3.fromRGB(170, 0, 255)
TextButton_10.TextSize = 31.000
TextButton_10.MouseButton1Down:Connect(function()
    warn("Comming soon!")
end)
