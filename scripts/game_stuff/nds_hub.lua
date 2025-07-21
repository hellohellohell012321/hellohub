-- ORIGINAL: https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/CHHub.lua
-- all i did was add a feature and remove some not working ones

local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/lib/library.lua"))()

--Locals
local runService = game:GetService("RunService")

--Keybind
BlekLib:SetUIBind(Enum.KeyCode.F)

local win = BlekLib:Create({
    Name = "CH Hub",
    StartupSound = {
        Toggle = false,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})

--Tabs
local exploittab = win:Tab('Exploits')
local teleporttab = win:Tab('Teleports')
local settings = win:Tab('Settings')
local credits = win:Tab('Credits')


--ExploitTab

exploittab:Button('No Fall Damage', function()
    
-- No Fall Damage by Pio (Discord: piomanly or ID: 311397526399877122) --
local runsvc = game:GetService("RunService")
local heartbeat = runsvc.Heartbeat
local rstepped = runsvc.RenderStepped

local lp = game.Players.LocalPlayer

local novel = Vector3.zero

local function nofalldamage(chr)
    local root = chr:WaitForChild("HumanoidRootPart")
    
    if root then
        local con
        con = heartbeat:Connect(function()
            if not root.Parent then
                con:Disconnect()
            end
            
            local oldvel = root.AssemblyLinearVelocity
            root.AssemblyLinearVelocity = novel
            
            rstepped:Wait()
            root.AssemblyLinearVelocity = oldvel
        end)
    end
end

nofalldamage(lp.Character)
lp.CharacterAdded:Connect(nofalldamage)

print("No Fall-Damage Script Loaded. Enjoy!")

end)

exploittab:Button('Touchable Lava/Avalanche', function(bool)
    
    
local targetFolder = workspace.Structure -- Replace with the specific folder reference if needed

-- Loop through all descendants of the folder
while task.wait() do
    
for _, item in ipairs(targetFolder:GetDescendants()) do
    if item:IsA("BasePart") and item.Name == "AvalanchePart" or item.Name == "Lava" then
        -- Look for the TouchInterest object in the part
        for _, child in ipairs(item:GetChildren()) do
            if child:IsA("TouchTransmitter") then
                child:Destroy() -- Remove the TouchInterest
                print("Removed TouchInterest from:", item.Name)
            end
        end
    end
end

end


    
end)

exploittab:Toggle('Walk On Water', function(bool)
	local water = game.Workspace.WaterLevel
	if not bool then 
		water.CanCollide = false
		water.Size = Vector3.new(10, 1, 10)
	end
	if bool then 
		water.CanCollide = true
		water.Size = Vector3.new(1000, 1, 1000)
	end
end)

exploittab:Toggle('Solid Island', function(bool)
	for _, v in pairs (game.workspace:GetDescendants())do
		if v.Name == 'LowerRocks' then
			v.CanCollide = bool
		end
	end
end)

exploittab:Button('Launch Rocket', function()
	pcall(function()
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"]["SPACESHIP!!"].Shuttle.IgnitionButton.ClickDetector)
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"].RocketStand.ConsoleLower.ReleaseButtonLower.ClickDetector)
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"].RocketStand.ConsoleUpper.ReleaseButtonUpper.ClickDetector)
		fireclickdetector(game:GetService("Workspace").Structure["Launch Land"].LoadingTower.Console.ReleaseEntryBridge.ClickDetector)
	end)
end)

exploittab:Button('Remove Sandstorm UI', function()
	game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
end)

exploittab:Button('Remove Blizzard UI', function()
	game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
end)


--TeleportTab
teleporttab:Button('Island', function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 49, 0)
end)

teleporttab:Button('Tower', function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 196, 288)
end)


--Settings
settings:Button('Destroy GUI', function()
    win:Exit()
end)


--Credits
credits:Label('GUI Library made by:')
credits:Label('laderite / https://github.com/laderite')
credits:Label(' ')
credits:Label('Toggle GUI code by:')
credits:Label('TRHP / that one guy | joe123')
credits:Label(' ')
credits:Label('Script Edited by:')
credits:Label('hellohellohell012321')
credits:Label(' ')