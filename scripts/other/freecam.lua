-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local w = Instance.new("TextButton")
local s = Instance.new("TextButton")
local d = Instance.new("TextButton")
local a = Instance.new("TextButton")
local toggle = Instance.new("TextButton")
local close = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.900
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 175, 0, 117)

w.Name = "w"
w.Parent = Frame
w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
w.BorderColor3 = Color3.fromRGB(0, 0, 0)
w.BorderSizePixel = 3
w.Position = UDim2.new(0.354285717, 0, -0.00169516017, 0)
w.Size = UDim2.new(0, 50, 0, 50)
w.Font = Enum.Font.SourceSansBold
w.Text = "W"
w.TextColor3 = Color3.fromRGB(0, 0, 0)
w.TextScaled = true
w.TextSize = 14.000
w.TextWrapped = true

s.Name = "s"
s.Parent = Frame
s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
s.BorderColor3 = Color3.fromRGB(0, 0, 0)
s.BorderSizePixel = 3
s.Position = UDim2.new(0.354285717, 0, 0.586776853, 0)
s.Size = UDim2.new(0, 50, 0, 50)
s.Font = Enum.Font.SourceSansBold
s.Text = "S"
s.TextColor3 = Color3.fromRGB(0, 0, 0)
s.TextScaled = true
s.TextSize = 14.000
s.TextWrapped = true

d.Name = "d"
d.Parent = Frame
d.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
d.BorderColor3 = Color3.fromRGB(0, 0, 0)
d.BorderSizePixel = 3
d.Position = UDim2.new(0.712381065, 0, 0.586776853, 0)
d.Size = UDim2.new(0, 50, 0, 50)
d.Font = Enum.Font.SourceSansBold
d.Text = "D"
d.TextColor3 = Color3.fromRGB(0, 0, 0)
d.TextScaled = true
d.TextSize = 14.000
d.TextWrapped = true

a.Name = "a"
a.Parent = Frame
a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
a.BorderColor3 = Color3.fromRGB(0, 0, 0)
a.BorderSizePixel = 3
a.Position = UDim2.new(0, 0, 0.586776853, 0)
a.Size = UDim2.new(0, 50, 0, 50)
a.Font = Enum.Font.SourceSansBold
a.Text = "A"
a.TextColor3 = Color3.fromRGB(0, 0, 0)
a.TextScaled = true
a.TextSize = 14.000
a.TextWrapped = true

toggle.Name = "toggle"
toggle.Parent = Frame
toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
toggle.Size = UDim2.new(0, 50, 0, 21)
toggle.Font = Enum.Font.SourceSans
toggle.Text = "toggle"
toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
toggle.TextSize = 14.000

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.Position = UDim2.new(0.708571434, 0, 0, 0)
close.Size = UDim2.new(0, 50, 0, 21)
close.Font = Enum.Font.SourceSans
close.Text = "close"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local UserInputService = game:GetService("UserInputService")

local gui = Frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position =
        UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

UserInputService.InputChanged:Connect(
    function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end
)

local function startFc()

    local cam = workspace.CurrentCamera
    local UIS = game:GetService("UserInputService")
    local RS = game:GetService("RunService")
    local onMobile = not UIS.KeyboardEnabled
    local keysDown = {}
    local rotating = false

    if not game:IsLoaded() then game.Loaded:Wait() end

    cam.CameraType = Enum.CameraType.Scriptable

    local speed = 5
    local sens = .3

    speed /= 10
    if onMobile then sens*=2 end

    local function renderStepped()
        if rotating then
            local delta = UIS:GetMouseDelta()
            local cf = cam.CFrame
            local yAngle = cf:ToEulerAngles(Enum.RotationOrder.YZX)
            local newAmount = math.deg(yAngle)+delta.Y
            if newAmount > 65 or newAmount < -65 then
                if not (yAngle<0 and delta.Y<0) and not (yAngle>0 and delta.Y>0) then
                    delta = Vector2.new(delta.X,0)
                end 
            end
            cf *= CFrame.Angles(-math.rad(delta.Y),0,0)
            cf = CFrame.Angles(0,-math.rad(delta.X),0) * (cf - cf.Position) + cf.Position
            cf = CFrame.lookAt(cf.Position, cf.Position + cf.LookVector)
            if delta ~= Vector2.new(0,0) then cam.CFrame = cam.CFrame:Lerp(cf,sens) end
            UIS.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
        else
            UIS.MouseBehavior = Enum.MouseBehavior.Default
        end

        if keysDown["Enum.KeyCode.W"] then
            cam.CFrame *= CFrame.new(Vector3.new(0,0,-speed))
        end
        if keysDown["Enum.KeyCode.A"] then
            cam.CFrame *= CFrame.new(Vector3.new(-speed,0,0))
        end
        if keysDown["Enum.KeyCode.S"] then
            cam.CFrame *= CFrame.new(Vector3.new(0,0,speed))
        end
        if keysDown["Enum.KeyCode.D"] then
            cam.CFrame *= CFrame.new(Vector3.new(speed,0,0))
        end
    end

    RS.RenderStepped:Connect(renderStepped)

    local validKeys = {"w", "a", "s", "d", "Enum.KeyCode.W", "Enum.KeyCode.A", "Enum.KeyCode.S", "Enum.KeyCode.D"}

    UIS.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton2 or (Input.UserInputType == Enum.UserInputType.Touch and UIS:GetMouseLocation().X>(cam.ViewportSize.X/2)) then
            rotating = true
        end
    end)

    local buttons = {w, a, s, d}

    for _, button in ipairs(buttons) do
        button.MouseButton1Down:Connect(function()
            if button.Name == "w" then
                keysDown["Enum.KeyCode.W"] = true
            elseif button.Name == "a" then
                keysDown["Enum.KeyCode.A"] = true
            elseif button.Name == "s" then
                keysDown["Enum.KeyCode.S"] = true
            elseif button.Name == "d" then
                keysDown["Enum.KeyCode.D"] = true
            end
        end)
    end

    UIS.InputEnded:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton2 or (Input.UserInputType == Enum.UserInputType.Touch and UIS:GetMouseLocation().X>(cam.ViewportSize.X/2)) then
            rotating = false
        end
    end)

    for _, button in ipairs(buttons) do
        button.MouseButton1Up:Connect(function()
            if button.Name == "w" then
                keysDown["Enum.KeyCode.W"] = false
            elseif button.Name == "a" then
                keysDown["Enum.KeyCode.A"] = false
            elseif button.Name == "s" then
                keysDown["Enum.KeyCode.S"] = false
            elseif button.Name == "d" then
                keysDown["Enum.KeyCode.D"] = false
            end
        end)
    end
end

local function stopFc()
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until game.Players.LocalPlayer.Character ~= nil
	workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	game.Players.LocalPlayergame.Players.LocalPlayer.CameraMinZoomDistance = 0.5
	game.Players.LocalPlayer.CameraMaxZoomDistance = 400
	game.Players.LocalPlayer.CameraMode = "Classic"
	game.Players.LocalPlayer.Character.Head.Anchored = false
end

toggle.MouseButton1Click:Connect(function()
    if toggle.Text == "toggle" then
        toggle.Text = "stop"
        startFc()
    else
        toggle.Text = "toggle"
        stopFc()
    end
end)
