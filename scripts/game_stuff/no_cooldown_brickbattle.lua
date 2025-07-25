local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local bombing = false

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BombStatusGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 200, 0, 30)
label.Position = UDim2.new(0.5, -100, 0.1, 0)
label.BackgroundTransparency = 1
label.Text = "bomb spamming: off"
label.TextSize = 20
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextStrokeTransparency = 0.5
label.Parent = screenGui

task.spawn(function()
	while true do
		if bombing then
			local char = player.Character
			if char then
				local tool = char:FindFirstChild("Timebomb")
				if tool then
					for _, conn in ipairs(getconnections(tool.Activated)) do
						conn:Fire()
					end
				end
			end
		end
		task.wait()
	end
end)

-- Key press toggle
UserInputService.InputBegan:Connect(function(input, processed)
	if processed then return end
	if input.KeyCode == Enum.KeyCode.R then
		bombing = not bombing
		label.Text = "bomb spamming: " .. (bombing and "on" or "off")
	end
end)
