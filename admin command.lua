game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "|Type :cmds to see the commands|";
    Text = ":cmds";
    Duration = 20;
})

game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "🔔Notification🔔";
    Text = "Subscribe To Balligusapo";
    Duration = 20;
})

game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "|Type :link if you whant to subscribe to my channel|";
    Text = ":link";
    Duration = 20;
})

local Player = game.Players.LocalPlayer

Player.Chatted:connect(function(cht)
	if cht:match("comingsoon") then
	elseif cht:match(":netlessgui") then
		loadstring(game:HttpGet("https://pastebin.com/raw/ULA6Y3gH", true))();
	elseif cht:match(":clicktptool") then
		loadstring(game:HttpGet("https://pastebin.com/raw/XFZpPHAD", true))();
	elseif cht:match(":reset") then
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
	elseif cht:match(":invisible") then
		local Player = game:GetService("Players").LocalPlayer repeat wait(.1) until Player.Character local Character = Player.Character Character.Archivable = true local IsInvis = false local IsRunning = true local InvisibleCharacter = Character:Clone() InvisibleCharacter.Parent = game:GetService'Lighting' local Void = workspace.FallenPartsDestroyHeight InvisibleCharacter.Name = "" local CF Player.CharacterAdded:Connect(function() if Player.Character == InvisibleCharacter then return end repeat wait(.1) until Player.Character:FindFirstChildWhichIsA'Humanoid' if IsRunning == false then IsInvis = false IsRunning = true Character = Player.Character Character.Archivable = true InvisibleCharacter = Character:Clone() InvisibleCharacter.Name = "" InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function() Respawn() end) for i,v in pairs(InvisibleCharacter:GetDescendants())do if v:IsA("BasePart") then if v.Name == "HumanoidRootPart" then v.Transparency = 1 else v.Transparency = .5 end end end end end) local Fix = game:GetService("RunService").Stepped:Connect(function() pcall(function() local IsInteger if tostring(Void):find'-' then IsInteger = true else IsInteger = false end local Pos = Player.Character.HumanoidRootPart.Position local Pos_String = tostring(Pos) local Pos_Seperate = Pos_String:split(', ') local X = tonumber(Pos_Seperate[1]) local Y = tonumber(Pos_Seperate[2]) local Z = tonumber(Pos_Seperate[3]) if IsInteger == true then if Y <= Void then Respawn() end elseif IsInteger == false then if Y >= Void then Respawn() end end end) end) for i,v in pairs(InvisibleCharacter:GetDescendants())do if v:IsA("BasePart") then if v.Name == "HumanoidRootPart" then v.Transparency = 1 else v.Transparency = .5 end end end Player.Chatted:Connect(function(c) if c:lower() == '/e invis' or c:lower() == ';invis' then TurnInvisible() end if c:lower() == '/e vis' or c:lower() == ';vis' then TurnVisible() end end) function Respawn() IsRunning = false if IsInvis == true then pcall(function() Player.Character = Character wait() Character.Parent = workspace Character:FindFirstChildWhichIsA'Humanoid':Destroy() IsInvis = false InvisibleCharacter.Parent = nil end) elseif IsInvis == false then pcall(function() Player.Character = Character wait() Character.Parent = workspace Character:FindFirstChildWhichIsA'Humanoid':Destroy() IsInvis = false end) end end InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function() Respawn() end) function FixCam() workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildWhichIsA'Humanoid' workspace.CurrentCamera.CFrame = CF end function freezecam(arg) if arg == true then workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable else workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end end function TurnInvisible() if IsInvis == true then return end IsInvis = true CF = workspace.CurrentCamera.CFrame local CF_1 = Player.Character.HumanoidRootPart.CFrame Character:MoveTo(Vector3.new(0,math.pi*1000000,0)) freezecam(true) wait(.2) freezecam(false) InvisibleCharacter = InvisibleCharacter Character.Parent = game:GetService'Lighting' InvisibleCharacter.Parent = workspace InvisibleCharacter.HumanoidRootPart.CFrame = CF_1 Player.Character = InvisibleCharacter FixCam() Player.Character.Animate.Disabled = true Player.Character.Animate.Disabled = false end function FixScript() --[[Character = nil InvisibleCharacter = nil if IsInvis == true then repeat wait() until IsInvis == false end if not Player.Character.Head:FindFirstChildWhichIsA("Motor6D") then repeat wait() warn('Bruh you\'re dead lol') until Player.Character.Head:FindFirstChildWhichIsA("Motor6D") local LCharacter = Player.Character LCharacter.Archivable = true local LnvisibleCharacter = LCharacter:Clone() InvisibleCharacter = LnvisibleCharacter InvisibleCharacter.Parent = game:GetService'Lighting' for i,v in pairs(InvisibleCharacter:GetDescendants())do if v:IsA("BasePart") then v.Transparency = .5 end end end IsRunning = true]] end function TurnVisible() if IsInvis == false then return end CF = workspace.CurrentCamera.CFrame Character = Character local CF_1 = Player.Character.HumanoidRootPart.CFrame Character.HumanoidRootPart.CFrame = CF_1 InvisibleCharacter.Parent = game:GetService'Lighting' Player.Character = Character Character.Parent = workspace IsInvis = false FixCam() Player.Character.Animate.Disabled = true Player.Character.Animate.Disabled = false end

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "How To Use?";
Text = "Type /e vis to be unvisible type /e invis to be invisible";
})
	elseif cht:match(":link") then
		game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Channel Link:";
    Text = "https://youtube.com/c/BalligusapoYT";
    Duration = 20;
})
	elseif cht:match(":headlessandkorblox") then
		--by qjbnbalivemobile1#0946

