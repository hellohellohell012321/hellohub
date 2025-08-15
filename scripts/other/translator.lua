-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local container = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local translator = Instance.new("Frame")
local totranslate = Instance.new("TextLabel")
local translatebutton = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local translated = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.359348208, 0, 0.347184986, 0)
Frame.Size = UDim2.new(0, 313, 0, 201)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 0.300
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 440, 0, 42)
title.Font = Enum.Font.SourceSansBold
title.Text = "tuff translator"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 39.000

container.Name = "container"
container.Parent = Frame
container.Active = true
container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
container.BackgroundTransparency = 0.800
container.BorderColor3 = Color3.fromRGB(0, 0, 0)
container.BorderSizePixel = 0
container.Position = UDim2.new(0, 0, 0.208955228, 0)
container.Size = UDim2.new(0, 313, 0, 159)
container.ScrollBarThickness = 5

UIListLayout.Parent = container
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

UIPadding.Parent = container
UIPadding.PaddingTop = UDim.new(0, 10)

translator.Name = "translator"
translator.Parent = Frame
translator.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
translator.BackgroundTransparency = 0.800
translator.BorderColor3 = Color3.fromRGB(0, 0, 0)
translator.BorderSizePixel = 0
translator.Position = UDim2.new(1, 0, 0.208955228, 0)
translator.Size = UDim2.new(0, 127, 0, 159)

totranslate.Name = "totranslate"
totranslate.Parent = translator
totranslate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
totranslate.BorderColor3 = Color3.fromRGB(0, 0, 0)
totranslate.BorderSizePixel = 0
totranslate.Position = UDim2.new(0.05511811, 0, 0.0497512445, 0)
totranslate.Size = UDim2.new(0, 113, 0, 53)
totranslate.Font = Enum.Font.SourceSans
totranslate.Text = ""
totranslate.TextColor3 = Color3.fromRGB(0, 0, 0)
totranslate.TextScaled = true
totranslate.TextSize = 14.000
totranslate.TextWrapped = true

translatebutton.Name = "translatebutton"
translatebutton.Parent = translator
translatebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
translatebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
translatebutton.BorderSizePixel = 0
translatebutton.Position = UDim2.new(0.051181104, 0, 0.29743591, 0)
translatebutton.Size = UDim2.new(0, 113, 0, 31)
translatebutton.Font = Enum.Font.SourceSansBold
translatebutton.Text = "translate! (english)"
translatebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
translatebutton.TextSize = 14.000

UIListLayout_2.Parent = translator
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

UIPadding_2.Parent = translator
UIPadding_2.PaddingTop = UDim.new(0, 6)

translated.Name = "translated"
translated.Parent = translator
translated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
translated.BorderColor3 = Color3.fromRGB(0, 0, 0)
translated.BorderSizePixel = 0
translated.Position = UDim2.new(0.05511811, 0, 0.482051283, 0)
translated.Size = UDim2.new(0, 113, 0, 53)
translated.Font = Enum.Font.SourceSans
translated.Text = ""
translated.TextColor3 = Color3.fromRGB(0, 0, 0)
translated.TextScaled = true
translated.TextSize = 14.000
translated.TextWrapped = true

local function addMsg(user, content)

    local msg = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")
    local pfp = Instance.new("ImageLabel")
    local UICorner_3 = Instance.new("UICorner")
    local thingg = Instance.new("TextLabel")

    msg.Name = "msg"
    msg.Parent = container
    msg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    msg.BackgroundTransparency = 1.000
    msg.BorderColor3 = Color3.fromRGB(0, 0, 0)
    msg.BorderSizePixel = 0
    msg.Size = UDim2.new(0, 291, 0, 34)

    msg.LayoutOrder = -(#container:GetChildren())

    UICorner.Parent = msg

    TextButton.Parent = msg
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0.238683119, 0, 0, 0)
    TextButton.Size = UDim2.new(0, 221, 0, 34)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000
    TextButton.Text = content

    UICorner_2.Parent = TextButton

    pfp.Name = "pfp"
    pfp.Parent = msg
    pfp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    pfp.BorderColor3 = Color3.fromRGB(0, 0, 0)
    pfp.BorderSizePixel = 0
    pfp.Size = UDim2.new(0, 41, 0, 41)
    pfp.Image = game.Players:GetUserThumbnailAsync(user.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

    UICorner_3.CornerRadius = UDim.new(0, 41)
    UICorner_3.Parent = pfp

    thingg.Name = "thingg"
    thingg.Parent = msg
    thingg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    thingg.BackgroundTransparency = 1.000
    thingg.BorderColor3 = Color3.fromRGB(0, 0, 0)
    thingg.BorderSizePixel = 0
    thingg.Position = UDim2.new(0.134020612, 0, 0.0882352963, 0)
    thingg.Size = UDim2.new(0, 30, 0, 28)
    thingg.Font = Enum.Font.SourceSansBold
    thingg.Text = "<"
    thingg.TextColor3 = Color3.fromRGB(254, 252, 255)
    thingg.TextSize = 29.000

    TextButton.MouseButton1Click:Connect(
        function()
            totranslate.Text = TextButton.Text
            translated.Text = ""
        end
    )
end

-- Connect to player chat events
for _, player in pairs(game.Players:GetChildren()) do
    if player:IsA("Player") then
        player.Chatted:Connect(
            function(msg)
                if string.find(msg, "##") then
                    return
                end
                addMsg(player, msg)
            end
        )
    end
end

-- Handle new players joining
game.Players.ChildAdded:Connect(
    function(plr)
        if plr:IsA("Player") then
            plr.Chatted:Connect(
                function(msg)
                    if string.find(msg, "##") then
                        return
                    end
                    addMsg(player, msg)
                end
            )
        end
    end
)

local apiKey = "a_rywY2DcP7upQg3UWyuMQC5hOmBxUhWuhdNRRgXF88B8NWyUPp2TGUOgAK14wOfF47P4O50bHOFIUciud"
local url = "https://api-b2b.backenster.com/b1/api/v3/translate"

local function translateText(text)
    local payload = {
        to = "en_GB",
        text = text,
        platform = "api"
    }

    local success, response = pcall(function()
        return request({
            Url = url,
            Method = "POST",
            Headers = {
                ["Authorization"] = apiKey,
                ["Content-Type"] = "application/json",
                ["Accept"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(payload)
        })
    end)

    if success and response and response.StatusCode == 200 then
        local data = game:GetService("HttpService"):JSONDecode(response.Body)
        print("[✓] Translated:", data.result)
        return data.result
    else
        warn("[✗] Translation failed.")
        if response then
            warn("StatusCode:", response.StatusCode)
            warn("Body:", response.Body)
        end
    end
end

translatebutton.MouseButton1Click:Connect(
    function()
        local text = totranslate.Text
        if text == "" then
            translated.Text = "nothing to translate!"
            return
        end

        local translatedText = translateText(text)
        translated.Text = translatedText
    end
)

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
