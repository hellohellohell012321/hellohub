

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "NOTHING X HUB",
    SubTitle = "Free Boombox",
    TabWidth = 30,
    Size = UDim2.fromOffset(400, 350),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftAlt
})
local Tabs = {
    P = Window:AddTab({ Title = "", Icon = "play" }),
                    D = Window:AddTab({ Title = "", Icon = "copy" }),
        L = Window:AddTab({ Title = "", Icon = "view" }),
                F = Window:AddTab({ Title = "", Icon = "laugh" }),
}
game:GetService("CoreGui").ScreenGui:GetChildren()[2].Frame.Frame.BackgroundTransparency = 1
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6]:GetChildren()[5]:Destroy()
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6]:GetChildren()[4]:Destroy()
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[5]:Destroy()
game:GetService("CoreGui").ScreenGui:GetChildren()[2].Frame.BackgroundTransparency = 1
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local speaker = Players.LocalPlayer
local LocalPlayer = Players.LocalPlayer
local power = 100
local walkflinging = false
local function getRoot(character)
    return character and character:FindFirstChild("HumanoidRootPart")
end
local function toggleWalkFling()
    walkflinging = not walkflinging
    if walkflinging then
        Fluent:Notify({
            Title = "NOTHING X HUB",
            Content = "ON - WalkFling",
            Duration = 4
        })
    else
        Fluent:Notify({
            Title = "NOTHING X HUB",
            Content = "OFF - WalkFling",
            Duration = 4
        })
    end
    if not walkflinging then return end
    local character = speaker.Character
    local root = getRoot(character)
    local vel, movel = nil, 0.1
    while walkflinging do
        RunService.Heartbeat:Wait()
        character = speaker.Character
        root = getRoot(character)
        if character and character.Parent and root and root.Parent then
            vel = root.Velocity
            root.Velocity = vel * power + Vector3.new(0, power, 0)
            RunService.RenderStepped:Wait()
            root.Velocity = vel
            RunService.Stepped:Wait()
            root.Velocity = vel + Vector3.new(0, movel, 0)
            movel = movel * -1
        end
    end
end
local function flingOtherPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= speaker and player.Character then
            local root = getRoot(player.Character)
            if root then
                root.Velocity = Vector3.new(0, power, 0)
            end
        end
    end
end
Tabs.F:AddKeybind("Keybind", {
    Title = "Walk Fling", 
    Mode = "Toggle",
    Default = "F", 
    Callback = function()
        toggleWalkFling()
    end
})
Tabs.F:AddButton({
    Title = "Walk Fling",
    Callback = function()
        toggleWalkFling()
    end
})
local Input = Tabs.F:AddInput("Input", {
    Title = "Power fling",
    Default = tostring(power),
    Placeholder = "Enter Power (or use inf)",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        if Value:lower() == "inf" then
            power = 9999999999999999999999999999999999999
        else
            power = tonumber(Value) or power
        end
    end
})

local flingOn = false
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local flingPowers = {500, 1000, 1500, 2000, 2500, 3000, 9000}