--Objects
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Headless = Instance.new("TextButton")
local OneLeg = Instance.new("TextButton")
local close = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")

--Properties:
ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.Position = UDim2.new(0.0203577988, 0, 0.641277611, 0)
main.Size = UDim2.new(0, 332, 0, 211)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(1, 0, 1)
title.Size = UDim2.new(0, 332, 0, 31)
title.Font = Enum.Font.GothamBold
title.Text = "qjbnbalivemobile1#0946"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 17

Headless.Name = "Headless"
Headless.Parent = main
Headless.BackgroundColor3 = Color3.new(0.333333, 1, 0)
Headless.Position = UDim2.new(0.036144577, 0, 0.379146934, 0)
Headless.Size = UDim2.new(0, 110, 0, 50)
Headless.Font = Enum.Font.GothamBold
Headless.Text = "Headless"
Headless.TextColor3 = Color3.new(0, 0, 0)
Headless.TextScaled = true
Headless.TextSize = 10
Headless.TextWrapped = true
Headless.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Head.Transparency = 1
for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
if (v:IsA("Decal")) then
v:Destroy()
end
end
end)

OneLeg.Name = "One Leg"
OneLeg.Parent = main
OneLeg.BackgroundColor3 = Color3.new(0.333333, 1, 0)
OneLeg.Position = UDim2.new(0.614457846, 0, 0.379146934, 0)
OneLeg.Size = UDim2.new(0, 110, 0, 50)
OneLeg.Font = Enum.Font.GothamBold
OneLeg.Text = "One Leg"
OneLeg.TextColor3 = Color3.new(0, 0, 0)
OneLeg.TextScaled = true
OneLeg.TextSize = 14
OneLeg.TextWrapped = true
OneLeg.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character['Right Leg']:remove()
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(1, 0, 0)
close.Position = UDim2.new(0.879518092, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 31)
close.Font = Enum.Font.GothamBlack
close.Text = "X"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(.001, 0, .79, 0)
openmain.Size = UDim2.new(0, 100, 0, 28)
openmain.Active = true
openmain.Draggable = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(1, 0, 0)
open.Size = UDim2.new(0, 100, 0, 28)
open.Font = Enum.Font.GothamBold
open.Text = "OPEN"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)
	elseif cht:match(":infyield") then	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	elseif cht:match(":findserver") then
		loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80", true))();
	elseif cht:match(":pov") then
		workspace.CurrentCamera.FieldOfView = 120
	elseif cht:match(":noclip") then
		local ScreenGui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local GUI = Instance.new("TextLabel")
local Noclip = Instance.new("TextButton")

local ScreenGui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local GUI = Instance.new("TextLabel")
local ComingSoon = Instance.new("TextButton")



ScreenGui.Parent = game.CoreGui

mainframe.Name = "mainframe"
mainframe.Parent = ScreenGui
mainframe.BackgroundColor3 = Color3.fromRGB(5,5, 5)
mainframe.BorderColor3 = Color3.fromRGB(0, 0, 255)
mainframe.Position = UDim2.new(0.382422805, 0, 0.292828679, 0)
mainframe.Size = UDim2.new(0, 349, 0, 287)

GUI.Name = "GUI"
GUI.Parent = mainframe
GUI.BackgroundColor3 = Color3.fromRGB(5, 4, 1)
GUI.Size = UDim2.new(0, 282, 0, 22)
GUI.Font = Enum.Font.SourceSans
GUI.Text = "GUI"
GUI.TextColor3 = Color3.fromRGB(255, 0, 0)
GUI.TextSize = 50.000

ComingSoon.Name = "ComingSoon"
ComingSoon.Parent = mainframe
ComingSoon.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
ComingSoon.Position = UDim2.new(0.588318229, 0, 0.198759019, 0)
ComingSoon.Size = UDim2.new (0, 119, 0, 40)
ComingSoon.Font = Enum.Font.SourceSans
ComingSoon.Text = "ComingSoon"
ComingSoon.TextColor3 = Color3.fromRGB(8, 8, 8)
ComingSoon.TextSize = 15.000

Noclip.Name = "Noclip"
Noclip.Parent = mainframe
Noclip.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
Noclip.Position = UDim2.new(0.0658583343, 0, 0.198759019, 0)
Noclip.Size = UDim2.new (0, 119, 0, 40)
Noclip.Font = Enum.Font.SourceSans
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.fromRGB(8, 8, 8)
Noclip.TextSize = 25.000
Noclip.MouseButton1Down:connect(function()
	local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
		end)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local RL = Instance.new("TextButton")
local LL = Instance.new("TextButton")
local RA = Instance.new("TextButton")
local Float = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local Arms = Instance.new("TextBox")
local Legs = Instance.new("TextBox")
local Others = Instance.new("TextBox")
local LA = Instance.new("TextButton")
local plr = game.Players.LocalPlayer.Character


ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
mainframe.Parent = ScreenGui
mainframe.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
mainframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe.Position = UDim2.new(0, 0, 0.357493848, 0)
mainframe.Size = UDim2.new(0, 277, 0, 232)
 
RL.Name = "RL"
RL.Parent = Frame
RL.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
RL.Position = UDim2.new(-0.00722021656, 0, 0, 0)
RL.Size = UDim2.new(0, 134, 0, 50)
RL.Font = Enum.Font.SourceSansLight
RL.Text = "Right Leg"
RL.TextColor3 = Color3.fromRGB(255, 255, 255)
RL.TextScaled = true
RL.TextSize = 14.000
RL.TextWrapped = true
 
