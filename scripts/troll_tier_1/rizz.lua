-- List of phrases
local The_Plague = {
    "this is tough and rough !1", --
    "im a good guy yk !1", --
    "are you a skibidi mogger?? ?? cuz if yes then you can have myyyy grimace shake!1", --
    "Are you a sigma!1!1??? Because you skibidi my world (real)", --
    "you're the cold cup of water at 4 am night (and yes everytime!1)",
    "I'd call an emergency meeting just to spend more time with you. (with rizz)", --
    "Hey, are you a vent? Because I'm the imposter and I'd love to come in you", --
    "are you siri? because you autocomplete me", --
    "Are you a charger? Because I'm dying without you", --
    "Wanna be Minecraft without the craft?", --
    "Is there an airport nearby or is that my heart taking off?", --
    "Aren't you worried about global warming? Because you're making it hot in here.", --
    "If you were a triangle you'd be acute one.", --
    "Are you a keyboard? Because you might just be my type.", --
    "Are you tired? You've been running through my mind all day.",
    "Do you play soccer? Because you're a keeper.", --
    "You look so familiar, did we have class together? I could've sworn we had chemistry.", --
    "I'm learning about important dates in history, wanna be one of them?", --
    "Are you an artist? You're really good at drawing me in.", --
    "If you and I were socks, we'd make a great pair.", --
    "If you were words on a page, you'd be fine print.", --
    "They say nothing lasts forever. Want to be my nothing?", --
    "Anyone who says Disney is the happiest place on earth has never stood next to you.", --
    "Are you a time traveler? Because I can see you in my future.", --
    "Are you French? Because Eiffel for you.", --
    "Guess what I'm wearing? The smile you gave me.", --
    "Are your parents bakers? Because you're a cutie pie.", --
    "Did the sun come out, or did you just smile at me?", --
    "Would you mind giving me a pinch? You're so cute, I must be dreaming.", --
    "On a scale of 1 to 10, you're a 9 because I'm the 1 you need.", --
    "I'm not very good at math but I can give you the value you deserve.", --
    "Want to go outside and get some fresh air with me? You just took my breath away.", --
    "I can't tell if that was an earthquake, or if you just seriously rocked my world.", --
    "I've got all these forks and knives all I need is a little spoon.", --
    "Your hand looks heavy, can I hold it for you?", --
    "Do you have a map? I just got lost in your eyes.",
    "I think we've met before. Actually, never mind I think it was just in my dreams.",
    "You're looking a little sick, you must be suffering from lack of Vitamin Me.", --
    "Are you a WiFi router? Because I'm feeling a connection.", --
    "If you were a transformer you'd be Optimus Fine.", --
    "Let's play a game, not hide and seek though, people like you are hard to find.",
    "Do you like Star Wars? Because Yoda one for me.", 
    "My mom told me not to talk to strangers online, but I'll make an exception for you.", --
    "Did you go to school at Hogwarts? Because I'm feeling the magic.", --
    "If you were a vegetable, you'd be a cute-cumber", --
    "If you were a fruit, you'd be a fineapple.",
    "Are you a magician? Because whenever I look at you, everyone else disappears.",
    "Do you have a sunburn, or are you always this hot?",
    "If looks could kill, you'd be a weapon of mass destruction.",
    "Are you a campfire? Because you're hot and I want s'more.",
    "If I could rearrange the alphabet, I'd put U and I together.",
    "Do you have a map? Because I keep getting lost in your eyes.",
    "If you were a booger, I'd pick you first.",
    "Do you have a twin? Because I see double the beauty.",
    "You must be a broom, because you just swept me off my feet.",
    "Are you Australian? Because when I look at you, I feel like I'm down under.",
    "Is it okay if I follow you home? Because my parents always told me to follow my dreams.",
    "Are you a star? Because your beauty lights up the night.",
    "If you were a cat, you'd purr-fect.",
    "Are you a light switch? Because you turn me on.",
    "If you were a dessert, you'd be a sweetie pie.",
    "Do you have any room for an extra heart? Because mine's been stolen.",
    "Are you a snowstorm? Because you make my heart race.",
    "Do you have an eraser? Because I can't get you out of my mind.",
    "Are you a camera? Because every time I look at you, I smile.",
    "Are you a rainbow? Because you bring color to my world.",
}