local function flingAll()
    task.spawn(function()
        while flingOn do
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local target = player.Character:FindFirstChild("HumanoidRootPart")
                    if hrp and target then
                        local offset = (target.Position - hrp.Position).Unit * 0.19
                        hrp.CFrame = target.CFrame + offset
                        
                        local power = flingPowers[math.random(1, #flingPowers)]
                        
                        hrp.AssemblyLinearVelocity = offset.Unit * power
                        task.wait()
                        hrp.AssemblyLinearVelocity = Vector3.zero
                    end
                end
            end
            task.wait()
        end
    end)
end





local Toggle = Tabs.F:AddToggle("Flingall", {
    Title = "Fling All",
    Default = false,
    Callback = function(state)
        flingOn = state
        if state then
            flingAll()
        else
        end
    end
})

 local audioIdInput = Tabs.P:AddInput("InputID", {
    Title = "ID",
    Default = "",  
    Placeholder = "ID",
    Numeric = true,
    Finished = false,  
    Callback = function(Value)
    end
})   
Tabs.P:AddButton({
    Title = "Mass-play",
    Description = "",
    Callback = function()
        local audioId = audioIdInput.Value
        local plr = game.Players.LocalPlayer
        if not plr.Character then
            plr.CharacterAdded:Wait()
        end
        if not plr.Character or audioId == "" then return end
        local tools = {}
        for _, v in pairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                table.insert(tools, v)
            end
        end
        for _, v in pairs(plr.Character:GetChildren()) do
            if v:IsA("Tool") then
                table.insert(tools, v)
            end
        end
        for _, tool in pairs(tools) do
            if tool.Parent ~= plr.Character then
                tool.Parent = plr.Character
            end
        end
        local remotes = {}
        for _, tool in pairs(tools) do
            local remote = tool:FindFirstChildOfClass("RemoteEvent")
            if remote then
                table.insert(remotes, {Tool = tool, Remote = remote})
            end
        end
        for _, remoteData in pairs(remotes) do
            remoteData.Remote:FireServer("StopSong")
        end
        task.spawn(function()
            local allIdle = false
            while not allIdle do
                allIdle = true
                for _, remoteData in pairs(remotes) do
                    local tool = remoteData.Tool
                    local sound = tool:FindFirstChildOfClass("Sound")
                    if sound and sound.Playing then
                        allIdle = false
                        break
                    end
                end
                task.wait(0.1)
            end
            for _, remoteData in pairs(remotes) do
                remoteData.Remote:FireServer("PlaySong", audioId:gsub("%D+", ""))
            end
        end)
    end
})
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Toggle = Tabs.P:AddToggle("Deletepop", {
    Title = "Off pop Bombox ID",
    Default = false
})
local running = false
local heartbeatConnection
local function setGuiState(enabled)
    local gui = LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("ChooseSongGui")
    if gui then
        gui.Enabled = enabled
    end
end
local function monitorGui()
    if heartbeatConnection then heartbeatConnection:Disconnect() end
    heartbeatConnection = RunService.Heartbeat:Connect(function()
        if not running then return end
        setGuiState(false) 
    end)
end
Toggle:OnChanged(function(value)
    running = value
    if value then
        monitorGui()
    else
        if heartbeatConnection then
            heartbeatConnection:Disconnect()
            heartbeatConnection = nil
        end
        setGuiState(true) 
    end
end)
local Toggle = Tabs.P:AddToggle("stealtools", {
    Title = "Steal Tools",
    Default = false,
    Callback = function(value)
        _G.grabtools = value  
    end
})
_G.grabtools = false
game:GetService("RunService").Heartbeat:Connect(function()
    local humanoid = game.Players.LocalPlayer.Character and 
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    if _G.grabtools and humanoid then
        for _, item in pairs(workspace:GetChildren()) do
            coroutine.wrap(function()
                if item:IsA("Tool") then
                    humanoid:EquipTool(item)
                end
            end)()
        end
    end
end)
local Toggle = Tabs.F:AddToggle("antiflingtog", {Title = "Anti Fling", Default = false})
local connection
Toggle:OnChanged(function(value)
    if value then
        connection = game:GetService("RunService").Stepped:Connect(function()
            local localPlayer = game:GetService("Players").LocalPlayer
            local localCharacter = localPlayer.Character
            if not localCharacter or not localCharacter.PrimaryPart then return end
            local localPosition = localCharacter.PrimaryPart.Position
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player ~= localPlayer and player.Character and player.Character.PrimaryPart then
                    local distance = (player.Character.PrimaryPart.Position - localPosition).Magnitude
                    if distance <= 75 then 
                        for _, v in pairs(player.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false 
                            end
                        end
                    end
                end
            end
        end)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game:GetService("Players").LocalPlayer and player.Character then
                for _, v in pairs(player.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = true 
                    end
                end
            end
        end
    end
end)
local function getPlayerNames()
    local names = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    return names
end

local bangLoop, bangAnim, bangDied
local selectedPlayerName = nil
local bangActive = false

local dropdown = Tabs.F:AddDropdown("Dropdown", {
    Title = "Choose Player",
    Values = getPlayerNames(),
    Multi = false,
    Default = "None",
    Callback = function(value)
        selectedPlayerName = value
    end
})
local function getPlayerNames()
    local names = { "None" }
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    return names
end

local function updateDropdownValues()
    local currentValues = getPlayerNames()
    dropdown:SetValues(currentValues)

    if not table.find(currentValues, selectedPlayerName) then
        selectedPlayerName = "None"
        dropdown:SetValue("None")
    end
end


updateDropdownValues()

Players.PlayerAdded:Connect(updateDropdownValues)
Players.PlayerRemoving:Connect(updateDropdownValues)


function toggleBang()
    if bangActive then
        if bangLoop then bangLoop:Disconnect() bangLoop = nil end
        if bangDied then bangDied:Disconnect() bangDied = nil end
        if bangAnim then
            bangAnim:Stop()
            bangAnim:Destroy()
            bangAnim = nil
        end
        bangActive = false
        Fluent:Notify({ Title = "NOTHING X HUB", Content = "OFF - Bang", Duration = 2 })
        return
    end

    if not selectedPlayerName or selectedPlayerName == "None" then
        Fluent:Notify({ Title = "NOTHING X HUB", Content = "No player selected - Bang", Duration = 3 })
        return
    end

    local target = Players:FindFirstChild(selectedPlayerName)
    if not target or not target.Character then return end
    local char = LocalPlayer.Character
    if not char then return end

    local humanoid = char:FindFirstChildWhichIsA("Humanoid")
    if not humanoid then return end

    local anim = Instance.new("Animation")
    anim.AnimationId = humanoid.RigType == Enum.HumanoidRigType.R15 and "rbxassetid://5918726674" or "rbxassetid://148840371"
    local loaded = humanoid:LoadAnimation(anim)
    loaded:Play(0.1, 1, 1)
    loaded:AdjustSpeed(3)

    bangAnim = loaded
    bangActive = true

    bangDied = humanoid.Died:Connect(function()
        if bangLoop then bangLoop:Disconnect() end
        loaded:Stop()
        anim:Destroy()
        bangDied:Disconnect()
        bangActive = false
    end)

    local offset = CFrame.new(0, 0, 1.1)
    bangLoop = RunService.Stepped:Connect(function()
        pcall(function()
            local root = char:FindFirstChild("HumanoidRootPart")
            local otherRoot = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
            if root and otherRoot then
                root.CFrame = otherRoot.CFrame * offset
            end
        end)
    end)

    Fluent:Notify({ Title = "NOTHING X HUB", Content = "ON - Bang", Duration = 2 })
end

Tabs.F:AddKeybind("Bang Keybind", {
    Title = "Bang",
    Mode = "Toggle",
    Default = "G",
    Callback = function()
        toggleBang()
    end
})

Tabs.F:AddButton({
    Title = "Bang",
    Callback = function()
        toggleBang()
    end
})

Tabs.F:AddButton({
    Title = "Drop All Tools",
    Description = "",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local character = plr.Character or plr.CharacterAdded:Wait()
        for _, tool in pairs(plr.Backpack:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Parent = character
            end
        end
        for _, tool in pairs(character:GetChildren()) do
            if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
                tool.Parent = workspace
            end
        end
    end
})

local isRunning = false
local paragraph = nil
local dupAmount = 0
local currentDup = 0
local function updateParagraph()
    local text = string.format("%d/%d", currentDup, dupAmount)
    if paragraph then
        paragraph:Destroy()
        paragraph = nil
    end
    if isRunning then
        paragraph = Tabs.D:AddParagraph({
            Title = "Count ",
            Content = text
        })
    end
end
local function waitForFullHealth(character)
    if not character or not character:FindFirstChild("Humanoid") then
        return false
    end
    local humanoid = character:FindFirstChild("Humanoid")
    while humanoid and humanoid.Health < 100 do
        task.wait(0.01)
        if not character or not character:FindFirstChild("Humanoid") then
            return false
        end
        humanoid = character:FindFirstChild("Humanoid")
    end
    return true
end
local function checkToolsEquipped(plr, character)
    for attempt = 1, 5 do
        local backpackTools = plr.Backpack:GetChildren()
        local allEquipped = true
        for _, tool in pairs(backpackTools) do
            if tool:IsA("Tool") and tool.Parent == plr.Backpack then
                allEquipped = false
                break
            end
        end
        if allEquipped then
            return true
        end
        task.wait(0.050)
    end
    return false
end
local function giveAllTools()
    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character
    if not character or not character:FindFirstChild("Humanoid") or character.Humanoid.Health <= 0 then
        plr.CharacterAdded:Wait()
        character = plr.Character
        if not character then
            return
        end
    end
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
    local humanoid = character:WaitForChild("Humanoid", 5)
    if not humanoidRootPart or not humanoid then
        return
    end
    humanoidRootPart.CFrame = CFrame.new(391.729706, 636.912598, 372.206818)
    humanoidRootPart.Anchored = true
    for _, tool in pairs(workspace:GetChildren()) do
        if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
            tool.Handle.CFrame = humanoidRootPart.CFrame
            task.wait(0.2)
        end
    end
    humanoidRootPart.Anchored = false
    humanoidRootPart.CFrame = CFrame.new(522.925903, 303.751465, 455.382904)
end


Tabs.D:AddInput("InputDUP", {
    Title = "Dup Tools",
    Default = "",
    Placeholder = "Enter Number",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
        local amount = tonumber(Value)
        if not amount or amount <= 0 then
            dupAmount = 0
        else
            dupAmount = amount
        end
    end
})
Tabs.D:AddButton({
    Title = "Start/Stop",
    Callback = function()
        local plr = game:GetService("Players").LocalPlayer
        local character = plr.Character
        isRunning = not isRunning
        if isRunning then
            if dupAmount <= 0 then
                isRunning = false
                return
            end
            if not character or not character:FindFirstChild("HumanoidRootPart") or not character:FindFirstChild("Humanoid") then
                isRunning = false
                return
            end
            local ogpos = character.HumanoidRootPart.Position
            currentDup = 0
            updateParagraph()
            for i = 1, dupAmount do
                if not isRunning then
                    break 
                end
                currentDup = i
                character:WaitForChild("Humanoid", 5)
                character.HumanoidRootPart.CFrame = CFrame.new(-56.0073318, 587.46991, 382.767883)
                 task.wait(0.25)
                for _, tool in pairs(plr.Backpack:GetChildren()) do
                    if tool:IsA("Tool") then
                        tool.Parent = character
                    end
                end
                checkToolsEquipped(plr, character)
                for _, tool in pairs(character:GetChildren()) do
                    if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
                        tool.Parent = workspace
                    end
                end
                while character.Humanoid.Health <= 0 do
                    plr.CharacterAdded:Wait()
                    character = plr.Character
                end
                character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                plr.CharacterAdded:Wait()
                character = plr.Character
                character:WaitForChild("Humanoid", 5)
                updateParagraph()
            end
            giveAllTools()
            if paragraph then
                paragraph:Destroy()
                paragraph = nil
            end
            isRunning = false
        else
            isRunning = false
            giveAllTools()
            if paragraph then
                paragraph:Destroy()
                paragraph = nil
            end
        end
    end
})
local SoundService = game:GetService("SoundService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local MarketplaceService = game:GetService("MarketplaceService")
local scanning = false
local createdButtons = {}
local selectedaudio = nil
local running = false
local problematicKeywords = {"[Content Deleted]", "copyright", "autor"}
local Toggle = Tabs.L:AddToggle("LOGID", {
    Title = "Logger ID",
    Default = false,
    Callback = function(value)
        scanning = value
        if not value then
            for soundId, button in pairs(createdButtons) do
                if button and button.Destroy then
                    button:Destroy()
                end
            end
            createdButtons = {}
            selectedaudio = nil
        end
    end
})
spawn(function()
    while true do
        if not scanning then
            for soundId, button in pairs(createdButtons) do
                if button and button.Destroy then
                    button:Destroy()
                    createdButtons[soundId] = nil
                end
            end
        end
        wait(0.1)
    end
end)
local function getSoundName(soundId)
    local id = string.match(soundId, "%d+$")
    if not id then return "Unnamed Sound" end
    local success, result = pcall(function()
        return MarketplaceService:GetProductInfo(tonumber(id)).Name
    end)
    return success and result or "Unnamed Sound"
end
local function isProblematicName(name)
    if not name then return false end
    name = string.lower(name)
    for _, keyword in ipairs(problematicKeywords) do
        if name == keyword or string.find(name, keyword, 1, true) then
            return true
        end
    end
    return false
end
local function createSoundButton(sound)
    local soundId = tostring(sound.SoundId)
    if not soundId or soundId == "" or soundId == "rbxassetid://" then return nil end
    if createdButtons[soundId] then return nil end
    local soundName = getSoundName(soundId)
    if soundName == "Unnamed Sound" or isProblematicName(soundName) then
        sound:Destroy()
        return nil
    end
    local cleanId = string.gsub(soundId, "rbxassetid://", "")
    local button = Tabs.L:AddButton({
        Title = soundName,
        Description = cleanId,
        Callback = function()
            setclipboard(cleanId)
            selectedaudio = soundId
        end
    })
    createdButtons[soundId] = button
    return button
end
local function scanBoomBoxSounds()
    if not running and scanning then
        running = true
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer then
                local backpack = player:FindFirstChild("Backpack")
                if backpack and backpack:FindFirstChild("BoomBox") then
                    local handle = backpack.BoomBox:FindFirstChild("Handle")
                    if handle and handle:FindFirstChild("Sound") then
                        createSoundButton(handle.Sound)
                    end
                end
                local playerFolder = Workspace:FindFirstChild(player.Name)
                if playerFolder and playerFolder:FindFirstChild("BoomBox") then
                    local handle = playerFolder.BoomBox:FindFirstChild("Handle")
                    if handle and handle:FindFirstChild("Sound") then
                        createSoundButton(handle.Sound)
                    end
                end
            end
        end
        for _, sound in pairs(SoundService:GetChildren()) do
            if sound:IsA("Sound") then
                createSoundButton(sound)
            end
        end
        running = false
    end
end
Players.PlayerAdded:Connect(function(player)
    if player ~= Players.LocalPlayer and scanning then
        local backpack = player:WaitForChild("Backpack", 5)
        if backpack and backpack:FindFirstChild("BoomBox") then
            local handle = backpack.BoomBox:FindFirstChild("Handle")
            if handle and handle:FindFirstChild("Sound") then
                createSoundButton(handle.Sound)
            end
        end
        local playerFolder = Workspace:FindFirstChild(player.Name)
        if playerFolder and playerFolder:FindFirstChild("BoomBox") then
            local handle = playerFolder.BoomBox:FindFirstChild("Handle")
            if handle and handle:FindFirstChild("Sound") then
                createSoundButton(handle.Sound)
            end
        end
    end
end)
spawn(function()
    while true do
        if scanning then
            scanBoomBoxSounds()
        end
        wait()
    end
end)
Window:SelectTab(1)
local LocalPlayer = Players.LocalPlayer
local currentParagraph = nil
local lastSoundId = nil
local lastName = nil

local function XgetSoundName(soundId)
    local id = string.match(soundId, "%d+$")
    if not id then return "Unnamed Sound" end
    local success, result = pcall(function()
        return MarketplaceService:GetProductInfo(tonumber(id)).Name
    end)
    return success and result or "Unnamed Sound"
end

local function getSoundDetails()
    local sound = nil
    local soundId = nil
    local name = nil
    local success, _ = pcall(function()
        if LocalPlayer.Backpack:FindFirstChild("BoomBox") and
           LocalPlayer.Backpack.BoomBox:FindFirstChild("Handle") and
           LocalPlayer.Backpack.BoomBox.Handle:FindFirstChild("Sound") then
            sound = LocalPlayer.Backpack.BoomBox.Handle.Sound
        elseif Workspace:FindFirstChild(LocalPlayer.Name) and
               Workspace[LocalPlayer.Name]:FindFirstChild("BoomBox") and
               Workspace[LocalPlayer.Name].BoomBox:FindFirstChild("Handle") and
               Workspace[LocalPlayer.Name].BoomBox.Handle:FindFirstChild("Sound") then
            sound = Workspace[LocalPlayer.Name].BoomBox.Handle.Sound
        end
    end)
    if not success then
        return nil, nil, nil
    end
    if sound then
        local success, result = pcall(function()
            soundId = sound.SoundId:gsub("rbxassetid://", "")
            name = XgetSoundName(sound.SoundId)
        end)
        if not success then
            return nil, nil, nil
        end
    end
    return sound, soundId, name
end

local function updateParagraph()
    local success, sound, soundId, name = pcall(getSoundDetails)
    if not success then
        return
    end
    if sound and soundId and name and soundId ~= "" and name ~= "Unnamed Sound" and
       (soundId ~= lastSoundId or name ~= lastName) then
        local destroySuccess = pcall(function()
            if currentParagraph then
                currentParagraph:Destroy()
                currentParagraph = nil
            end
        end)
        if not destroySuccess then
            return
        end
        local createSuccess, newParagraph = pcall(function()
            return Tabs.P:AddParagraph({
                Title = name,
                Content = soundId
            })
        end)
        if createSuccess then
            currentParagraph = newParagraph
            lastSoundId = soundId
            lastName = name
        end
    end
end

while true do
    local success, _ = pcall(updateParagraph)
    wait(0.1)
end