LL.Name = "LL"
LL.Parent = Frame
LL.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
LL.Position = UDim2.new(0.51145041, 0, 0, 0)
LL.Size = UDim2.new(0, 134, 0, 50)
LL.Font = Enum.Font.SourceSansLight
LL.Text = "Left Leg"
LL.TextColor3 = Color3.fromRGB(255, 255, 255)
LL.TextScaled = true
LL.TextSize = 14.000
LL.TextWrapped = true
 
RA.Name = "RA"
RA.Parent = Frame
RA.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
RA.Position = UDim2.new(-0.00325548649, 0, 0.391304344, 0)
RA.Size = UDim2.new(0, 134, 0, 50)
RA.Font = Enum.Font.SourceSansLight
RA.Text = "Right Arm"
RA.TextColor3 = Color3.fromRGB(255, 255, 255)
RA.TextScaled = true
RA.TextSize = 14.000
RA.TextWrapped = true
 
Float.Name = "Float"
Float.Parent = Frame
Float.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
Float.Position = UDim2.new(0.514927804, 0, 0.782608688, 0)
Float.Size = UDim2.new(0, 134, 0, 50)
Float.Font = Enum.Font.SourceSansLight
Float.Text = "Float"
Float.TextColor3 = Color3.fromRGB(255, 255, 255)
Float.TextScaled = true
Float.TextSize = 14.000
Float.TextWrapped = true
 
Respawn.Name = "Respawn"
Respawn.Parent = Frame
Respawn.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
Respawn.Position = UDim2.new(-0.00332182809, 0, 0.782608688, 0)
Respawn.Size = UDim2.new(0, 134, 0, 50)
Respawn.Font = Enum.Font.SourceSansLight
Respawn.Text = "Respawn"
Respawn.TextColor3 = Color3.fromRGB(255, 255, 255)
Respawn.TextScaled = true
Respawn.TextSize = 14.000
Respawn.TextWrapped = true
 
Arms.Name = "Arms"
Arms.Parent = Frame
Arms.Active = false
Arms.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Arms.BackgroundTransparency = 1.000
Arms.Position = UDim2.new(0, 0, 0.215517238, 0)
Arms.Selectable = false
Arms.Size = UDim2.new(0, 275, 0, 40)
Arms.ClearTextOnFocus = false
Arms.Font = Enum.Font.SourceSansLight
Arms.Text = "Arms:"
Arms.TextColor3 = Color3.fromRGB(0, 0, 0)
Arms.TextScaled = true
Arms.TextSize = 14.000
Arms.TextWrapped = true
 
Legs.Name = "Legs"
Legs.Parent = Frame
Legs.Active = false
Legs.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
Legs.Position = UDim2.new(0, 0, -0.168103442, 0)
Legs.Selectable = false
Legs.Size = UDim2.new(0, 275, 0, 39)
Legs.ClearTextOnFocus = false
Legs.Font = Enum.Font.SourceSansLight
Legs.Text = "Legs:"
Legs.TextColor3 = Color3.fromRGB(0, 0, 0)
Legs.TextScaled = true
Legs.TextSize = 14.000
Legs.TextWrapped = true
 
Others.Name = "Others"
Others.Parent = Frame
Others.Active = false
Others.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
Others.BackgroundTransparency = 1.000
Others.Position = UDim2.new(0, 0, 0.606821537, 0)
Others.Selectable = false
Others.Size = UDim2.new(0, 275, 0, 40)
Others.ClearTextOnFocus = false
Others.Font = Enum.Font.SourceSansLight
Others.Text = "Others:"
Others.TextColor3 = Color3.fromRGB(0, 0, 0)
Others.TextScaled = true
Others.TextSize = 14.000
Others.TextWrapped = true
 
LA.Name = "LA"
LA.Parent = Frame
LA.BackgroundColor3 = Color3.fromRGB(184, 184, 184)
LA.Position = UDim2.new(0.51145041, 0, 0.391304344, 0)
LA.Size = UDim2.new(0, 134, 0, 50)
LA.Font = Enum.Font.SourceSansLight
LA.Text = "Left Arm"
LA.TextColor3 = Color3.fromRGB(255, 255, 255)
LA.TextScaled = true
LA.TextSize = 14.000
LA.TextWrapped = true
 
 
RL.MouseButton1Click:connect(function()
    plr["Right Leg"]:Destroy()
end)
 
LL.MouseButton1Click:connect(function()
    plr["Left Leg"]:Destroy()
end)
 
RA.MouseButton1Click:connect(function()
    plr["Right Arm"]:Destroy()
end)
 
LA.MouseButton1Click:connect(function()
    plr["Left Arm"]:Destroy()
end)
 
Respawn.MouseButton1Click:connect(function()
    plr.Head:Destroy()
end)
 
Float.MouseButton1Click:connect(function()
    plr.Humanoid.HipHeight = 2
end)

wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Subscribe For More Gui!"; -- the title 
Text = "Subscribe To Balligusapo YT"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})
	elseif cht:match(":animation") then
		local AnimationChanger = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Close = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local NormalTab = Instance.new("Frame")