print("rizz script by hellohellohell012321")

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- UI Elements
local ScreenGui = Instance.new("ScreenGui")
local MainImageLabel = Instance.new("ImageLabel")
local TitleLabel = Instance.new("TextLabel")
local RizzButton = Instance.new("TextButton")
local NotificationLabel = Instance.new("TextLabel")

ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

MainImageLabel.Name = "MainImageLabel"
MainImageLabel.Parent = ScreenGui
MainImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
MainImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainImageLabel.BackgroundTransparency = 0.5 
MainImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
MainImageLabel.Size = UDim2.new(0, 300, 0, 200)
MainImageLabel.Active = true
MainImageLabel.Draggable = true
MainImageLabel.Image = "http://www.roblox.com/asset/?id=17675239773"  -- image background

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = MainImageLabel
TitleLabel.AnchorPoint = Vector2.new(0.5, 0)
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 108)  -- title background color
TitleLabel.BorderSizePixel = 0
TitleLabel.Position = UDim2.new(0.5, 0, 0, 0)
TitleLabel.Size = UDim2.new(1, 0, 0, 30)
TitleLabel.Font = Enum.Font.LuckiestGuy
TitleLabel.Text = "ï½’ï½‰ï½šï½š  ï½•ï½  ï½”ï½ˆï½…  ï½ˆï½ï½…ï½“"
TitleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.TextSize = 20

RizzButton.Name = "RizzButton"
RizzButton.Parent = MainImageLabel
RizzButton.AnchorPoint = Vector2.new(0.5, 0.5)
RizzButton.BackgroundColor3 = Color3.fromRGB(255, 0, 108)  -- button background color
RizzButton.BorderSizePixel = 0  
RizzButton.Position = UDim2.new(0.5, 0, 0.5, 0)
RizzButton.Size = UDim2.new(0, 100, 0, 50)
RizzButton.Font = Enum.Font.LuckiestGuy -- button font
RizzButton.Text = "RIZZ" -- button text
RizzButton.TextColor3 = Color3.fromRGB(0, 0, 0)
RizzButton.TextSize = 24
RizzButton.TextWrapped = true

NotificationLabel.Name = "NotificationLabel"
NotificationLabel.Parent = ScreenGui
NotificationLabel.AnchorPoint = Vector2.new(0.5, 0)
NotificationLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NotificationLabel.BackgroundTransparency = 0.5
NotificationLabel.Position = UDim2.new(0.5, 0, 0.2, 0)
NotificationLabel.Size = UDim2.new(0, 200, 0, 50)
NotificationLabel.Font = Enum.Font.LuckiestGuy
NotificationLabel.Text = "All phrases used!"
NotificationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationLabel.TextSize = 24
NotificationLabel.Visible = false

local usedPhrases = {}

local function getRandomPhrase()
    if #usedPhrases == #The_Plague then
        usedPhrases = {}
        NotificationLabel.Visible = true
        wait(3)
        NotificationLabel.Visible = false
    end

    local phrase
    repeat
        phrase = The_Plague[math.random(1, #The_Plague)]
    until not usedPhrases[phrase]

    usedPhrases[phrase] = true
    return phrase
end

local function Say(Message)
    print("w rizz !1")
    local success, err = pcall(function()
        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
            Message, 
            "All"
        )
    end)
    
    if not success then
        warn("Failed to send message: " .. tostring(err))
    else
        print("Message sent: " .. Message)
    end
end

RizzButton.MouseButton1Click:Connect(function()
    local randomPhrase = getRandomPhrase()
    Say(randomPhrase)
end)