local A_Astronaut = Instance.new("TextButton")
local A_Bubbly = Instance.new("TextButton")
local A_Cartoony = Instance.new("TextButton")
local A_Elder = Instance.new("TextButton")
local A_Knight = Instance.new("TextButton")
local A_Levitation = Instance.new("TextButton")
local A_Mage = Instance.new("TextButton")
local A_Ninja = Instance.new("TextButton")
local A_Pirate = Instance.new("TextButton")
local A_Robot = Instance.new("TextButton")
local A_Stylish = Instance.new("TextButton")
local A_SuperHero = Instance.new("TextButton")
local A_Toy = Instance.new("TextButton")
local A_Vampire = Instance.new("TextButton")
local A_Werewolf = Instance.new("TextButton")
local A_Zombie = Instance.new("TextButton")
local Category = Instance.new("TextLabel")
local SpecialTab = Instance.new("Frame")
local A_Patrol = Instance.new("TextButton")
local A_Confident = Instance.new("TextButton")
local A_Popstar = Instance.new("TextButton")
local A_Cowboy = Instance.new("TextButton")
local A_Ghost = Instance.new("TextButton")
local A_Sneaky = Instance.new("TextButton")
local A_Princess = Instance.new("TextButton")
local Category_2 = Instance.new("TextLabel")
local OtherTab = Instance.new("Frame")
local Category_3 = Instance.new("TextLabel")
local A_None = Instance.new("TextButton")
local A_Anthro = Instance.new("TextButton")
local Animate = game.Players.LocalPlayer.Character.Animate

AnimationChanger.Name = "AnimationChanger"
AnimationChanger.Parent = game:WaitForChild("CoreGui")
AnimationChanger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = AnimationChanger
Main.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.421999991, 0, -1, 0)
Main.Size = UDim2.new(0, 300, 0, 250)
Main.Active = true
Main.Draggable = true

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 300, 0, 30)

Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.899999976, 0, 0, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Font = Enum.Font.SciFi
Close.Text = "x"
Close.TextColor3 = Color3.new(1, 0, 0.0156863)
Close.TextSize = 20
Close.MouseButton1Click:Connect(function()
    wait(0.3)
    Main:TweenPosition(UDim2.new(0.421999991, 0, -1.28400004, 0))
    wait(3)
    AnimationChanger:Destroy()
end)

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.600000024, 0)
TextLabel.Size = UDim2.new(0, 270, 0, 10)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Made by Nyser#4623"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 15

TextLabel_2.Parent = TopBar
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, -0.0266667679, 0)
TextLabel_2.Size = UDim2.new(0, 270, 0, 20)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Animation Changer"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 20

NormalTab.Name = "NormalTab"
NormalTab.Parent = Main
NormalTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
NormalTab.BackgroundTransparency = 1
NormalTab.BorderSizePixel = 0
NormalTab.Position = UDim2.new(0.5, 0, 0.119999997, 0)
NormalTab.Size = UDim2.new(0, 150, 0, 500)

A_Astronaut.Name = "A_Astronaut"
A_Astronaut.Parent = NormalTab
A_Astronaut.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Astronaut.BorderSizePixel = 0
A_Astronaut.Position = UDim2.new(0, 0, 0.815764725, 0)
A_Astronaut.Size = UDim2.new(0, 150, 0, 30)
A_Astronaut.Font = Enum.Font.SciFi
A_Astronaut.Text = "Astronaut"
A_Astronaut.TextColor3 = Color3.new(1, 1, 1)
A_Astronaut.TextSize = 20
A_Astronaut.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Bubbly.Name = "A_Bubbly"
A_Bubbly.Parent = NormalTab
A_Bubbly.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Bubbly.BorderSizePixel = 0
A_Bubbly.Position = UDim2.new(0, 0, 0.349019617, 0)
A_Bubbly.Size = UDim2.new(0, 150, 0, 30)
A_Bubbly.Font = Enum.Font.SciFi
A_Bubbly.Text = "Bubbly"
A_Bubbly.TextColor3 = Color3.new(1, 1, 1)
A_Bubbly.TextSize = 20
A_Bubbly.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Cartoony.Name = "A_Cartoony"
A_Cartoony.Parent = NormalTab
A_Cartoony.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Cartoony.BorderSizePixel = 0
A_Cartoony.Position = UDim2.new(0, 0, 0.407272667, 0)
A_Cartoony.Size = UDim2.new(0, 150, 0, 30)
A_Cartoony.Font = Enum.Font.SciFi
A_Cartoony.Text = "Cartoony"
A_Cartoony.TextColor3 = Color3.new(1, 1, 1)
A_Cartoony.TextSize = 20
A_Cartoony.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Elder.Name = "A_Elder"
A_Elder.Parent = NormalTab
A_Elder.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Elder.BorderSizePixel = 0
A_Elder.Position = UDim2.new(6.51925802e-09, 0, 0.636310041, 0)
A_Elder.Size = UDim2.new(0, 150, 0, 30)
A_Elder.Font = Enum.Font.SciFi
A_Elder.Text = "Elder"
A_Elder.TextColor3 = Color3.new(1, 1, 1)
A_Elder.TextSize = 20
A_Elder.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Knight.Name = "A_Knight"
A_Knight.Parent = NormalTab
A_Knight.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Knight.BorderSizePixel = 0
A_Knight.Position = UDim2.new(0, 0, 0.52352941, 0)
A_Knight.Size = UDim2.new(0, 150, 0, 30)
A_Knight.Font = Enum.Font.SciFi
A_Knight.Text = "Knight"
A_Knight.TextColor3 = Color3.new(1, 1, 1)
A_Knight.TextSize = 20
A_Knight.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Levitation.Name = "A_Levitation"
A_Levitation.Parent = NormalTab
A_Levitation.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Levitation.BorderSizePixel = 0
A_Levitation.Position = UDim2.new(0, 0, 0.115472436, 0)
A_Levitation.Size = UDim2.new(0, 150, 0, 30)
A_Levitation.Font = Enum.Font.SciFi
A_Levitation.Text = "Levitation"
A_Levitation.TextColor3 = Color3.new(1, 1, 1)
A_Levitation.TextSize = 20
A_Levitation.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Mage.Name = "A_Mage"
A_Mage.Parent = NormalTab
A_Mage.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Mage.BorderSizePixel = 0
A_Mage.Position = UDim2.new(0, 0, 0.696203232, 0)
A_Mage.Size = UDim2.new(0, 150, 0, 30)
A_Mage.Font = Enum.Font.SciFi
A_Mage.Text = "Mage"
A_Mage.TextColor3 = Color3.new(1, 1, 1)
A_Mage.TextSize = 20
A_Mage.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Ninja.Name = "A_Ninja"
A_Ninja.Parent = NormalTab
A_Ninja.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Ninja.BorderSizePixel = 0
A_Ninja.Position = UDim2.new(0, 0, 0.0597896464, 0)
A_Ninja.Size = UDim2.new(0, 150, 0, 30)
A_Ninja.Font = Enum.Font.SciFi
A_Ninja.Text = "Ninja"
A_Ninja.TextColor3 = Color3.new(1, 1, 1)
A_Ninja.TextSize = 20
A_Ninja.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Pirate.Name = "A_Pirate"
A_Pirate.Parent = NormalTab
A_Pirate.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Pirate.BorderSizePixel = 0
A_Pirate.Position = UDim2.new(-0.000333309174, 0, 0.874588311, 0)
A_Pirate.Size = UDim2.new(0, 150, 0, 30)
A_Pirate.Font = Enum.Font.SciFi
A_Pirate.Text = "Pirate"
A_Pirate.TextColor3 = Color3.new(1, 1, 1)
A_Pirate.TextSize = 20
A_Pirate.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Robot.Name = "A_Robot"
A_Robot.Parent = NormalTab
A_Robot.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Robot.BorderSizePixel = 0
A_Robot.Position = UDim2.new(0, 0, 0.291479498, 0)
A_Robot.Size = UDim2.new(0, 150, 0, 30)
A_Robot.Font = Enum.Font.SciFi
A_Robot.Text = "Robot"
A_Robot.TextColor3 = Color3.new(1, 1, 1)
A_Robot.TextSize = 20
A_Robot.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Stylish.Name = "A_Stylish"
A_Stylish.Parent = NormalTab
A_Stylish.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Stylish.BorderSizePixel = 0
A_Stylish.Position = UDim2.new(0, 0, 0.232816339, 0)
A_Stylish.Size = UDim2.new(0, 150, 0, 30)
A_Stylish.Font = Enum.Font.SciFi
A_Stylish.Text = "Stylish"
A_Stylish.TextColor3 = Color3.new(1, 1, 1)
A_Stylish.TextSize = 20
A_Stylish.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_SuperHero.Name = "A_SuperHero"
A_SuperHero.Parent = NormalTab
A_SuperHero.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_SuperHero.BorderSizePixel = 0
A_SuperHero.Position = UDim2.new(0, 0, 0.464919746, 0)
A_SuperHero.Size = UDim2.new(0, 150, 0, 30)
A_SuperHero.Font = Enum.Font.SciFi
A_SuperHero.Text = "SuperHero"
A_SuperHero.TextColor3 = Color3.new(1, 1, 1)
A_SuperHero.TextSize = 20
A_SuperHero.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Toy.Name = "A_Toy"
A_Toy.Parent = NormalTab
A_Toy.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Toy.BorderSizePixel = 0
A_Toy.Position = UDim2.new(6.51925802e-09, 0, 0.756028414, 0)
A_Toy.Size = UDim2.new(0, 150, 0, 30)
A_Toy.Font = Enum.Font.SciFi
A_Toy.Text = "Toy"
A_Toy.TextColor3 = Color3.new(1, 1, 1)
A_Toy.TextSize = 20
A_Toy.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Vampire.Name = "A_Vampire"
A_Vampire.Parent = NormalTab
A_Vampire.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Vampire.BorderSizePixel = 0
A_Vampire.Position = UDim2.new(0, 0, 0.934021354, 0)
A_Vampire.Size = UDim2.new(0, 150, 0, 30)
A_Vampire.Font = Enum.Font.SciFi
A_Vampire.Text = "Vampire"
A_Vampire.TextColor3 = Color3.new(1, 1, 1)
A_Vampire.TextSize = 20
A_Vampire.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Werewolf.Name = "A_Werewolf"
A_Werewolf.Parent = NormalTab
A_Werewolf.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Werewolf.BorderSizePixel = 0
A_Werewolf.Position = UDim2.new(-0.000333368778, 0, 0.174509808, 0)
A_Werewolf.Size = UDim2.new(0, 150, 0, 30)
A_Werewolf.Font = Enum.Font.SciFi
A_Werewolf.Text = "Werewolf"
A_Werewolf.TextColor3 = Color3.new(1, 1, 1)
A_Werewolf.TextSize = 20
A_Werewolf.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Zombie.Name = "A_Zombie"
A_Zombie.Parent = NormalTab
A_Zombie.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Zombie.BorderSizePixel = 0
A_Zombie.Position = UDim2.new(-1.1920929e-07, 0, 0.582352936, 0)
A_Zombie.Size = UDim2.new(0, 150, 0, 30)
A_Zombie.Font = Enum.Font.SciFi
A_Zombie.Text = "Zombie"
A_Zombie.TextColor3 = Color3.new(1, 1, 1)
A_Zombie.TextSize = 20
A_Zombie.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Category.Name = "Category"
Category.Parent = NormalTab
Category.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Category.BorderSizePixel = 0
Category.Size = UDim2.new(0, 150, 0, 30)
Category.Text = "Normal"
Category.TextColor3 = Color3.new(0, 0.835294, 1)
Category.TextSize = 14

SpecialTab.Name = "SpecialTab"
SpecialTab.Parent = Main
SpecialTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
SpecialTab.BackgroundTransparency = 1
SpecialTab.BorderSizePixel = 0
SpecialTab.Position = UDim2.new(0, 0, 0.119999997, 0)
SpecialTab.Size = UDim2.new(0, 150, 0, 230)

A_Patrol.Name = "A_Patrol"
A_Patrol.Parent = SpecialTab
A_Patrol.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Patrol.BorderSizePixel = 0
A_Patrol.Position = UDim2.new(0, 0, 0.259960413, 0)
A_Patrol.Size = UDim2.new(0, 150, 0, 30)
A_Patrol.Font = Enum.Font.SciFi
A_Patrol.Text = "Patrol"
A_Patrol.TextColor3 = Color3.new(1, 1, 1)
A_Patrol.TextSize = 20
A_Patrol.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Confident.Name = "A_Confident"
A_Confident.Parent = SpecialTab
A_Confident.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Confident.BorderSizePixel = 0
A_Confident.Position = UDim2.new(0, 0, 0.389248967, 0)
A_Confident.Size = UDim2.new(0, 150, 0, 30)
A_Confident.Font = Enum.Font.SciFi
A_Confident.Text = "Confident"
A_Confident.TextColor3 = Color3.new(1, 1, 1)
A_Confident.TextSize = 20
A_Confident.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Popstar.Name = "A_Popstar"
A_Popstar.Parent = SpecialTab
A_Popstar.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Popstar.BorderSizePixel = 0
A_Popstar.Position = UDim2.new(0, 0, 0.130671918, 0)
A_Popstar.Size = UDim2.new(0, 150, 0, 30)
A_Popstar.Font = Enum.Font.SciFi
A_Popstar.Text = "Popstar"
A_Popstar.TextColor3 = Color3.new(1, 1, 1)
A_Popstar.TextSize = 20
A_Popstar.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Cowboy.Name = "A_Cowboy"
A_Cowboy.Parent = SpecialTab
A_Cowboy.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Cowboy.BorderSizePixel = 0
A_Cowboy.Position = UDim2.new(0, 0, 0.772964239, 0)
A_Cowboy.Size = UDim2.new(0, 150, 0, 30)
A_Cowboy.Font = Enum.Font.SciFi
A_Cowboy.Text = "Cowboy"
A_Cowboy.TextColor3 = Color3.new(1, 1, 1)
A_Cowboy.TextSize = 20
A_Cowboy.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Ghost.Name = "A_Ghost"
A_Ghost.Parent = SpecialTab
A_Ghost.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Ghost.BorderSizePixel = 0
A_Ghost.Position = UDim2.new(0, 0, 0.900632322, 0)
A_Ghost.Size = UDim2.new(0, 150, 0, 30)
A_Ghost.Font = Enum.Font.SciFi
A_Ghost.Text = "Ghost"
A_Ghost.TextColor3 = Color3.new(1, 1, 1)
A_Ghost.TextSize = 20
A_Ghost.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Sneaky.Name = "A_Sneaky"
A_Sneaky.Parent = SpecialTab
A_Sneaky.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Sneaky.BorderSizePixel = 0
A_Sneaky.Position = UDim2.new(0, 0, 0.517628431, 0)
A_Sneaky.Size = UDim2.new(0, 150, 0, 30)
A_Sneaky.Font = Enum.Font.SciFi
A_Sneaky.Text = "Sneaky"
A_Sneaky.TextColor3 = Color3.new(1, 1, 1)
A_Sneaky.TextSize = 20
A_Sneaky.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Princess.Name = "A_Princess"
A_Princess.Parent = SpecialTab
A_Princess.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Princess.BorderSizePixel = 0
A_Princess.Position = UDim2.new(0, 0, 0.645296335, 0)
A_Princess.Size = UDim2.new(0, 150, 0, 30)
A_Princess.Font = Enum.Font.SciFi
A_Princess.Text = "Princess"
A_Princess.TextColor3 = Color3.new(1, 1, 1)
A_Princess.TextSize = 20
A_Princess.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Category_2.Name = "Category"
Category_2.Parent = SpecialTab
Category_2.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Category_2.BorderSizePixel = 0
Category_2.Size = UDim2.new(0, 150, 0, 30)
Category_2.Text = "Special"
Category_2.TextColor3 = Color3.new(0, 0.835294, 1)
Category_2.TextSize = 14

OtherTab.Name = "OtherTab"
OtherTab.Parent = Main
OtherTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
OtherTab.BackgroundTransparency = 1
OtherTab.BorderSizePixel = 0
OtherTab.Position = UDim2.new(0, 0, 1.06800008, 0)
OtherTab.Size = UDim2.new(0, 150, 0, 220)

Category_3.Name = "Category"
Category_3.Parent = OtherTab
Category_3.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Category_3.BorderSizePixel = 0
Category_3.Size = UDim2.new(0, 150, 0, 30)
Category_3.Text = "Other"
Category_3.TextColor3 = Color3.new(0, 0.835294, 1)
Category_3.TextSize = 14

A_None.Name = "A_None"
A_None.Parent = OtherTab
A_None.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_None.BorderSizePixel = 0
A_None.Position = UDim2.new(0, 0, 0.134545445, 0)
A_None.Size = UDim2.new(0, 150, 0, 30)
A_None.Font = Enum.Font.SciFi
A_None.Text = "None"
A_None.TextColor3 = Color3.new(1, 1, 1)
A_None.TextSize = 20
A_None.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=0"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=0"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

A_Anthro.Name = "A_Anthro"
A_Anthro.Parent = OtherTab
A_Anthro.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
A_Anthro.BorderSizePixel = 0
A_Anthro.Position = UDim2.new(0, 0, 0.269090891, 0)
A_Anthro.Size = UDim2.new(0, 150, 0, 30)
A_Anthro.Font = Enum.Font.SciFi
A_Anthro.Text = "Anthro (Default)"
A_Anthro.TextColor3 = Color3.new(1, 1, 1)
A_Anthro.TextSize = 20
A_Anthro.MouseButton1Click:Connect(function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

wait(1)
Main:TweenPosition(UDim2.new(0.421999991, 0, 0.28400004, 0))
	elseif cht:match(":credits") then
		wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "Credits";
Text = "Credits: Balligusapo, GcoSad";
})
	elseif cht:match(":shiftlock") then
		-- Gui to Lua
-- Version: 3.2

-- Instances:

local ShiftlockStarterGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

--Properties:

ShiftlockStarterGui.Name = "Shiftlock (StarterGui)"
ShiftlockStarterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ShiftlockStarterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ShiftlockStarterGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.921914339, 0, 0.552375436, 0)
ImageButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"

-- Scripts:

local function TLQOYN_fake_script() -- ImageButton.ShiftGUI 
	local script = Instance.new('LocalScript', ImageButton)

	local MobileCameraFramework = {}
	local players = game:GetService("Players")
	local runservice = game:GetService("RunService")
	local CAS = game:GetService("ContextActionService")
	local player = players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local root = character:WaitForChild("HumanoidRootPart")
	local humanoid = character.Humanoid
	local camera = workspace.CurrentCamera
	local button = script.Parent
	
	--Visiblity
	uis = game:GetService("UserInputService")
	ismobile = uis.TouchEnabled
	button.Visible = ismobile
	
	local states = {
		OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
		ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
	}
	local MAX_LENGTH = 900000
	local active = false
	local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
	local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
	local function UpdateImage(STATE)
		button.Image = states[STATE]
	end
	local function UpdateAutoRotate(BOOL)
		humanoid.AutoRotate = BOOL
	end
	local function GetUpdatedCameraCFrame(ROOT, CAMERA)
		return CFrame.new(root.Position, Vector3.new(CAMERA.CFrame.LookVector.X * MAX_LENGTH, root.Position.Y, CAMERA.CFrame.LookVector.Z * MAX_LENGTH))
	end
	local function EnableShiftlock()
		UpdateAutoRotate(false)
		UpdateImage("ON")
		root.CFrame = GetUpdatedCameraCFrame(root, camera)
		camera.CFrame = camera.CFrame * ENABLED_OFFSET
	end
	local function DisableShiftlock()
		UpdateAutoRotate(true)
		UpdateImage("OFF")
		camera.CFrame = camera.CFrame * DISABLED_OFFSET
		pcall(function()
			active:Disconnect()
			active = nil
		end)
	end
	UpdateImage("OFF")
	active = false
	function ShiftLock()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end
	local ShiftLockButton = CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")
	CAS:SetPosition("ShiftLOCK", UDim2.new(0.8, 0, 0.8, 0))
	button.MouseButton1Click:Connect(function()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end)
	return MobileCameraFramework
	
end
coroutine.wrap(TLQOYN_fake_script)()
local function OMQRQRC_fake_script() -- ShiftlockStarterGui.LocalScript 
	local script = Instance.new('LocalScript', ShiftlockStarterGui)

	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local Settings = UserSettings()
	local GameSettings = Settings.GameSettings
	local ShiftLockController = {}
	while not Players.LocalPlayer do
		wait()
	end
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	local ScreenGui, ShiftLockIcon, InputCn
	local IsShiftLockMode = true
	local IsShiftLocked = true
	local IsActionBound = false
	local IsInFirstPerson = false
	ShiftLockController.OnShiftLockToggled = Instance.new("BindableEvent")
	local function isShiftLockMode()
		return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
	end
	if not UserInputService.TouchEnabled then
		IsShiftLockMode = isShiftLockMode()
	end
	local function onShiftLockToggled()
		IsShiftLocked = not IsShiftLocked
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local initialize = function()
		print("enabled")
	end
	function ShiftLockController:IsShiftLocked()
		return IsShiftLockMode and IsShiftLocked
	end
	function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
		IsInFirstPerson = isInFirstPerson
	end
	local function mouseLockSwitchFunc(actionName, inputState, inputObject)
		if IsShiftLockMode then
			onShiftLockToggled()
		end
	end
	local function disableShiftLock()
		if ScreenGui then
			ScreenGui.Parent = nil
		end
		IsShiftLockMode = false
		Mouse.Icon = ""
		if InputCn then
			InputCn:disconnect()
			InputCn = nil
		end
		IsActionBound = false
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local onShiftInputBegan = function(inputObject, isProcessed)
		if isProcessed then
			return
		end
		if inputObject.UserInputType ~= Enum.UserInputType.Keyboard or inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then
		end
	end
	local function enableShiftLock()
		IsShiftLockMode = isShiftLockMode()
		if IsShiftLockMode then
			if ScreenGui then
				ScreenGui.Parent = PlayerGui
			end
			if IsShiftLocked then
				ShiftLockController.OnShiftLockToggled:Fire()
			end
			if not IsActionBound then
				InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
				IsActionBound = true
			end
		end
	end
	GameSettings.Changed:connect(function(property)
		if property == "ControlMode" then
			if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "ComputerMovementMode" then
			if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.Changed:connect(function(property)
		if property == "DevEnableMouseLock" then
			if LocalPlayer.DevEnableMouseLock then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "DevComputerMovementMode" then
			if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.CharacterAdded:connect(function(character)
		if not UserInputService.TouchEnabled then
			initialize()
		end
	end)
	if not UserInputService.TouchEnabled then
		initialize()
		if isShiftLockMode() then
			InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
			IsActionBound = true
		end
	end
	enableShiftLock()
	return ShiftLockController
	
end
coroutine.wrap(OMQRQRC_fake_script)()
	elseif cht:match(":spectate") then
		gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui) nextb = Instance.new("TextButton", gui) nextb.Position = UDim2.new(0.88,0,0.9,0) nextb.Size = UDim2.new(0.1,0,0.07,0) nextb.Style = Enum.ButtonStyle.RobloxRoundDropdownButton nextb.Text = ">" prevb = nextb:Clone() prevb.Position = UDim2.new(0.02,0,0.9,0) prevb.Text = "<" prevb.Parent = gui plrNum = 1 for i,v in pairs(game.Players:GetPlayers()) do if i == plrNum then game.Workspace.Camera.CameraSubject = v.Character.Humanoid end end prevb.MouseButton1Down:connect(function() if plrNum ~= 1 then plrNum = plrNum - 1 end for i,v in pairs(game.Players:GetPlayers()) do if i == plrNum then game.Workspace.Camera.CameraSubject = v.Character.Humanoid end end end) nextb.MouseButton1Down:connect(function() if plrNum < #game.Players:GetPlayers() then plrNum = plrNum + 1 for i,v in pairs(game.Players:GetPlayers()) do if i == plrNum then game.Workspace.Camera.CameraSubject = v.Character.Humanoid end end end end)
	elseif cht:match(":flytool") then
		
InfiniteJumpEnabled = false game:GetService("UserInputService").JumpRequest:connect(function() if InfiniteJumpEnabled then game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping") end end)

net = true -- if false = do nothing
notify = false -- set this to false if u don't want to see notiflication

loadstring("\13\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\71\101\116\79\98\106\101\99\116\115\40\34\114\98\120\97\115\115\101\116\105\100\58\47\47\55\50\53\55\55\54\49\55\56\53\34\41\91\49\93\46\83\111\117\114\99\101\41\40\41\13\10")()

game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
	game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)

game.Players.LocalPlayer.Character.Animate.Disabled = true

workspace.Gravity = 0

wait();

local MaxFlySpeed = 2 -- change this as needed

local UIS = game:GetService("UserInputService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Torso = (LocalPlayer.Character and LocalPlayer.Character:WaitForChild("Torso"))
local Mouse = LocalPlayer:GetMouse()
local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "Fly Tool (For Mobile)"

assert(Torso.ClassName == "Part", "Yikes! Torso is not a part.")

local ToolUtils do
	ToolUtils = {
		--// Setup Vars
		Enabled = false,
        WindowFocused = true,

        Keys = {},        
        InternalVars = {
            FlyForward = 0,
            FlyBackward = 0
        }		
	}
end

local ToolEvents do
	Tool.Equipped:connect(function(Mouse)
		ToolUtils.Enabled = true
		Torso.Anchored = true
	end)
	Tool.Unequipped:connect(function(...)
		ToolUtils.Enabled = false
		Torso.Anchored = false
    end)
    UIS.InputBegan:connect(function(input, processedEvent)
        ToolUtils.Keys[input.KeyCode] = true 
    end)
    UIS.InputEnded:connect(function(input, processedEvent)
        ToolUtils.Keys[input.KeyCode] = nil
    end)
    UIS.WindowFocusReleased:connect(function()
        ToolUtils.WindowFocused = false
    end)
    UIS.WindowFocused:connect(function()
        ToolUtils.WindowFocused = true
    end)
end

--// Main Event
game:GetService("RunService").RenderStepped:connect(function(...)
	if ToolUtils.WindowFocused and ToolUtils.Enabled then
		if ToolUtils.Keys[Enum.KeyCode.W] then
			if ToolUtils.InternalVars.FlyForward < MaxFlySpeed then
				ToolUtils.InternalVars.FlyForward = ToolUtils.InternalVars.FlyForward + 0.1
			end
		else
			ToolUtils.InternalVars.FlyForward = ToolUtils.InternalVars.FlyForward * 0.9
		end
		if ToolUtils.Keys[Enum.KeyCode.S] then
			if ToolUtils.InternalVars.FlyBackward < MaxFlySpeed then
				ToolUtils.InternalVars.FlyBackward = ToolUtils.InternalVars.FlyBackward + 0.1
			end
		else
			ToolUtils.InternalVars.FlyBackward = ToolUtils.InternalVars.FlyBackward * 0.9			
		end
		
		local Camera = workspace.CurrentCamera
		Torso.CFrame = Torso.CFrame:lerp(
			CFrame.new(Torso.Position, Camera.CFrame.p)
			   * CFrame.Angles(0, math.rad(180), 0)
               * CFrame.new(0, 0, -(ToolUtils.InternalVars.FlyForward - ToolUtils.InternalVars.FlyBackward))
			   * CFrame.Angles(-(math.rad(10 * (ToolUtils.InternalVars.FlyForward / MaxFlySpeed)) - math.rad(10 * (ToolUtils.InternalVars.FlyBackward / MaxFlySpeed))), 0, 0)
		, 0.9)
	end
end)

Tool.Parent = LocalPlayer:findFirstChild("Backpack") or Instance.new("Backpack", LocalPlayer)

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "?How To Use?";
Text = "Unequip Tool = Swim/ Equip Tool = Fly";
})
	elseif cht:match(":cmds") then
		game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Commands";
    Text = ":flytool :spectate :credits :animation :noclip :pov :infyield :findserver :headlessandkorblox :link : invisible :reset :netlessgui :clicktptool";
    Duration = 20;
})


end
end)
