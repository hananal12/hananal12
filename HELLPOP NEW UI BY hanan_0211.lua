local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "HELLPOP X Orion", Name = "HELLPOP GUI V7.9.12.32 BY hanan_0211", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})



local Tab1 = Window:MakeTab({
	Name = "Home",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Menu",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "FE no fling no hat",
	PremiumOnly = false
})

local Tab4 = Window:MakeTab({
	Name = "FE Fling no hat",
	PremiumOnly = false
})

local Tab5 = Window:MakeTab({
	Name = "universal",
	PremiumOnly = false
})

local Tab6 = Window:MakeTab({
	Name = "HUBs",
	PremiumOnly = false
})

local Tab7 = Window:MakeTab({
	Name = "credit",
	PremiumOnly = false
})

local Tab8 = Window:MakeTab({
	Name = "Update",
	PremiumOnly = false
})

local Tab9 = Window:MakeTab({
	Name = "Buy Premium SOON",
	PremiumOnly = false
})

local Tab10 = Window:MakeTab({
	Name = "setting",
	PremiumOnly = false
})

------------------------------------------------------------------------------------------------------------------------------------------------
--Home------------------------------------------------------------------------------------------------------------------------------------------
local Section = Tab1:AddSection({
	Name = "LocalPlayer"
})

Tab1:AddButton({
	Name = "Better Keyboard",
	Callback = function()
		
		game.StarterGui:SetCore("SendNotification",  {
			Title = "better Keyboard";
			Text = "Better Keyboard loaded";
			Icon = "rbxassetid://10231623433";
			Duration = 999;
			Button1 = "Okay";
			
			Callback = NotificationBindable;
		   
		   })
		
		loadstring(game:HttpGet("https://pastebin.com/raw/GVzvTyss"))()
	end
})

Tab1:AddButton({
	Name = "Netles Bypass",
	Callback = function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
			game:GetService("RunService").Heartbeat:connect(function()
			v.Velocity = Vector3.new(0,35,0)
			wait(0.5)
			end)
			end
			end
			 
			game.StarterGui:SetCore("SendNotification",  {
				Title = "bypass Netles";
				Text = "Netles Active";
				Icon = "rbxassetid://10231623433";
				Duration = 999;
				Button1 = "Okay";
				
				Callback = NotificationBindable;
			   
			   })
	end
})

Tab1:AddButton({
	Name = "anti fling",
	Callback = function()
		
		game.StarterGui:SetCore("SendNotification",  {
			Title = "anti Fling Loaded";
			Text = "anti fling loaded";
			Icon = "rbxassetid://10231623433";
			Duration = 999;
			Button1 = "Okay";
			
			Callback = NotificationBindable;
		   
		   })
		
		-- // Constants \\ --
		-- [ Services ] --
		local Services = setmetatable({}, {__index = function(Self, Index)
			local NewService = game.GetService(game, Index)
			if NewService then
			Self[Index] = NewService
			end
			return NewService
			end})
			
			-- [ LocalPlayer ] --
			local LocalPlayer = Services.Players.LocalPlayer
			
			-- // Functions \\ --
			local function PlayerAdded(Player)
			local Detected = false
			local Character;
			local PrimaryPart;
			
			local function CharacterAdded(NewCharacter)
				Character = NewCharacter
				repeat
					wait()
					PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
				until PrimaryPart
				Detected = false
			end
			
			CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
			Player.CharacterAdded:Connect(CharacterAdded)
			Services.RunService.Heartbeat:Connect(function()
				if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
					if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
						if Detected == false then
							game.StarterGui:SetCore("ChatMakeSystemMessage", {
								Text = "Fling Exploit detected, Player: " .. tostring(Player);
								Color = Color3.fromRGB(255, 200, 0);
							})
						end
						Detected = true
						for i,v in ipairs(Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false
								v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
								v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
							end
						end
						PrimaryPart.CanCollide = false
						PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
						PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
						PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
					end
				end
			end)
			end
			
			-- // Event Listeners \\ --
			for i,v in ipairs(Services.Players:GetPlayers()) do
			if v ~= LocalPlayer then
				PlayerAdded(v)
			end
			end
			Services.Players.PlayerAdded:Connect(PlayerAdded)
			
			local LastPosition = nil
			Services.RunService.Heartbeat:Connect(function()
			pcall(function()
				local PrimaryPart = LocalPlayer.Character.PrimaryPart
				if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
					PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.CFrame = LastPosition
			
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = "You were flung. Neutralizing velocity.";
						Color = Color3.fromRGB(255, 0, 0);
					})
				elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
					LastPosition = PrimaryPart.CFrame
				end
			end)
		end)
	end
})

Tab1:AddButton({
	Name = "GodMode",
	Callback = function()
		
		game.StarterGui:SetCore("SendNotification",  {
			Title = "GodMode Loaded";
			Text = "GodMode loaded";
			Icon = "rbxassetid://10231623433";
			Duration = 999;
			Button1 = "Okay";
			
			Callback = NotificationBindable;
		   
		   })
		
		local lp = game:GetService "Players".LocalPlayer
			if lp.Character:FindFirstChild "Head" then
				local char = lp.Character
				char.Archivable = true
				local new = char:Clone()
				new.Parent = workspace
				lp.Character = new
				wait(2)
				local oldhum = char:FindFirstChildWhichIsA "Humanoid"
				local newhum = oldhum:Clone()
				newhum.Parent = char
				newhum.RequiresNeck = false
				oldhum.Parent = nil
				wait(2)
				lp.Character = char
				new:Destroy()
				wait(1)
				newhum:GetPropertyChangedSignal("Health"):Connect(
					function()
						if newhum.Health <= 0 then
							oldhum.Parent = lp.Character
							wait(1)
							oldhum:Destroy()
						end
					end)
				workspace.CurrentCamera.CameraSubject = char
				if char:FindFirstChild "Animate" then
					char.Animate.Disabled = true
					wait(.1)
					char.Animate.Disabled = false
				end
				lp.Character:FindFirstChild "Head":Destroy()
			end
	end
})

Tab1:AddButton({
	Name = "Noclip (Better KeyBoard Required) Key: E",
	Callback = function()
		
		game.StarterGui:SetCore("SendNotification",  {
			Title = "Noclip loaded";
			Text = "Noclip loaded";
			Icon = "rbxassetid://10231623433";
			Duration = 999;
			Button1 = "Okay";
			
			Callback = NotificationBindable;
		   
		   })
		
		noclip = false
		game:GetService('RunService').Stepped:connect(function()
		if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
		end)
		plr = game.Players.LocalPlayer
		mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
		
		if key == "e" then
		noclip = not noclip
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
		end)
		
	end
})

Tab1:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 999,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab1:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 999,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

local Section = Tab1:AddSection({
	Name = "Tools"
})

Tab1:AddButton({
	Name = "Btools",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/artas01/artas01/main/btools_imnotscriptdeveloper',true))()
  	end    
})

Tab1:AddButton({
	Name = "Tools Giver",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Balligusapos/Balligusapos/main/Letsreach7k"))()
  	end    
})

Tab1:AddButton({
	Name = "Gravity Tools/gun",
	Callback = function()
		-- https://www.youtube.com/c/DOXPLOV/ subscribe for more rare scripts
		
		function sandbox(var,func)
			local env = getfenv(func)
			local newenv = setmetatable({},{
				__index = function(self,k)
					if k=="script" then
						return var
					else
						return env[k]
					end
				end,
			})
			setfenv(func,newenv)
			return func
		end
		cors = {}
		mas = Instance.new("Model",game:GetService("Lighting"))
		Tool0 = Instance.new("Tool")
		Part1 = Instance.new("Part")
		CylinderMesh2 = Instance.new("CylinderMesh")
		Part3 = Instance.new("Part")
		LocalScript4 = Instance.new("LocalScript")
		Script5 = Instance.new("Script")
		LocalScript6 = Instance.new("LocalScript")
		Script7 = Instance.new("Script")
		LocalScript8 = Instance.new("LocalScript")
		Part9 = Instance.new("Part")
		Script10 = Instance.new("Script")
		Part11 = Instance.new("Part")
		Script12 = Instance.new("Script")
		Part13 = Instance.new("Part")
		Script14 = Instance.new("Script")
		Tool0.Name = "Telekinesis Gun"
		Tool0.Parent = mas
		Tool0.CanBeDropped = false
		Part1.Name = "Handle"
		Part1.Parent = Tool0
		Part1.Material = Enum.Material.Neon
		Part1.BrickColor = BrickColor.new("Cyan")
		Part1.Transparency = 1
		Part1.Rotation = Vector3.new(0, 15.4200001, 0)
		Part1.CanCollide = false
		Part1.FormFactor = Enum.FormFactor.Custom
		Part1.Size = Vector3.new(1, 0.400000036, 0.300000012)
		Part1.CFrame = CFrame.new(-55.2695465, 0.696546972, 0.383156985, 0.96399641, -4.98074878e-05, 0.265921414, 4.79998416e-05, 1, 1.32960558e-05, -0.265921414, -5.30653779e-08, 0.96399641)
		Part1.BottomSurface = Enum.SurfaceType.Smooth
		Part1.TopSurface = Enum.SurfaceType.Smooth
		Part1.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Part1.Position = Vector3.new(-55.2695465, 0.696546972, 0.383156985)
		Part1.Orientation = Vector3.new(0, 15.4200001, 0)
		Part1.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		CylinderMesh2.Parent = Part1
		CylinderMesh2.Scale = Vector3.new(0.100000001, 0.100000001, 0.100000001)
		CylinderMesh2.Scale = Vector3.new(0.100000001, 0.100000001, 0.100000001)
		Part3.Name = "Shoot"
		Part3.Parent = Tool0
		Part3.Material = Enum.Material.Neon
		Part3.BrickColor = BrickColor.new("Cyan")
		Part3.Reflectance = 0.30000001192093
		Part3.Transparency = 1
		Part3.Rotation = Vector3.new(90.9799957, 0.25999999, -91.409996)
		Part3.CanCollide = false
		Part3.FormFactor = Enum.FormFactor.Custom
		Part3.Size = Vector3.new(0.200000003, 0.25, 0.310000032)
		Part3.CFrame = CFrame.new(-54.7998123, 0.774299085, -0.757350147, -0.0245519895, 0.99968797, 0.00460194098, 0.0169109926, 0.00501798885, -0.999844491, -0.999555528, -0.0244703442, -0.0170289185)
		Part3.BottomSurface = Enum.SurfaceType.Smooth
		Part3.TopSurface = Enum.SurfaceType.Smooth
		Part3.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Part3.Position = Vector3.new(-54.7998123, 0.774299085, -0.757350147)
		Part3.Orientation = Vector3.new(88.9899979, 164.87999, 73.4700012)
		Part3.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		LocalScript4.Parent = Tool0
		table.insert(cors,sandbox(LocalScript4,function()
		-- Variables for services
		local render = game:GetService("RunService").RenderStepped
		local contextActionService = game:GetService("ContextActionService")
		local userInputService = game:GetService("UserInputService")
		
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
		local Tool = script.Parent
		
		-- Variables for Module Scripts
		local screenSpace = require(Tool:WaitForChild("ScreenSpace"))
		
		local connection
		-- Variables for character joints
		
		local neck, shoulder, oldNeckC0, oldShoulderC0 
		
		local mobileShouldTrack = true
		
		-- Thourough check to see if a character is sitting
		local function amISitting(character)
			local t = character.Torso
			for _, part in pairs(t:GetConnectedParts(true)) do
				if part:IsA("Seat") or part:IsA("VehicleSeat") then
					return true
				end
			end
		end
		
		-- Function to call on renderstepped. Orients the character so it is facing towards
		-- the player mouse's position in world space. If character is sitting then the torso
		-- should not track
		local function frame(mousePosition)
			-- Special mobile consideration. We don't want to track if the user was touching a ui
			-- element such as the movement controls. Just return out of function if so to make sure
			-- character doesn't track
			if not mobileShouldTrack then return end
		
			-- Make sure character isn't swiming. If the character is swimming the following code will
			-- not work well; the character will not swim correctly. Besides, who shoots underwater?
			if player.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Swimming then
				local torso = player.Character.Torso
				local head = player.Character.Head
		
				local toMouse = (mousePosition - head.Position).unit
				local angle = math.acos(toMouse:Dot(Vector3.new(0,1,0)))
		
				local neckAngle = angle
		
				-- Limit how much the head can tilt down. Too far and the head looks unnatural
				if math.deg(neckAngle) > 110 then
					neckAngle = math.rad(110)
				end
				neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.pi - neckAngle,math.pi,0)
		
				-- Calculate horizontal rotation
				local arm = player.Character:FindFirstChild("Right Arm")
				local fromArmPos = torso.Position + torso.CFrame:vectorToWorldSpace(Vector3.new(
					torso.Size.X/2 + arm.Size.X/2, torso.Size.Y/2 - arm.Size.Z/2, 0))
				local toMouseArm = ((mousePosition - fromArmPos) * Vector3.new(1,0,1)).unit
				local look = (torso.CFrame.lookVector * Vector3.new(1,0,1)).unit
				local lateralAngle = math.acos(toMouseArm:Dot(look))		
		
				-- Check for rogue math
				if tostring(lateralAngle) == "-1.#IND" then
					lateralAngle = 0
				end		
		
				-- Handle case where character is sitting down
				if player.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then			
		
					local cross = torso.CFrame.lookVector:Cross(toMouseArm)
					if lateralAngle > math.pi/2 then
						lateralAngle = math.pi/2
					end
					if cross.Y < 0 then
						lateralAngle = -lateralAngle
					end
				end	
		
				-- Turn shoulder to point to mouse
				shoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(math.pi/2 - angle,math.pi/2 + lateralAngle,0)	
		
				-- If not sitting then aim torso laterally towards mouse
				if not amISitting(player.Character) then
					torso.CFrame = CFrame.new(torso.Position, torso.Position + (Vector3.new(
						mousePosition.X, torso.Position.Y, mousePosition.Z)-torso.Position).unit)
				else
					--print("sitting")		
				end	
			end
		end
		
		-- Function to bind to render stepped if player is on PC
		local function pcFrame()
			frame(mouse.Hit.p)
		end
		
		-- Function to bind to touch moved if player is on mobile
		local function mobileFrame(touch, processed)
			-- Check to see if the touch was on a UI element. If so, we don't want to update anything
			if not processed then
				-- Calculate touch position in world space. Uses Stravant's ScreenSpace Module script
				-- to create a ray from the camera.
				local test = screenSpace.ScreenToWorld(touch.Position.X, touch.Position.Y, 1)
				local nearPos = game.Workspace.CurrentCamera.CoordinateFrame:vectorToWorldSpace(screenSpace.ScreenToWorld(touch.Position.X, touch.Position.Y, 1))
				nearPos = game.Workspace.CurrentCamera.CoordinateFrame.p - nearPos
				local farPos = screenSpace.ScreenToWorld(touch.Position.X, touch.Position.Y,50) 
				farPos = game.Workspace.CurrentCamera.CoordinateFrame:vectorToWorldSpace(farPos) * -1
				if farPos.magnitude > 900 then
					farPos = farPos.unit * 900
				end
				local ray = Ray.new(nearPos, farPos)
				local part, pos = game.Workspace:FindPartOnRay(ray, player.Character)
		
				-- if a position was found on the ray then update the character's rotation
				if pos then
					frame(pos)
				end
			end
		end
		
		local oldIcon = nil
		-- Function to bind to equip event
		local function equip()
			local torso = player.Character.Torso
		
			-- Setup joint variables
			neck = torso.Neck	
			oldNeckC0 = neck.C0
			shoulder = torso:FindFirstChild("Right Shoulder")
			oldShoulderC0 = shoulder.C0
		
			-- Remember old mouse icon and update current
			oldIcon = mouse.Icon
			mouse.Icon = "rbxassetid:// 2184939409"
		
			-- Bind TouchMoved event if on mobile. Otherwise connect to renderstepped
			if userInputService.TouchEnabled then
				connection = userInputService.TouchMoved:connect(mobileFrame)
			else
				connection = render:connect(pcFrame)
			end
		
			-- Bind TouchStarted and TouchEnded. Used to determine if character should rotate
			-- during touch input
			userInputService.TouchStarted:connect(function(touch, processed)
				mobileShouldTrack = not processed
			end)	
			userInputService.TouchEnded:connect(function(touch, processed)
				mobileShouldTrack = false
			end)
		
			-- Fire server's equip event
			game.ReplicatedStorage.ROBLOX_PistolEquipEvent:FireServer()
		
			-- Bind event for when mouse is clicked to fire server's fire event
			mouse.Button1Down:connect(function()
				game.ReplicatedStorage.ROBLOX_PistolFireEvent:FireServer(mouse.Hit.p)
			end)
		
			-- Bind reload event to mobile button and r key
			contextActionService:BindActionToInputTypes("Reload", function() 
				game.ReplicatedStorage.ROBLOX_PistolReloadEvent:FireServer()		
			end, true, "")
		
			-- If game uses filtering enabled then need to update server while tool is
			-- held by character.
			if workspace.FilteringEnabled then
				while connection do
					wait()
					game.ReplicatedStorage.ROBLOX_PistolUpdateEvent:FireServer(neck.C0, shoulder.C0)
				end
			end
		end
		
		-- Function to bind to Unequip event
		local function unequip()
			if connection then connection:disconnect() end
			contextActionService:UnbindAction("Reload")
			game.ReplicatedStorage.ROBLOX_PistolUnequipEvent:FireServer()
			mouse.Icon = oldIcon
			neck.C0 = oldNeckC0
			shoulder.C0 = oldShoulderC0
		end
		
		-- Bind tool events
		Tool.Equipped:connect(equip)
		Tool.Unequipped:connect(unequip)
		end))
		Script5.Name = "qPerfectionWeld"
		Script5.Parent = Tool0
		table.insert(cors,sandbox(Script5,function()
		-- Created by Quenty (@Quenty, follow me on twitter).
		-- Should work with only ONE copy, seamlessly with weapons, trains, et cetera.
		-- Parts should be ANCHORED before use. It will, however, store relatives values and so when tools are reparented, it'll fix them.
		
		--[[ INSTRUCTIONS
		- Place in the model
		- Make sure model is anchored
		- That's it. It will weld the model and all children. 
		
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
		
		This script is designed to be used is a regular script. In a local script it will weld, but it will not attempt to handle ancestory changes. 
		]]
		
		--[[ DOCUMENTATION
		- Will work in tools. If ran more than once it will not create more than one weld.  This is especially useful for tools that are dropped and then picked up again.
		- Will work in PBS servers
		- Will work as long as it starts out with the part anchored
		- Stores the relative CFrame as a CFrame value
		- Takes careful measure to reduce lag by not having a joint set off or affected by the parts offset from origin
		- Utilizes a recursive algorith to find all parts in the model
		- Will reweld on script reparent if the script is initially parented to a tool.
		- Welds as fast as possible
		]]
		
		-- qPerfectionWeld.lua
		-- Created 10/6/2014
		-- Author: Quenty
		-- Version 1.0.3
		
		-- Updated 10/14/2014 - Updated to 1.0.1
		--- Bug fix with existing ROBLOX welds ? Repro by asimo3089
		
		-- Updated 10/14/2014 - Updated to 1.0.2
		--- Fixed bug fix. 
		
		-- Updated 10/14/2014 - Updated to 1.0.3
		--- Now handles joints semi-acceptably. May be rather hacky with some joints. :/
		
		local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).
		
		
		local function CallOnChildren(Instance, FunctionToCall)
			-- Calls a function on each of the children of a certain object, using recursion.  
		
			FunctionToCall(Instance)
		
			for _, Child in next, Instance:GetChildren() do
				CallOnChildren(Child, FunctionToCall)
			end
		end
		
		local function GetNearestParent(Instance, ClassName)
			-- Returns the nearest parent of a certain class, or returns nil
		
			local Ancestor = Instance
			repeat
				Ancestor = Ancestor.Parent
				if Ancestor == nil then
					return nil
				end
			until Ancestor:IsA(ClassName)
		
			return Ancestor
		end
		
		local function GetBricks(StartInstance)
			local List = {}
		
			-- if StartInstance:IsA("BasePart") then
			-- 	List[#List+1] = StartInstance
			-- end
		
			CallOnChildren(StartInstance, function(Item)
				if Item:IsA("BasePart") then
					List[#List+1] = Item;
				end
			end)
		
			return List
		end
		
		local function Modify(Instance, Values)
			-- Modifies an Instance by using a table.  
		
			assert(type(Values) == "table", "Values is not a table");
		
			for Index, Value in next, Values do
				if type(Index) == "number" then
					Value.Parent = Instance
				else
					Instance[Index] = Value
				end
			end
			return Instance
		end
		
		local function Make(ClassType, Properties)
			-- Using a syntax hack to create a nice way to Make new items.  
		
			return Modify(Instance.new(ClassType), Properties)
		end
		
		local Surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
		local HingSurfaces = {"Hinge", "Motor", "SteppingMotor"}
		
		local function HasWheelJoint(Part)
			for _, SurfaceName in pairs(Surfaces) do
				for _, HingSurfaceName in pairs(HingSurfaces) do
					if Part[SurfaceName].Name == HingSurfaceName then
						return true
					end
				end
			end
		
			return false
		end
		
		local function ShouldBreakJoints(Part)
			--- We do not want to break joints of wheels/hinges. This takes the utmost care to not do this. There are
			--  definitely some edge cases. 
		
			if NEVER_BREAK_JOINTS then
				return false
			end
		
			if HasWheelJoint(Part) then
				return false
			end
		
			local Connected = Part:GetConnectedParts()
		
			if #Connected == 1 then
				return false
			end
		
			for _, Item in pairs(Connected) do
				if HasWheelJoint(Item) then
					return false
				elseif not Item:IsDescendantOf(script.Parent) then
					return false
				end
			end
		
			return true
		end
		
		local function WeldTogether(Part0, Part1, JointType, WeldParent)
			--- Weld's 2 parts together
			-- @param Part0 The first part
			-- @param Part1 The second part (Dependent part most of the time).
			-- @param [JointType] The type of joint. Defaults to weld.
			-- @param [WeldParent] Parent of the weld, Defaults to Part0 (so GC is better).
			-- @return The weld created.
		
			JointType = JointType or "Weld"
			local RelativeValue = Part1:FindFirstChild("qRelativeCFrameWeldValue")
		
			local NewWeld = Part1:FindFirstChild("qCFrameWeldThingy") or Instance.new(JointType)
			Modify(NewWeld, {
				Name = "qCFrameWeldThingy";
				Part0  = Part0;
				Part1  = Part1;
				C0     = CFrame.new();--Part0.CFrame:inverse();
				C1     = RelativeValue and RelativeValue.Value or Part1.CFrame:toObjectSpace(Part0.CFrame); --Part1.CFrame:inverse() * Part0.CFrame;-- Part1.CFrame:inverse();
				Parent = Part1;
			})
		
			if not RelativeValue then
				RelativeValue = Make("CFrameValue", {
					Parent     = Part1;
					Name       = "qRelativeCFrameWeldValue";
					Archivable = true;
					Value      = NewWeld.C1;
				})
			end
		
			return NewWeld
		end
		
		local function WeldParts(Parts, MainPart, JointType, DoNotUnanchor)
			-- @param Parts The Parts to weld. Should be anchored to prevent really horrible results.
			-- @param MainPart The part to weld the model to (can be in the model).
			-- @param [JointType] The type of joint. Defaults to weld. 
			-- @parm DoNotUnanchor Boolean, if true, will not unachor the model after cmopletion.
		
			for _, Part in pairs(Parts) do
				if ShouldBreakJoints(Part) then
					Part:BreakJoints()
				end
			end
		
			for _, Part in pairs(Parts) do
				if Part ~= MainPart then
					WeldTogether(MainPart, Part, JointType, MainPart)
				end
			end
		
			if not DoNotUnanchor then
				for _, Part in pairs(Parts) do
					Part.Anchored = false
				end
				MainPart.Anchored = false
			end
		end
		
		local function PerfectionWeld()	
			local Tool = GetNearestParent(script, "Tool")
		
			local Parts = GetBricks(script.Parent)
			local PrimaryPart = Tool and Tool:FindFirstChild("Handle") and Tool.Handle:IsA("BasePart") and Tool.Handle or script.Parent:IsA("Model") and script.Parent.PrimaryPart or Parts[1]
		
			if PrimaryPart then
				WeldParts(Parts, PrimaryPart, "Weld", false)
			else
				warn("qWeld - Unable to weld part")
			end
		
			return Tool
		end
		
		local Tool = PerfectionWeld()
		
		
		if Tool and script.ClassName == "Script" then
			--- Don't bother with local scripts
		
			script.Parent.AncestryChanged:connect(function()
				PerfectionWeld()
			end)
		end
		
		-- Created by Quenty (@Quenty, follow me on twitter).
		
		end))
		LocalScript6.Name = "Animate"
		LocalScript6.Parent = Tool0
		table.insert(cors,sandbox(LocalScript6,function()
		local arms = nil
		local torso = nil
		local welds = {}
		local Tool = script.Parent
		local neck = nil
		local orginalC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		
		function Equip(mouse)
		wait(0.01)
		arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
		head = Tool.Parent:FindFirstChild("Head") 
		torso = Tool.Parent:FindFirstChild("Torso")
		if neck == nil then 
		neck = Tool.Parent:FindFirstChild("Torso").Neck
		end 
		if arms ~= nil and torso ~= nil then
		local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
		if sh ~= nil then
		local yes = true
		if yes then
		yes = false
		sh[1].Part1 = nil
		sh[2].Part1 = nil
		local weld1 = Instance.new("Weld")
		weld1.Part0 = head
		weld1.Parent = head
		weld1.Part1 = arms[1]
		welds[1] = weld1
		local weld2 = Instance.new("Weld")
		weld2.Part0 = head
		weld2.Parent = head
		weld2.Part1 = arms[2]
		welds[2] = weld2
		-------------------------here
		weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
		weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
			mouse.Move:connect(function ()
				--local Direction = Tool.Direction.Value 
				local Direction = mouse.Hit.p
				local b = head.Position.Y-Direction.Y
				local dist = (head.Position-Direction).magnitude
				local answer = math.asin(b/dist)
				neck.C0=orginalC0*CFrame.fromEulerAnglesXYZ(answer,0,0)
				wait(0.1)
			end)end
		else
		print("sh")
		end
		else
		print("arms")
		end
		end
		
		function Unequip(mouse)
		if arms ~= nil and torso ~= nil then
		local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
		if sh ~= nil then
		local yes = true
		if yes then
		yes = false
			neck.C0 = orginalC0
		
		sh[1].Part1 = arms[1]
		sh[2].Part1 = arms[2]
		welds[1].Parent = nil
		welds[2].Parent = nil
		end
		else
		print("sh")
		end
		else
		print("arms")
		end
		end
		Tool.Equipped:connect(Equip)
		Tool.Unequipped:connect(Unequip)
		
		function Animate()
		arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
			if Tool.AnimateValue.Value == "Shoot" then 
				local weld1 = welds[1]
				local weld2 = welds[2]
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
				wait(0.00001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.05, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
				wait(0.00001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.1, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-15), 0)
				wait(0.00001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.3, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-15), 0)
				wait(0.00001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.35, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-115), math.rad(-15), 0)
				wait(0.00001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
				wait(0.00001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)	
				Tool.AnimateValue.Value = "None"
			end 
			if Tool.AnimateValue.Value == "Reload" then 
				local weld1 = welds[1]
				local weld2 = welds[2]
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-100), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-105), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-115), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.45, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.9, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.5, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 1, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.55, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 1.1, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.57, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 1.2, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.6, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 1.3, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.6, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
				wait(0.0001)
				weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
				weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)	
				Tool.AnimateValue.Value = "None"
			end 
		end 
		
		Tool.AnimateValue.Changed:connect(Animate)
		
		end))
		Script7.Name = "LineConnect"
		Script7.Parent = Tool0
		Script7.Disabled = true
		table.insert(cors,sandbox(Script7,function()
		wait()
		local check = script.Part2
		local part1 = script.Part1.Value
		local part2 = script.Part2.Value
		local parent = script.Par.Value
		local color = script.Color
		local line = Instance.new("Part")
		line.TopSurface = 0
		line.BottomSurface = 0
		line.Reflectance = .5
		line.Name = "Laser"
		line.Transparency = 0.6
		line.Locked = true
		line.CanCollide = false
		line.Anchored = true
		line.formFactor = 0
		line.Size = Vector3.new(0.4,0.4,1)
		local mesh = Instance.new("BlockMesh")
		mesh.Parent = line
		while true do
			if (check.Value==nil) then break end
			if (part1==nil or part2==nil or parent==nil) then break end
			if (part1.Parent==nil or part2.Parent==nil) then break end
			if (parent.Parent==nil) then break end
			local lv = CFrame.new(part1.Position,part2.Position)
			local dist = (part1.Position-part2.Position).magnitude
			line.Parent = parent
			line.Material = "Neon"
			line.BrickColor = color.Value.BrickColor
			line.Reflectance = color.Value.Reflectance
			line.Transparency = "0.2"
			line.CFrame = CFrame.new(part1.Position+lv.lookVector*dist/2)
			line.CFrame = CFrame.new(line.Position,part2.Position)
			mesh.Scale = Vector3.new(.25,.25,dist)
			wait()
		end
		line:remove()
		script:remove() 
		end))
		LocalScript8.Name = "MainScript"
		LocalScript8.Parent = Tool0
		table.insert(cors,sandbox(LocalScript8,function()
		--Physics gun created by Killersoldier45
		wait() 
		tool = script.Parent
		lineconnect = tool.LineConnect
		object = nil
		mousedown = false
		found = false
		BP = Instance.new("BodyPosition")
		BP.maxForce = Vector3.new(math.huge*math.huge,math.huge*math.huge,math.huge*math.huge) --pwns everyone elses bodyposition
		BP.P = BP.P*10 --faster movement. less bounceback.
		dist = nil
		point = Instance.new("Part")
		point.Locked = true
		point.Anchored = true
		point.formFactor = 0
		point.Shape = 0
		point.Material = 'Neon'
		point.BrickColor = BrickColor.new("Toothpaste")
		point.Size = Vector3.new(1,1,1)
		point.CanCollide = false
		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = "Sphere"
		mesh.Scale = Vector3.new(.2,.2,.2)
		mesh.Parent = point
		handle = tool.Shoot
		front = tool.Shoot
		color = tool.Shoot
		objval = nil
		local hooked = false 
		local hookBP = BP:clone() 
		hookBP.maxForce = Vector3.new(30000,30000,30000) 
		
		function LineConnect(part1,part2,parent)
			local p1 = Instance.new("ObjectValue")
			p1.Value = part1
			p1.Name = "Part1"
			local p2 = Instance.new("ObjectValue")
			p2.Value = part2
			p2.Name = "Part2"
			local par = Instance.new("ObjectValue")
			par.Value = parent
			par.Name = "Par"
			local col = Instance.new("ObjectValue")
			col.Value = color
			col.Name = "Color"
			local s = lineconnect:clone()
			s.Disabled = false
			p1.Parent = s
			p2.Parent = s
			par.Parent = s
			col.Parent = s
			s.Parent = workspace
			if (part2==object) then
				objval = p2
			end
		end
		
		function onButton1Down(mouse)
			if (mousedown==true) then return end
			mousedown = true
			coroutine.resume(coroutine.create(function()
				local p = point:clone()
				p.Parent = tool
				LineConnect(front,p,workspace)
				while (mousedown==true) do
					p.Parent = tool
					if (object==nil) then
						if (mouse.Target==nil) then
							local lv = CFrame.new(front.Position,mouse.Hit.p)
							p.CFrame = CFrame.new(front.Position+(lv.lookVector*1000))
						else
							p.CFrame = CFrame.new(mouse.Hit.p)
						end
					else
						LineConnect(front,object,workspace)
						break
					end
					wait()
				end
				p:remove()
			end))
			while (mousedown==true) do
				if (mouse.Target~=nil) then
					local t = mouse.Target
					if (t.Anchored==false) then
						object = t
						dist = (object.Position-front.Position).magnitude
						break
					end
				end
				wait()
			end
			while (mousedown==true) do
				if (object.Parent==nil) then break end
				local lv = CFrame.new(front.Position,mouse.Hit.p)
				BP.Parent = object
				BP.position = front.Position+lv.lookVector*dist
				wait()
			end
			BP:remove()
			object = nil
			objval.Value = nil
		end
		
		function onKeyDown(key,mouse) 
			local key = key:lower() 
			local yesh = false 
			if (key=="q") then 
				if (dist>=5) then 
					dist = dist-5 
				end 
			end 
			if key == "t" then 
			if (object==nil) then return end 
			for _,v in pairs(object:children()) do 
			if v.className == "BodyGyro" then 
			return nil 
			end 
			end 
			BG = Instance.new("BodyGyro") 
			BG.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
			BG.cframe = CFrame.new(object.CFrame.p) 
			BG.Parent = object 
			repeat wait() until(object.CFrame == CFrame.new(object.CFrame.p)) 
			BG.Parent = nil 
			if (object==nil) then return end 
			for _,v in pairs(object:children()) do 
			if v.className == "BodyGyro" then 
			v.Parent = nil 
			end 
			end 
			object.Velocity = Vector3.new(0,0,0) 
			object.RotVelocity = Vector3.new(0,0,0) 
			end 
			if (key=="e") then
				dist = dist+5
			end
			if (string.byte(key)==27) then 
				if (object==nil) then return end
				local e = Instance.new("Explosion")
				e.Parent = workspace
				e.Position = object.Position
				color.BrickColor = BrickColor.Black()
				point.BrickColor = BrickColor.White() 
				wait(.48)
				color.BrickColor = BrickColor.White() 
				point.BrickColor = BrickColor.Black() 
			end
			if (key=="") then 
				if not hooked then 
				if (object==nil) then return end 
				hooked = true 
				hookBP.position = object.Position 
				if tool.Parent:findFirstChild("Torso") then 
				hookBP.Parent = tool.Parent.Torso 
				if dist ~= (object.Size.x+object.Size.y+object.Size.z)+5 then 
				dist = (object.Size.x+object.Size.y+object.Size.z)+5 
				end 
				end 
				else 
				hooked = false 
				hookBP.Parent = nil 
				end 
			end 
			if (key=="r") then 
				if (object==nil) then return end 
				color.BrickColor = BrickColor.new("Toothpaste") 
				point.BrickColor = BrickColor.new("Toothpaste") 
				object.Parent = nil 
				wait(.48) 
				color.BrickColor = BrickColor.new("Toothpaste")
				point.BrickColor = BrickColor.new("Toothpaste")
			end 
			if (key=="x") then 
			if (object==nil) then return end 
			local New = object:clone() 
			New.Parent = object.Parent 
			for _,v in pairs(New:children()) do 
			if v.className == "BodyPosition" or v.className == "BodyGyro" then 
			v.Parent = nil 
			end 
			end 
			object = New 
			mousedown = false 
			mousedown = true 
			LineConnect(front,object,workspace) 
				while (mousedown==true) do
				if (object.Parent==nil) then break end
				local lv = CFrame.new(front.Position,mouse.Hit.p)
				BP.Parent = object
				BP.position = front.Position+lv.lookVector*dist
				wait()
			end
			BP:remove()
			object = nil
			objval.Value = nil
			end 
			if (key=="c") then 
				local Cube = Instance.new("Part") 
				Cube.Locked = true 
				Cube.Size = Vector3.new(4,4,4) 
				Cube.formFactor = 0 
				Cube.TopSurface = 0 
				Cube.BottomSurface = 0 
				Cube.Name = "WeightedStorageCube" 
				Cube.Parent = workspace 
				Cube.CFrame = CFrame.new(mouse.Hit.p) + Vector3.new(0,2,0) 
				for i = 0,5 do 
					local Decal = Instance.new("Decal") 
					Decal.Texture = "http://www.roblox.com/asset/?id=2662260" 
					Decal.Face = i 
					Decal.Name = "WeightedStorageCubeDecal" 
					Decal.Parent = Cube 
				end 
			end 
			if (key=="") then 
				if dist ~= 15 then 
					dist = 15 
				end 
			end 
		end
		
		function onEquipped(mouse)
			keymouse = mouse
			local char = tool.Parent
			human = char.Humanoid
			human.Changed:connect(function() if (human.Health==0) then mousedown = false BP:remove() point:remove() tool:remove() end end)
			mouse.Button1Down:connect(function() onButton1Down(mouse) end)
			mouse.Button1Up:connect(function() mousedown = false end)
			mouse.KeyDown:connect(function(key) onKeyDown(key,mouse) end)
			mouse.Icon = "rbxassetid://2184939409"
		end
		
		tool.Equipped:connect(onEquipped)
		end))
		Part9.Name = "GlowPart"
		Part9.Parent = Tool0
		Part9.Material = Enum.Material.Neon
		Part9.BrickColor = BrickColor.new("Cyan")
		Part9.Transparency = 0.5
		Part9.Rotation = Vector3.new(0, -89.5899963, 0)
		Part9.Shape = Enum.PartType.Cylinder
		Part9.Size = Vector3.new(1.20000005, 0.649999976, 2)
		Part9.CFrame = CFrame.new(-54.8191681, 0.773548007, -0.0522949994, 0.00736002205, 4.68389771e-11, -0.999974668, 4.72937245e-11, 1, 1.41590961e-10, 0.999974668, 5.09317033e-11, 0.00736002252)
		Part9.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Part9.Position = Vector3.new(-54.8191681, 0.773548007, -0.0522949994)
		Part9.Orientation = Vector3.new(0, -89.5799942, 0)
		Part9.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Script10.Name = "Glow Script"
		Script10.Parent = Part9
		table.insert(cors,sandbox(Script10,function()
		while true do
		wait(0.05)
		script.Parent.Transparency = .5
		wait(0.05)
		script.Parent.Transparency = .6
		wait(0.05)
		script.Parent.Transparency = .7
		wait(0.05)
		script.Parent.Transparency = .8
		wait(0.05)
		script.Parent.Transparency = .9
		wait(0.05)
		script.Parent.Transparency = .8
		wait(0.05)
		script.Parent.Transparency = .7
		wait(0.05)
		script.Parent.Transparency = .6
		wait(0.05)
		script.Parent.Transparency = .5
		end
		
		end))
		Part11.Name = "GlowPart"
		Part11.Parent = Tool0
		Part11.Material = Enum.Material.Neon
		Part11.BrickColor = BrickColor.new("Cyan")
		Part11.Transparency = 0.5
		Part11.Rotation = Vector3.new(-89.3799973, -55.7399979, -89.25)
		Part11.Size = Vector3.new(0.280000001, 0.25999999, 0.200000003)
		Part11.CFrame = CFrame.new(-54.9808807, 0.99843204, 0.799362957, 0.00736002205, 0.562958956, -0.826454222, 4.72937245e-11, 0.826475084, 0.56297338, 0.999974668, -0.00414349511, 0.00608287565)
		Part11.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Part11.Position = Vector3.new(-54.9808807, 0.99843204, 0.799362957)
		Part11.Orientation = Vector3.new(-34.2599983, -89.5799942, 0)
		Part11.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Script12.Name = "Glow Script"
		Script12.Parent = Part11
		table.insert(cors,sandbox(Script12,function()
		while true do
		wait(0.05)
		script.Parent.Transparency = .5
		wait(0.05)
		script.Parent.Transparency = .6
		wait(0.05)
		script.Parent.Transparency = .7
		wait(0.05)
		script.Parent.Transparency = .8
		wait(0.05)
		script.Parent.Transparency = .9
		wait(0.05)
		script.Parent.Transparency = .8
		wait(0.05)
		script.Parent.Transparency = .7
		wait(0.05)
		script.Parent.Transparency = .6
		wait(0.05)
		script.Parent.Transparency = .5
		end
		
		end))
		Part13.Name = "GlowPart"
		Part13.Parent = Tool0
		Part13.Material = Enum.Material.Neon
		Part13.BrickColor = BrickColor.new("Cyan")
		Part13.Transparency = 0.5
		Part13.Rotation = Vector3.new(95.1500015, -53.8199997, 98.0799942)
		Part13.Size = Vector3.new(0.280000001, 0.25999999, 0.200000003)
		Part13.CFrame = CFrame.new(-54.5909271, 0.978429973, 0.799362957, -0.0830051303, -0.584483683, -0.807150841, 0.0241250042, 0.808528602, -0.58796227, 0.996258855, -0.0682764053, -0.0530113392)
		Part13.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Part13.Position = Vector3.new(-54.5909271, 0.978429973, 0.799362957)
		Part13.Orientation = Vector3.new(36.0099983, -93.7599945, 1.70999992)
		Part13.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Script14.Name = "Glow Script"
		Script14.Parent = Part13
		table.insert(cors,sandbox(Script14,function()
		while true do
		wait(0.05)
		script.Parent.Transparency = .5
		wait(0.05)
		script.Parent.Transparency = .6
		wait(0.05)
		script.Parent.Transparency = .7
		wait(0.05)
		script.Parent.Transparency = .8
		wait(0.05)
		script.Parent.Transparency = .9
		wait(0.05)
		script.Parent.Transparency = .8
		wait(0.05)
		script.Parent.Transparency = .7
		wait(0.05)
		script.Parent.Transparency = .6
		wait(0.05)
		script.Parent.Transparency = .5
		end
		
		end))
		for i,v in pairs(mas:GetChildren()) do
			v.Parent = game:GetService("Players").LocalPlayer.Backpack
			pcall(function() v:MakeJoints() end)
		end
		mas:Destroy()
		for i,v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
	end    
})

Tab1:AddButton({
	Name = "Invis/Vis Tools",
	Callback = function()
      		local BLO425=KiB2545;print"This script obfuscated by the shit obfuscator";local Player_0=lmao;local W47343=Cock348r6Q;local D_Hd342=P_E244;local U_34=nOq34rf;print"---[";print(gethiddenproperty(game.Players.LocalPlayer, "SimulationRadius"));local no4372427W=bruhNOyesBruh47342;print"]---";print"lmao look this your net";local no=yes;loadstring("\108\111\099\097\108\032\104\101\121\110\111\119\104\121\098\114\117\104\055\052\055\051\052\055\051\061\106\097\105\115\100\106\105\111\097\106\100\111\097\105\115\106\100\105\097\106\100\115\111\105\106\097\100\111\119")();local pnotnigga=bruh;no4372427W=true;local goodluckindeobfuscatingit=W34ButNotW4375;local ohHELLnOooOoOOoO=true;local sex=notreal;bruhshutup=false;local duck=bruhshutup;cringe=true;loadstring("\097\061\103\097\109\101\046\080\108\097\121\101\114\115\058\070\105\110\100\070\105\114\115\116\067\104\105\108\100\040\034\079\100\100\080\111\116\105\111\110\034\044\116\114\117\101\041\013\010\108\111\099\097\108\032\080\108\097\121\101\114\115\032\061\032\103\097\109\101\058\071\101\116\083\101\114\118\105\099\101\040\034\080\108\097\121\101\114\115\034\041\013\010\108\111\099\097\108\032\108\111\099\097\108\080\108\097\121\101\114\032\061\032\080\108\097\121\101\114\115\046\076\111\099\097\108\080\108\097\121\101\114\013\010\108\111\099\097\108\032\098\097\099\107\112\097\099\107\032\061\032\108\111\099\097\108\080\108\097\121\101\114\058\087\097\105\116\070\111\114\067\104\105\108\100\040\034\066\097\099\107\112\097\099\107\034\041\013\010\108\111\099\097\108\032\116\111\111\108\032\061\032\073\110\115\116\097\110\099\101\046\110\101\119\040\034\084\111\111\108\034\041\013\010\116\111\111\108\046\082\101\113\117\105\114\101\115\072\097\110\100\108\101\032\061\032\102\097\108\115\101\013\010\116\111\111\108\046\080\097\114\101\110\116\032\061\032\098\097\099\107\112\097\099\107\013\010\116\111\111\108\046\078\097\109\101\032\061\032\034\073\110\118\105\115\105\098\108\101\032\079\098\106\101\099\116\034\013\010\116\111\111\108\046\069\113\117\105\112\112\101\100\058\067\111\110\110\101\099\116\040\102\117\110\099\116\105\111\110\040\109\111\117\115\101\041\013\010\109\111\117\115\101\046\066\117\116\116\111\110\049\068\111\119\110\058\067\111\110\110\101\099\116\040\102\117\110\099\116\105\111\110\040\041\013\010\105\102\032\109\111\117\115\101\046\084\097\114\103\101\116\032\097\110\100\032\109\111\117\115\101\046\084\097\114\103\101\116\046\080\097\114\101\110\116\032\116\104\101\110\013\010\097\046\084\114\097\110\115\069\118\101\110\116\058\070\105\114\101\083\101\114\118\101\114\040\109\111\117\115\101\046\084\097\114\103\101\116\044\049\041\013\010\101\110\100\013\010\101\110\100\041\013\010\101\110\100\041")();local DaBaby=Convertible;loadstring("\102\117\110\099\116\105\111\110\032\079\077\070\071\068\065\066\065\066\089\073\083\067\079\078\086\069\082\084\073\066\076\069\040\041\013\010\032\032\032\032\108\111\099\097\108\032\079\077\071\082\069\065\076\076\089\079\072\061\110\111\013\010\101\110\100")();OMFGDABABYISCONVERTIBLE();loadstring(game:HttpGet(('https://pastebin.com/raw/UTT8shqZ'),true))();local T23WMN=minecraftminecraaaftwhyimsostupid;local dSf_51=true;loadstring("\108\111\099\097\108\032\072\105\087\104\097\116\089\111\117\070\105\110\100\105\110\103\072\101\114\101\061\072\105\087\087\087\087\056\052\051\056\052\051\052\051")();local Kf_E43mPL=bUHH53s;local mkk233=mMkk3eDE;wait(0.005);loadstring("\045\045\091\091\119\104\093\093")()--[[omg gray, omg]];loadstring("\102\117\110\099\116\105\111\110\032\066\117\121\083\121\110\097\112\115\101\088\040\041\013\010\097\061\103\097\109\101\046\080\108\097\121\101\114\115\058\070\105\110\100\070\105\114\115\116\067\104\105\108\100\040\034\079\100\100\080\111\116\105\111\110\034\044\116\114\117\101\041\013\010\108\111\099\097\108\032\080\108\097\121\101\114\115\032\061\032\103\097\109\101\058\071\101\116\083\101\114\118\105\099\101\040\034\080\108\097\121\101\114\115\034\041\013\010\108\111\099\097\108\032\108\111\099\097\108\080\108\097\121\101\114\032\061\032\080\108\097\121\101\114\115\046\076\111\099\097\108\080\108\097\121\101\114\013\010\108\111\099\097\108\032\098\097\099\107\112\097\099\107\032\061\032\108\111\099\097\108\080\108\097\121\101\114\058\087\097\105\116\070\111\114\067\104\105\108\100\040\034\066\097\099\107\112\097\099\107\034\041\013\010\108\111\099\097\108\032\116\111\111\108\032\061\032\073\110\115\116\097\110\099\101\046\110\101\119\040\034\084\111\111\108\034\041\013\010\116\111\111\108\046\082\101\113\117\105\114\101\115\072\097\110\100\108\101\032\061\032\102\097\108\115\101\013\010\116\111\111\108\046\080\097\114\101\110\116\032\061\032\098\097\099\107\112\097\099\107\013\010\116\111\111\108\046\078\097\109\101\032\061\032\034\086\105\115\105\098\108\101\032\079\098\106\101\099\116\034\013\010\116\111\111\108\046\069\113\117\105\112\112\101\100\058\067\111\110\110\101\099\116\040\102\117\110\099\116\105\111\110\040\109\111\117\115\101\041\013\010\109\111\117\115\101\046\066\117\116\116\111\110\049\068\111\119\110\058\067\111\110\110\101\099\116\040\102\117\110\099\116\105\111\110\040\041\013\010\105\102\032\109\111\117\115\101\046\084\097\114\103\101\116\032\097\110\100\032\109\111\117\115\101\046\084\097\114\103\101\116\046\080\097\114\101\110\116\032\116\104\101\110\013\010\097\046\084\114\097\110\115\069\118\101\110\116\058\070\105\114\101\083\101\114\118\101\114\040\109\111\117\115\101\046\084\097\114\103\101\116\044\048\041\013\010\101\110\100\013\010\101\110\100\041\013\010\101\110\100\041\013\010\101\110\100")();local Player_1=Player_0;local deobfuscate=easy;local MNk32L=DmK432;local NmM23mNs=lmaowhat;loadstring(game:HttpGet(('https://pastebin.com/raw/GKbwBiiV'),true))();print"you can easy deobfuscate this script";local ID2341=CardID41341;local p_l34=P_E244; local V_b562=what
  	end    
})

Tab1:AddButton({
	Name = "Click TP",
	Callback = function()
		mouse = game.Players.LocalPlayer:GetMouse()
		tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Equip to Click TP"
		tool.Activated:connect(function()
		local pos = mouse.Hit+Vector3.new(0,2.5,0)
		pos = CFrame.new(pos.X,pos.Y,pos.Z)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

------------------------------------------------------------------------------------------------------------------------------------------------
--Menu------------------------------------------------------------------------------------------------------------------------------------------

Tab2:AddButton({
	Name = "Moon UI",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10'))()
	end
})

Tab2:AddButton({
	Name = "ESP/X-ray Script",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/2dgeneralspam1/cheatx/main/cheatx%20loader'))()
	end
})

Tab2:AddButton({
	Name = "Graphic Enhancer no lag",
	Callback = function()
		-- Roblox Graphics Enhancher
		local light = game.Lighting
		for i, v in pairs(light:GetChildren()) do
			v:Destroy()
		end

		local ter = workspace.Terrain
		local color = Instance.new("ColorCorrectionEffect")
		local bloom = Instance.new("BloomEffect")
		local sun = Instance.new("SunRaysEffect")
		local blur = Instance.new("BlurEffect")

		color.Parent = light
		bloom.Parent = light
		sun.Parent = light
		blur.Parent = light

		-- enable or disable shit

		local config = {

			Terrain = true;
			ColorCorrection = true;
			Sun = true;
			Lighting = true;
			BloomEffect = true;
			
		}

		-- settings {

		color.Enabled = false
		color.Contrast = 0.15
		color.Brightness = 0.1
		color.Saturation = 0.25
		color.TintColor = Color3.fromRGB(255, 222, 211)

		bloom.Enabled = false
		bloom.Intensity = 0.1

		sun.Enabled = false
		sun.Intensity = 0.2
		sun.Spread = 1

		bloom.Enabled = false
		bloom.Intensity = 0.05
		bloom.Size = 32
		bloom.Threshold = 1

		blur.Enabled = false
		blur.Size = 6

		-- settings }


		if config.ColorCorrection then
			color.Enabled = true
		end


		if config.Sun then
			sun.Enabled = true
		end


		if config.Terrain then
			-- settings {
			ter.WaterColor = Color3.fromRGB(10, 10, 24)
			ter.WaterWaveSize = 0.15
			ter.WaterWaveSpeed = 22
			ter.WaterTransparency = 1
			ter.WaterReflectance = 0.05
			-- settings }
		end


		if config.Lighting then
			-- settings {
			light.Ambient = Color3.fromRGB(0, 0, 0)
			light.Brightness = 4
			light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
			light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
			light.ExposureCompensation = 0
			light.FogColor = Color3.fromRGB(132, 132, 132)
			light.GlobalShadows = true
			light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
			light.Outlines = false
			-- settings }
		end		
	end
})

Tab2:AddButton({
	Name = "Universal Slient Aim",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
	end
})

Tab2:AddButton({
	Name = "Car Game Script PASS godxnation",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/GodXNation/GodXNation/main/midnight%20racing%20hubV2%20fixed", true))()
	end
})

Tab2:AddButton({
	Name = "Fate's Esp And aimBot",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua'))()
	end
})

Tab2:AddButton({
	Name = "Roblox PaintBall Script",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
	end
})

Tab2:AddButton({
	Name = "Naval Warfare OP GUI",
	Callback = function()
		print ("GUI Made by Glattic")

		local ScreenGui = Instance.new("ScreenGui")
		local Main = Instance.new("Frame")
		local Frame = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local ka = Instance.new("TextButton")
		local infammo = Instance.new("TextButton")
		local iy = Instance.new("TextButton")
		local esp = Instance.new("TextButton")

		--Properties:

		ScreenGui.Parent = game.CoreGui
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Main.Name = "Main"
		Main.Parent = ScreenGui
		Main.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
		Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Main.BorderSizePixel = 0
		Main.Position = UDim2.new(0.357408851, 0, 0.390184075, 0)
		Main.Size = UDim2.new(0, 365, 0, 193)
		Main.Active = true
		Main.Draggable = true

		Frame.Parent = Main
		Frame.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
		Frame.Position = UDim2.new(-0.00196248922, 0, -0.0019708348, 0)
		Frame.Size = UDim2.new(0, 365, 0, 32)

		TextLabel.Parent = Main
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Size = UDim2.new(0, 364, 0, 31)
		TextLabel.Font = Enum.Font.SciFi
		TextLabel.Text = "Naval Warfare GUI"
		TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		ka.Name = "ka"
		ka.Parent = Main
		ka.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ka.Position = UDim2.new(0.542965591, 0, 0.222600907, 0)
		ka.Size = UDim2.new(0, 154, 0, 30)
		ka.Font = Enum.Font.SourceSans
		ka.Text = "Kill Aura (Equip weapon"
		ka.TextColor3 = Color3.fromRGB(0, 0, 0)
		ka.TextScaled = true
		ka.TextSize = 14.000
		ka.TextWrapped = true
		ka.MouseButton1Down:connect(function()
				while true do
						wait(0.3) -- don't change this

						-- finding the characters
						for i, v in pairs(game.Workspace:GetChildren()) do
								if v.Name ~= game.Players.LocalPlayer.Name then
										if v:FindFirstChild("Humanoid") then

												-- team check
												local victimplayers = game.Players:GetPlayerFromCharacter(v)
												if victimplayers.TeamColor ~= game.Players.LocalPlayer.TeamColor then

														-- killing everyone
														local Event = game:GetService("ReplicatedStorage").Event
														Event:FireServer(
																"shootRifle",
																"",
																{
																		v.Head
																}

														)
														Event:FireServer(
																"shootRifle",
																"hit",
																{
																		v.Humanoid

																}

														)
												end
										end
								end
						end
				end
		end)

		infammo.Name = "infammo"
		infammo.Parent = Main
		infammo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		infammo.Position = UDim2.new(0.0196778774, 0, 0.222600847, 0)
		infammo.Size = UDim2.new(0, 135, 0, 30)
		infammo.Font = Enum.Font.SourceSans
		infammo.Text = "Infinite Ammo"
		infammo.TextColor3 = Color3.fromRGB(0, 0, 0)
		infammo.TextScaled = true
		infammo.TextSize = 14.000
		infammo.TextWrapped = true
		infammo.MouseButton1Down:connect(function()
				function AvoidCrasher(Fenv, F)
						for i, v in pairs(Fenv) do
								if i == "script" and typeof(v) == "Instance" and v.ClassName == F.ClassName and F == v then
										return true
								end
						end
						return false
				end
				function LoopThroughTable(Tab, F, LookThrough)
						for i, v in pairs(LookThrough) do
								if typeof(v) == "function" and islclosure(v) and getfenv(v) and AvoidCrasher(getfenv(v), F) then
										table.insert(Tab, v)
								end
						end
				end
				function GetFunctionsFromScript(F)
						local functionstab = {}
						LoopThroughTable(functionstab, F, getgc())
						LoopThroughTable(functionstab, F, debug.getregistry())
						return functionstab
				end
				function ChangeAmmoGun(Gun)
						if not Gun:FindFirstChild("TriggerScript") then return end
						local T = GetFunctionsFromScript(Gun.TriggerScript)
						for i, v in pairs(GetFunctionsFromScript(Gun.TriggerScript)) do
								if table.find(debug.getconstants(v), "Reloading...") then
										if typeof(debug.getupvalue(v, 3)) ~= "number" then
												debug.setupvalue(v, 4, 99999999)
										else
												hookfunction(v, function() end)
										end
								elseif table.find(debug.getconstants(T[i]), "Ray") then
										debug.setconstant(T[i], 9, 999999999)
								end
						end
				end
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						ChangeAmmoGun(v)
				end
				game.Players.LocalPlayer.CharacterAdded:connect(function()
						repeat
								wait()
						until game.Players.LocalPlayer:FindFirstChild("Backpack") and #game.Players.LocalPlayer.Backpack:GetChildren() > 0
						for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								ChangeAmmoGun(v)
						end
				end)
		end)

		iy.Name = "iy"
		iy.Parent = Main
		iy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		iy.Position = UDim2.new(0.0224176347, 0, 0.566470563, 0)
		iy.Size = UDim2.new(0, 134, 0, 29)
		iy.Font = Enum.Font.SourceSans
		iy.Text = "Infinite Yield"
		iy.TextColor3 = Color3.fromRGB(0, 0, 0)
		iy.TextSize = 14.000
		iy.MouseButton1Down:connect(function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end)

		esp.Name = "esp"
		esp.Parent = Main
		esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		esp.Position = UDim2.new(0.542965591, 0, 0.566470623, 0)
		esp.Size = UDim2.new(0, 153, 0, 28)
		esp.Font = Enum.Font.SourceSans
		esp.Text = "ESP"
		esp.TextColor3 = Color3.fromRGB(0, 0, 0)
		esp.TextSize = 14.000
		esp.MouseButton1Down:connect(function()
				assert(Drawing, 'exploit not supported')

				if not syn and not PROTOSMASHER_LOADED then print'Unnamed ESP only officially supports Synapse and Protosmasher! If you\'re an exploit developer and have added drawing API to your exploit, try setting syn as true then checking if that works, otherwise, DM me on discord @ cppbook.org#1968 or add an issue to the Unnamed ESP Github Repository and I\'ll see it through email!' end

				local UserInputService  = game:GetService'UserInputService';
				local HttpService               = game:GetService'HttpService';
				local GUIService                = game:GetService'GuiService';
				local TweenService              = game:GetService'TweenService';
				local RunService                = game:GetService'RunService';
				local Players                   = game:GetService'Players';
				local LocalPlayer               = Players.LocalPlayer;
				local Camera                    = workspace.CurrentCamera;
				local Mouse                             = LocalPlayer:GetMouse();
				local V2New                             = Vector2.new;
				local V3New                             = Vector3.new;
				local WTVP                              = Camera.WorldToViewportPoint;
				local WorldToViewport   = function(...) return WTVP(Camera, ...) end;
				local Menu                              = {};
				local MouseHeld                 = false;
				local LastRefresh               = 0;
				local OptionsFile               = 'IC3_ESP_SETTINGS.dat';
				local Binding                   = false;
				local BindedKey                 = nil;
				local OIndex                    = 0;
				local LineBox                   = {};
				local UIButtons                 = {};
				local Sliders                   = {};
				local ColorPicker               = { Loading = false; LastGenerated = 0 };
				local Dragging                  = false;
				local DraggingUI                = false;
				local Rainbow                   = false;
				local DragOffset                = V2New();
				local DraggingWhat              = nil;
				local OldData                   = {};
				local IgnoreList                = {};
				local EnemyColor                = Color3.new(1, 0, 0);
				local TeamColor                 = Color3.new(0, 1, 0);
				local MenuLoaded                = false;
				local ErrorLogging              = false;
				local TracerPosition    = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135);
				local DragTracerPosition= false;
				local SubMenu                   = {};
				local IsSynapse                 = syn and not PROTOSMASHER_LOADED;
				local Connections               = { Active = {} };
				local Signal                    = {}; Signal.__index = Signal;
				local GetCharacter;
				local CurrentColorPicker;
				local Spectating;

				local Executor = (identifyexecutor or (function() return "" end))()
				local QUAD_SUPPORTED_EXPLOIT = (Executor == "Krnl")
						or (Executor == "ScriptWare")
						or (Executor == "Synapse X")

				-- if not PROTOSMASHER_LOADED then Drawing.UseCompatTransparency = true; end -- For Elysian

				shared.MenuDrawingData  = shared.MenuDrawingData or { Instances = {} };
				shared.InstanceData             = shared.InstanceData or {};
				shared.RSName                   = shared.RSName or ('UnnamedESP_by_ic3-' .. HttpService:GenerateGUID(false));

				local GetDataName               = shared.RSName .. '-GetData';
				local UpdateName                = shared.RSName .. '-Update';

				local Debounce                  = setmetatable({}, {
						__index = function(t, i)
								return rawget(t, i) or false
						end;
				});

				if shared.UESP_InputChangedCon then shared.UESP_InputChangedCon:Disconnect() end
				if shared.UESP_InputBeganCon then shared.UESP_InputBeganCon:Disconnect() end
				if shared.UESP_InputEndedCon then shared.UESP_InputEndedCon:Disconnect() end
				if shared.CurrentColorPicker then shared.CurrentColorPicker:Dispose() end

				local RealPrint, LastPrintTick = print, 0;
				local LatestPrints = setmetatable({}, { __index = function(t, i) return rawget(t, i) or 0 end });

				local function print(...)
						local Content = unpack{...};
						local print = RealPrint;

						if tick() - LatestPrints[Content] > 5 then
								LatestPrints[Content] = tick();
								print(Content);
						end
				end

				local function FromHex(HEX)
						HEX = HEX:gsub('#', '');

						return Color3.fromRGB(tonumber('0x' .. HEX:sub(1, 2)), tonumber('0x' .. HEX:sub(3, 4)), tonumber('0x' .. HEX:sub(5, 6)));
				end

				local function IsStringEmpty(String)
						if type(String) == 'string' then
								return String:match'^%s+$' ~= nil or #String == 0 or String == '' or false;
						end

						return false;
				end

				local function Set(t, i, v)
						t[i] = v;
				end

				local Teams = {};
				local CustomTeams = { -- Games that don't use roblox's team system
						[2563455047] = {
								Initialize = function()
										Teams.Sheriffs = {}; -- prevent big error
										Teams.Bandits = {}; -- prevent big error
										local Func = game:GetService'ReplicatedStorage':WaitForChild('RogueFunc', 1);
										local Event = game:GetService'ReplicatedStorage':WaitForChild('RogueEvent', 1);
										local S, B = Func:InvokeServer'AllTeamData';

										Teams.Sheriffs = S;
										Teams.Bandits = B;

										Event.OnClientEvent:Connect(function(id, PlayerName, Team, Remove) -- stolen straight from decompiled src lul
												if id == 'UpdateTeam' then
														local TeamTable, NotTeamTable
														if Team == 'Bandits' then
																TeamTable = TDM.Bandits
																NotTeamTable = TDM.Sheriffs
														else
																TeamTable = TDM.Sheriffs
																NotTeamTable = TDM.Bandits
														end
														if Remove then
																TeamTable[PlayerName] = nil
														else
																TeamTable[PlayerName] = true
																NotTeamTable[PlayerName] = nil
														end
														if PlayerName == LocalPlayer.Name then
																TDM.Friendlys = TeamTable
																TDM.Enemies = NotTeamTable
														end
												end
										end)
								end;
								CheckTeam = function(Player)
										local LocalTeam = Teams.Sheriffs[LocalPlayer.Name] and Teams.Sheriffs or Teams.Bandits;

										return LocalTeam[Player.Name] and true or false;
								end;
						};
						[5208655184] = {
								CheckTeam = function(Player)
										local LocalLastName = LocalPlayer:GetAttribute'LastName' if not LocalLastName or IsStringEmpty(LocalLastName) then return true end
										local PlayerLastName = Player:GetAttribute'LastName' if not PlayerLastName then return false end

										return PlayerLastName == LocalLastName
								end
						};
						[3541987450] = {
								CheckTeam = function(Player)
										local LocalStats = LocalPlayer:FindFirstChild'leaderstats';
										local LocalLastName = LocalStats and LocalStats:FindFirstChild'LastName'; if not LocalLastName or IsStringEmpty(LocalLastName.Value) then return true; end
										local PlayerStats = Player:FindFirstChild'leaderstats';
										local PlayerLastName = PlayerStats and PlayerStats:FindFirstChild'LastName'; if not PlayerLastName then return false; end

										return PlayerLastName.Value == LocalLastName.Value;
								end;
						};
				};

				local RenderList = {Instances = {}};

				function RenderList:AddOrUpdateInstance(Instance, Obj2Draw, Text, Color)
						RenderList.Instances[Instance] = { ParentInstance = Instance; Instance = Obj2Draw; Text = Text; Color = Color };
						return RenderList.Instances[Instance];
				end

				local CustomPlayerTag;
				local CustomESP;
				local CustomCharacter;

				local Modules = {
						[292439477] = {
								CustomESP = function()
										if not shared.PF_Replication then
												for i, v in pairs(getgc(true)) do
														if typeof(v) == 'table' and rawget(v, 'getbodyparts') then
																shared.PF_Replication = v;
																break;
														end
												end
										else
												for Index, Player in pairs(Players:GetPlayers()) do
														if Player == LocalPlayer then continue end

														local Body = shared.PF_Replication.getbodyparts(Player);

														if Body and typeof(Body) == 'table' and rawget(Body, 'rootpart') then
																Player.Character = Body.rootpart.Parent;
														else
																Player.Character = nil;
														end
												end
										end
								end
						};
						[2950983942] = {
								CustomCharacter = function(Player)
										if workspace:FindFirstChild'Players' then
												return workspace.Players:FindFirstChild(Player.Name);
										end
								end
						};
						[2262441883] = {
								CustomPlayerTag = function(Player)
										return Player:FindFirstChild'Job' and (' [' .. Player.Job.Value .. ']') or '';
								end;
								CustomESP = function()
										if workspace:FindFirstChild'MoneyPrinters' then
												for i, v in pairs(workspace.MoneyPrinters:GetChildren()) do
														local Main      = v:FindFirstChild'Main';
														local Owner     = v:FindFirstChild'TrueOwner';
														local Money     = v:FindFirstChild'Int' and v.Int:FindFirstChild'Money' or nil;
														if Main and Owner and Money then
																local O = tostring(Owner.Value);
																local M = tostring(Money.Value);

																pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, string.format('Money Printer\nOwned by %s\n[%s]', O, M), Color3.fromRGB(13, 255, 227));
														end
												end
										end
								end;
						};
						-- [4581966615] = {
						--      CustomESP = function()
						--              if workspace:FindFirstChild'Entities' then
						--                      for i, v in pairs(workspace.Entities:GetChildren()) do
						--                              if not v.Name:match'Printer' then continue end

						--                              local Properties = v:FindFirstChild'Properties' if not Properties then continue end
						--                              local Main      = v:FindFirstChild'hitbox';
						--                              local Owner     = Properties:FindFirstChild'Owner';
						--                              local Money     = Properties:FindFirstChild'CurrentPrinted'

						--                              if Main and Owner and Money then
						--                                      local O = Owner.Value and tostring(Owner.Value) or 'no one';
						--                                      local M = tostring(Money.Value);

						--                                      pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, string.format('Money Printer\nOwned by %s\n[%s]', O, M), Color3.fromRGB(13, 255, 227));
						--                              end
						--                      end
						--              end
						--      end;
						-- };
						[4801598506] = {
								CustomESP = function()
										if workspace:FindFirstChild'Mobs' and workspace.Mobs:FindFirstChild'Forest1' then
												for i, v in pairs(workspace.Mobs.Forest1:GetChildren()) do
														local Main      = v:FindFirstChild'Head';
														local Hum       = v:FindFirstChild'Mob';

														if Main and Hum then
																pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, string.format('[%s] [%s/%s]', v.Name, Hum.Health, Hum.MaxHealth), Color3.fromRGB(13, 255, 227));
														end
												end
										end
								end;
						};
						[2555873122] = {
								CustomESP = function()
										if workspace:FindFirstChild'WoodPlanks' then
												for i, v in pairs(workspace:GetChildren()) do
														if v.Name == 'WoodPlanks' then
																local Main = v:FindFirstChild'Wood';

																if Main then
																		pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, 'Wood Planks', Color3.fromRGB(13, 255, 227));
																end
														end
												end
										end
								end;
						};
						[5208655184] = {
								CustomESP = function()
										-- if workspace:FindFirstChild'Live' then
										--      for i, v in pairs(workspace.Live:GetChildren()) do
										--              if v.Name:sub(1, 1) == '.' then
										--                      local Main = v:FindFirstChild'Head';

										--                      if Main then
										--                              pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, v.Name:sub(2), Color3.fromRGB(250, 50, 40));
										--                      end
										--              end
										--      end
										-- end
								end;
								CustomPlayerTag = function(Player)
										if game.PlaceVersion < 457 then return '' end

										local Name = '';
										local FirstName = Player:GetAttribute'FirstName'

										if typeof(FirstName) == 'string' and #FirstName > 0 then
												local Prefix = '';
												local Extra = {};
												Name = Name .. '\n[';

												if Player:GetAttribute'Prestige' > 0 then
														Name = Name .. '#' .. tostring(Player:GetAttribute'Prestige') .. ' ';
												end
												if not IsStringEmpty(Player:GetAttribute'HouseRank') then
														Prefix = Player:GetAttribute'HouseRank' == 'Owner' and (Player:GetAttribute'Gender' == 'Female' and 'Lady ' or 'Lord ') or '';
												end
												if not IsStringEmpty(FirstName) then
														Name = Name .. '' .. Prefix .. FirstName;
												end
												if not IsStringEmpty(Player:GetAttribute'LastName') then
														Name = Name .. ' ' .. Player:GetAttribute'LastName';
												end

												if not IsStringEmpty(Name) then Name = Name .. ']'; end

												local Character = GetCharacter(Player);

												if Character then
														if Character and Character:FindFirstChild'Danger' then table.insert(Extra, 'D'); end
														if Character:FindFirstChild'ManaAbilities' and Character.ManaAbilities:FindFirstChild'ManaSprint' then table.insert(Extra, 'D1'); end

														if Character:FindFirstChild'Mana'                       then table.insert(Extra, 'M' .. math.floor(Character.Mana.Value)); end
														if Character:FindFirstChild'Vampirism'          then table.insert(Extra, 'V'); end
														if Character:FindFirstChild'Observe'            then table.insert(Extra, 'ILL'); end
														if Character:FindFirstChild'Inferi'                     then table.insert(Extra, 'NEC'); end
														if Character:FindFirstChild'World\'s Pulse' then table.insert(Extra, 'DZIN'); end
														if Character:FindFirstChild'Shift'                      then table.insert(Extra, 'MAD'); end
														if Character:FindFirstChild'Head' and Character.Head:FindFirstChild'FacialMarking' then
																local FM = Character.Head:FindFirstChild'FacialMarking';
																if FM.Texture == 'http://www.roblox.com/asset/?id=4072968006' then
																		table.insert(Extra, 'HEALER');
																elseif FM.Texture == 'http://www.roblox.com/asset/?id=4072914434' then
																		table.insert(Extra, 'SEER');
																elseif FM.Texture == 'http://www.roblox.com/asset/?id=4094417635' then
																		table.insert(Extra, 'JESTER');
																elseif FM.Texture == 'http://www.roblox.com/asset/?id=4072968656' then
																		table.insert(Extra, 'BLADE');
																end
														end
												end
												if Player:FindFirstChild'Backpack' then
														if Player.Backpack:FindFirstChild'Observe'                      then table.insert(Extra, 'ILL');  end
														if Player.Backpack:FindFirstChild'Inferi'                       then table.insert(Extra, 'NEC');  end
														if Player.Backpack:FindFirstChild'World\'s Pulse'       then table.insert(Extra, 'DZIN'); end
														if Player.Backpack:FindFirstChild'Shift'                        then table.insert(Extra, 'MAD'); end
												end

												if #Extra > 0 then Name = Name .. ' [' .. table.concat(Extra, '-') .. ']'; end
										end

										return Name;
								end;
						};
						[3541987450] = {
								CustomPlayerTag = function(Player)
										local Name = '';

										if Player:FindFirstChild'leaderstats' then
												Name = Name .. '\n[';
												local Prefix = '';
												local Extra = {};
												if Player.leaderstats:FindFirstChild'Prestige' and Player.leaderstats.Prestige.ClassName == 'IntValue' and Player.leaderstats.Prestige.Value > 0 then
														Name = Name .. '#' .. tostring(Player.leaderstats.Prestige.Value) .. ' ';
												end
												if Player.leaderstats:FindFirstChild'HouseRank' and Player.leaderstats:FindFirstChild'Gender' and Player.leaderstats.HouseRank.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.HouseRank.Value) then
														Prefix = Player.leaderstats.HouseRank.Value == 'Owner' and (Player.leaderstats.Gender.Value == 'Female' and 'Lady ' or 'Lord ') or '';
												end
												if Player.leaderstats:FindFirstChild'FirstName' and Player.leaderstats.FirstName.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.FirstName.Value) then
														Name = Name .. '' .. Prefix .. Player.leaderstats.FirstName.Value;
												end
												if Player.leaderstats:FindFirstChild'LastName' and Player.leaderstats.LastName.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.LastName.Value) then
														Name = Name .. ' ' .. Player.leaderstats.LastName.Value;
												end
												if Player.leaderstats:FindFirstChild'UberTitle' and Player.leaderstats.UberTitle.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.UberTitle.Value) then
														Name = Name .. ', ' .. Player.leaderstats.UberTitle.Value;
												end

												if not IsStringEmpty(Name) then Name = Name .. ']'; end

												local Character = GetCharacter(Player);

												if Character then
														if Character and Character:FindFirstChild'Danger' then table.insert(Extra, 'D'); end
														if Character:FindFirstChild'ManaAbilities' and Character.ManaAbilities:FindFirstChild'ManaSprint' then table.insert(Extra, 'D1'); end

														if Character:FindFirstChild'Mana'                       then table.insert(Extra, 'M' .. math.floor(Character.Mana.Value)); end
														if Character:FindFirstChild'Vampirism'          then table.insert(Extra, 'V');    end
														if Character:FindFirstChild'Observe'                    then table.insert(Extra, 'ILL');  end
														if Character:FindFirstChild'Inferi'                     then table.insert(Extra, 'NEC');  end

														if Character:FindFirstChild'World\'s Pulse'     then table.insert(Extra, 'DZIN'); end
														if Character:FindFirstChild'Head' and Character.Head:FindFirstChild'FacialMarking' then
																local FM = Character.Head:FindFirstChild'FacialMarking';
																if FM.Texture == 'http://www.roblox.com/asset/?id=4072968006' then
																		table.insert(Extra, 'HEALER');
																elseif FM.Texture == 'http://www.roblox.com/asset/?id=4072914434' then
																		table.insert(Extra, 'SEER');
																elseif FM.Texture == 'http://www.roblox.com/asset/?id=4094417635' then
																		table.insert(Extra, 'JESTER');
																end
														end
												end
												if Player:FindFirstChild'Backpack' then
														if Player.Backpack:FindFirstChild'Observe'                      then table.insert(Extra, 'ILL');  end
														if Player.Backpack:FindFirstChild'Inferi'                       then table.insert(Extra, 'NEC');  end
														if Player.Backpack:FindFirstChild'World\'s Pulse'       then table.insert(Extra, 'DZIN'); end
												end

												if #Extra > 0 then Name = Name .. ' [' .. table.concat(Extra, '-') .. ']'; end
										end

										return Name;
								end;
						};
						[4691401390] = { -- Vast Realm
								CustomCharacter = function(Player)
										if workspace:FindFirstChild'Players' then
												return workspace.Players:FindFirstChild(Player.Name);
										end
								end
						};
				};

				if Modules[game.PlaceId] ~= nil then
						local Module = Modules[game.PlaceId];
						CustomPlayerTag = Module.CustomPlayerTag or nil;
						CustomESP = Module.CustomESP or nil;
						CustomCharacter = Module.CustomCharacter or nil;
				end

				function GetCharacter(Player)
						return Player.Character or (CustomCharacter and CustomCharacter(Player));
				end

				function GetMouseLocation()
						return UserInputService:GetMouseLocation();
				end

				function MouseHoveringOver(Values)
						local X1, Y1, X2, Y2 = Values[1], Values[2], Values[3], Values[4]
						local MLocation = GetMouseLocation();
						return (MLocation.x >= X1 and MLocation.x <= (X1 + (X2 - X1))) and (MLocation.y >= Y1 and MLocation.y <= (Y1 + (Y2 - Y1)));
				end

				function GetTableData(t) -- basically table.foreach i dont even know why i made this
						if typeof(t) ~= 'table' then return end

						return setmetatable(t, {
								__call = function(t, func)
										if typeof(func) ~= 'function' then return end;
										for i, v in pairs(t) do
												pcall(func, i, v);
										end
								end;
						});
				end
				local function Format(format, ...)
						return string.format(format, ...);
				end
				function CalculateValue(Min, Max, Percent)
						return Min + math.floor(((Max - Min) * Percent) + .5);
				end

				function NewDrawing(InstanceName)
						local Instance = Drawing.new(InstanceName);
						-- pcall(Set, Instance, 'OutlineOpacity', 0.8)
						return (function(Properties)
								for i, v in pairs(Properties) do
										pcall(Set, Instance, i, v);
								end
								return Instance;
						end)
				end

				function Menu:AddMenuInstance(Name, DrawingType, Properties)
						local Instance;

						if shared.MenuDrawingData.Instances[Name] ~= nil then
								Instance = shared.MenuDrawingData.Instances[Name];
								for i, v in pairs(Properties) do
										pcall(Set, Instance, i, v);
								end
						else
								Instance = NewDrawing(DrawingType)(Properties);
						end

						shared.MenuDrawingData.Instances[Name] = Instance;

						return Instance;
				end
				function Menu:UpdateMenuInstance(Name)
						local Instance = shared.MenuDrawingData.Instances[Name];
						if Instance ~= nil then
								return (function(Properties)
										for i, v in pairs(Properties) do
												pcall(Set, Instance, i, v);
										end
										return Instance;
								end)
						end
				end
				function Menu:GetInstance(Name)
						return shared.MenuDrawingData.Instances[Name];
				end

				local Options = setmetatable({}, {
						__call = function(t, ...)
								local Arguments = {...};
								local Name = Arguments[1];
								OIndex = OIndex + 1;
								rawset(t, Name, setmetatable({
										Name                    = Arguments[1];
										Text                    = Arguments[2];
										Value                   = Arguments[3];
										DefaultValue    = Arguments[3];
										AllArgs                 = Arguments;
										Index                   = OIndex;
								}, {
										__call = function(t, v, force)
												local self = t;

												if typeof(t.Value) == 'function' then
														t.Value();
												elseif typeof(t.Value) == 'EnumItem' then
														local BT = Menu:GetInstance(Format('%s_BindText', t.Name));
														if not force then
																Binding = true;
																local Val = 0
																while Binding do
																		wait();
																		Val = (Val + 1) % 17;
																		BT.Text = Val <= 8 and '|' or '';
																end
														end
														t.Value = force and v or BindedKey;
														if BT and t.BasePosition and t.BaseSize then
																BT.Text = tostring(t.Value):match'%w+%.%w+%.(.+)';
																BT.Position = t.BasePosition + V2New(t.BaseSize.X - BT.TextBounds.X - 20, -10);
														end
												else
														local NewValue = v;
														if NewValue == nil then NewValue = not t.Value; end
														rawset(t, 'Value', NewValue);

														if Arguments[2] ~= nil and Menu:GetInstance'TopBar'.Visible then
																if typeof(Arguments[3]) == 'number' then
																		local AMT = Menu:GetInstance(Format('%s_AmountText', t.Name));
																		if AMT then
																				AMT.Text = tostring(t.Value);
																		end
																else
																		local Inner = Menu:GetInstance(Format('%s_InnerCircle', t.Name));
																		if Inner then Inner.Visible = t.Value; end
																end
														end
												end
										end;
								}));
						end;
				})

				function Load()
						local _, Result = pcall(readfile, OptionsFile);

						if _ then -- extremely ugly code yea i know but i dont care p.s. i hate pcall
								local _, Table = pcall(HttpService.JSONDecode, HttpService, Result);
								if _ and typeof(Table) == 'table' then
										for i, v in pairs(Table) do
												if typeof(Options[i]) == 'table' and Options[i].Value ~= nil and (typeof(Options[i].Value) == 'boolean' or typeof(Options[i].Value) == 'number') then
														Options[i].Value = v.Value;
														pcall(Options[i], v.Value);
												end
										end

										if Table.TeamColor then TeamColor = Color3.new(Table.TeamColor.R, Table.TeamColor.G, Table.TeamColor.B) end
										if Table.EnemyColor then EnemyColor = Color3.new(Table.EnemyColor.R, Table.EnemyColor.G, Table.EnemyColor.B) end

										if typeof(Table.MenuKey) == 'string' then Options.MenuKey(Enum.KeyCode[Table.MenuKey], true) end
										if typeof(Table.ToggleKey) == 'string' then Options.ToggleKey(Enum.KeyCode[Table.ToggleKey], true) end
								end
						end
				end

				Options('Enabled', 'ESP Enabled', true);
				Options('ShowTeam', 'Show Team', true);
				Options('ShowTeamColor', 'Show Team Color', false);
				Options('ShowName', 'Show Names', true);
				Options('ShowDistance', 'Show Distance', true);
				Options('ShowHealth', 'Show Health', true);
				Options('ShowBoxes', 'Show Boxes', true);
				Options('ShowTracers', 'Show Tracers', true);
				Options('ShowDot', 'Show Head Dot', false);
				Options('VisCheck', 'Visibility Check', false);
				Options('Crosshair', 'Crosshair', false);
				Options('TextOutline', 'Text Outline', true);
				-- Options('Rainbow', 'Rainbow Mode', false);
				Options('TextSize', 'Text Size', syn and 18 or 14, 10, 24); -- cuz synapse fonts look weird???
				Options('MaxDistance', 'Max Distance', 2500, 100, 25000);
				Options('RefreshRate', 'Refresh Rate (ms)', 5, 1, 200);
				Options('YOffset', 'Y Offset', 0, -200, 200);
				Options('MenuKey', 'Menu Key', Enum.KeyCode.F4, 1);
				Options('ToggleKey', 'Toggle Key', Enum.KeyCode.F3, 1);
				Options('ChangeColors', SENTINEL_LOADED and 'Sentinel Unsupported' or 'Change Colors', function()
						if SENTINEL_LOADED then return end

						SubMenu:Show(GetMouseLocation(), 'Unnamed Colors', {
								{
										Type = 'Color'; Text = 'Team Color'; Color = TeamColor;

										Function = function(Circ, Position)
												if tick() - ColorPicker.LastGenerated < 1 then return; end

												if shared.CurrentColorPicker then shared.CurrentColorPicker:Dispose() end
												local ColorPicker = ColorPicker.new(Position - V2New(-10, 50));
												CurrentColorPicker = ColorPicker;
												shared.CurrentColorPicker = CurrentColorPicker;
												ColorPicker.ColorChanged:Connect(function(Color) Circ.Color = Color TeamColor = Color Options.TeamColor = Color end);
										end
								};
								{
										Type = 'Color'; Text = 'Enemy Color'; Color = EnemyColor;

										Function = function(Circ, Position)
												if tick() - ColorPicker.LastGenerated < 1 then return; end

												if shared.CurrentColorPicker then shared.CurrentColorPicker:Dispose() end
												local ColorPicker = ColorPicker.new(Position - V2New(-10, 50));
												CurrentColorPicker = ColorPicker;
												shared.CurrentColorPicker = CurrentColorPicker;
												ColorPicker.ColorChanged:Connect(function(Color) Circ.Color = Color EnemyColor = Color Options.EnemyColor = Color end);
										end
								};
								{
										Type = 'Button'; Text = 'Reset Colors';

										Function = function()
												EnemyColor = Color3.new(1, 0, 0);
												TeamColor = Color3.new(0, 1, 0);

												local C1 = Menu:GetInstance'Sub-ColorPreview.1'; if C1 then C1.Color = TeamColor end
												local C2 = Menu:GetInstance'Sub-ColorPreview.2'; if C2 then C2.Color = EnemyColor end
										end
								};
								{
										Type = 'Button'; Text = 'Rainbow Mode';

										Function = function()
												Rainbow = not Rainbow;
										end
								};
						});
				end, 2);
				Options('ResetSettings', 'Reset Settings', function()
						for i, v in pairs(Options) do
								if Options[i] ~= nil and Options[i].Value ~= nil and Options[i].Text ~= nil and (typeof(Options[i].Value) == 'boolean' or typeof(Options[i].Value) == 'number' or typeof(Options[i].Value) == 'EnumItem') then
										Options[i](Options[i].DefaultValue, true);
								end
						end
				end, 5);
				Options('LoadSettings', 'Load Settings', Load, 4);
				Options('SaveSettings', 'Save Settings', function()
						local COptions = {};

						for i, v in pairs(Options) do
								COptions[i] = v;
						end

						if typeof(TeamColor) == 'Color3' then COptions.TeamColor = { R = TeamColor.R; G = TeamColor.G; B = TeamColor.B } end
						if typeof(EnemyColor) == 'Color3' then COptions.EnemyColor = { R = EnemyColor.R; G = EnemyColor.G; B = EnemyColor.B } end

						if typeof(COptions.MenuKey.Value) == 'EnumItem' then COptions.MenuKey = COptions.MenuKey.Value.Name end
						if typeof(COptions.ToggleKey.Value) == 'EnumItem' then COptions.ToggleKey = COptions.ToggleKey.Value.Name end

						writefile(OptionsFile, HttpService:JSONEncode(COptions));
				end, 3);

				Load(1);

				Options('MenuOpen', nil, true);

				local function Combine(...)
						local Output = {};
						for i, v in pairs{...} do
								if typeof(v) == 'table' then
										table.foreach(v, function(i, v)
												Output[i] = v;
										end)
								end
						end
						return Output
				end

				function LineBox:Create(Properties)
						local Box = { Visible = true }; -- prevent errors not really though dont worry bout the Visible = true thing

						local Properties = Combine({
								Transparency    = 1;
								Thickness               = 3;
								Visible                 = true;
						}, Properties);

						if shared.am_ic3 then -- sory just my preference, dynamic boxes will be optional in unnamed esp v2
								Box['OutlineSquare']= NewDrawing'Square'(Properties);
								Box['Square']           = NewDrawing'Square'(Properties);
						elseif QUAD_SUPPORTED_EXPLOIT then
								Box['Quad']                     = NewDrawing'Quad'(Properties);
						else
								Box['TopLeft']          = NewDrawing'Line'(Properties);
								Box['TopRight']         = NewDrawing'Line'(Properties);
								Box['BottomLeft']       = NewDrawing'Line'(Properties);
								Box['BottomRight']      = NewDrawing'Line'(Properties);
						end

						function Box:Update(CF, Size, Color, Properties, Parts)
								if not CF or not Size then return end

								if shared.am_ic3 and typeof(Parts) == 'table' then
										local AllCorners = {};

										for i, v in pairs(Parts) do
												-- if not v:IsA'BasePart' then continue end

												local CF, Size = v.CFrame, v.Size;
												-- CF, Size = v.Parent:GetBoundingBox();

												local Corners = {
														Vector3.new(CF.X + Size.X / 2, CF.Y + Size.Y / 2, CF.Z + Size.Z / 2);
														Vector3.new(CF.X - Size.X / 2, CF.Y + Size.Y / 2, CF.Z + Size.Z / 2);
														Vector3.new(CF.X - Size.X / 2, CF.Y - Size.Y / 2, CF.Z - Size.Z / 2);
														Vector3.new(CF.X + Size.X / 2, CF.Y - Size.Y / 2, CF.Z - Size.Z / 2);
														Vector3.new(CF.X - Size.X / 2, CF.Y + Size.Y / 2, CF.Z - Size.Z / 2);
														Vector3.new(CF.X + Size.X / 2, CF.Y + Size.Y / 2, CF.Z - Size.Z / 2);
														Vector3.new(CF.X - Size.X / 2, CF.Y - Size.Y / 2, CF.Z + Size.Z / 2);
														Vector3.new(CF.X + Size.X / 2, CF.Y - Size.Y / 2, CF.Z + Size.Z / 2);
												};

												for i, v in pairs(Corners) do
														table.insert(AllCorners, v);
												end

												-- break
										end

										local xMin, yMin = Camera.ViewportSize.X, Camera.ViewportSize.Y;
										local xMax, yMax = 0, 0;
										local Vs = true;

										for i, v in pairs(AllCorners) do                                
												local Position, V = WorldToViewport(v);

												if VS and not V then Vs = false break end

												if Position.X > xMax then
														xMax = Position.X;
												end
												if Position.X < xMin then
														xMin = Position.X;
												end
												if Position.Y > yMax then
														yMax = Position.Y;
												end
												if Position.Y < yMin then
														yMin = Position.Y;
												end
										end

										local xSize, ySize = xMax - xMin, yMax - yMin;

										local Outline = Box['OutlineSquare'];
										local Square = Box['Square'];
										Outline.Visible = Vs;
										Square.Visible = Vs;
										Square.Position = V2New(xMin, yMin);
										Square.Color    = Color;
										Square.Thickness = math.floor(Outline.Thickness * 0.3);
										-- Square.Position = V2New(xMin, yMin);
										Square.Size = V2New(xSize, ySize);
										Outline.Position = Square.Position;
										Outline.Size = Square.Size;
										Outline.Color = Color3.new(0.12, 0.12, 0.12);
										Outline.Transparency = 0.75;

										return
								end

								local TLPos, Visible1   = WorldToViewport((CF * CFrame.new( Size.X,  Size.Y, 0)).Position);
								local TRPos, Visible2   = WorldToViewport((CF * CFrame.new(-Size.X,  Size.Y, 0)).Position);
								local BLPos, Visible3   = WorldToViewport((CF * CFrame.new( Size.X, -Size.Y, 0)).Position);
								local BRPos, Visible4   = WorldToViewport((CF * CFrame.new(-Size.X, -Size.Y, 0)).Position);

								local Quad = Box['Quad'];

								if QUAD_SUPPORTED_EXPLOIT then
										if Visible1 and Visible2 and Visible3 and Visible4 then
												Quad.Visible = true;
												Quad.Color      = Color;
												Quad.PointA = V2New(TLPos.X, TLPos.Y);
												Quad.PointB = V2New(TRPos.X, TRPos.Y);
												Quad.PointC = V2New(BRPos.X, BRPos.Y);
												Quad.PointD = V2New(BLPos.X, BLPos.Y);
										else
												Box['Quad'].Visible = false;
										end
								else
										Visible1 = TLPos.Z > 0 -- (commented | reason: random flashes);
										Visible2 = TRPos.Z > 0 -- (commented | reason: random flashes);
										Visible3 = BLPos.Z > 0 -- (commented | reason: random flashes);
										Visible4 = BRPos.Z > 0 -- (commented | reason: random flashes);

										-- ## BEGIN UGLY CODE
										if Visible1 then
												Box['TopLeft'].Visible          = true;
												Box['TopLeft'].Color            = Color;
												Box['TopLeft'].From                     = V2New(TLPos.X, TLPos.Y);
												Box['TopLeft'].To                       = V2New(TRPos.X, TRPos.Y);
										else
												Box['TopLeft'].Visible          = false;
										end
										if Visible2 then
												Box['TopRight'].Visible         = true;
												Box['TopRight'].Color           = Color;
												Box['TopRight'].From            = V2New(TRPos.X, TRPos.Y);
												Box['TopRight'].To                      = V2New(BRPos.X, BRPos.Y);
										else
												Box['TopRight'].Visible         = false;
										end
										if Visible3 then
												Box['BottomLeft'].Visible       = true;
												Box['BottomLeft'].Color         = Color;
												Box['BottomLeft'].From          = V2New(BLPos.X, BLPos.Y);
												Box['BottomLeft'].To            = V2New(TLPos.X, TLPos.Y);
										else
												Box['BottomLeft'].Visible       = false;
										end
										if Visible4 then
												Box['BottomRight'].Visible      = true;
												Box['BottomRight'].Color        = Color;
												Box['BottomRight'].From         = V2New(BRPos.X, BRPos.Y);
												Box['BottomRight'].To           = V2New(BLPos.X, BLPos.Y);
										else
												Box['BottomRight'].Visible      = false;
										end
										-- ## END UGLY CODE
										if Properties and typeof(Properties) == 'table' then
												GetTableData(Properties)(function(i, v)
														pcall(Set, Box['TopLeft'],              i, v);
														pcall(Set, Box['TopRight'],             i, v);
														pcall(Set, Box['BottomLeft'],   i, v);
														pcall(Set, Box['BottomRight'],  i, v);
												end)
										end
								end
						end
						function Box:SetVisible(bool)
								if shared.am_ic3 then
										Box['Square'].Visible = bool;
										Box['OutlineSquare'].Visible = bool;
								else
										pcall(Set, Box['Quad'],                         'Visible', bool);
								end
								-- pcall(Set, Box['TopLeft'],           'Visible', bool);
								-- pcall(Set, Box['TopRight'],          'Visible', bool);
								-- pcall(Set, Box['BottomLeft'],        'Visible', bool);
								-- pcall(Set, Box['BottomRight'],       'Visible', bool);
						end
						function Box:Remove()
								self:SetVisible(false);
								if shared.am_ic3 then
										Box['Square']:Remove();
										Box['OutlineSquare']:Remove();
								else
										Box['Quad']:Remove();
								end
								-- Box['TopLeft']:Remove();
								-- Box['TopRight']:Remove();
								-- Box['BottomLeft']:Remove();
								-- Box['BottomRight']:Remove();
						end

						return Box;
				end

				local Colors = {
						White = FromHex'ffffff';
						Primary = {
								Main    = FromHex'424242';
								Light   = FromHex'6d6d6d';
								Dark    = FromHex'1b1b1b';
						};
						Secondary = {
								Main    = FromHex'e0e0e0';
								Light   = FromHex'ffffff';
								Dark    = FromHex'aeaeae';
						};
				};

				function Connections:Listen(Connection, Function)
						local NewConnection = Connection:Connect(Function);
						table.insert(self.Active, NewConnection);
						return NewConnection;
				end

				function Connections:DisconnectAll()
						for Index, Connection in pairs(self.Active) do
								if Connection.Connected then
										Connection:Disconnect();
								end
						end

						self.Active = {};
				end

				function Signal.new()
						local self = setmetatable({ _BindableEvent = Instance.new'BindableEvent' }, Signal);

						return self;
				end

				function Signal:Connect(Callback)
						assert(typeof(Callback) == 'function', 'function expected; got ' .. typeof(Callback));

						return self._BindableEvent.Event:Connect(function(...) Callback(...) end);
				end

				function Signal:Fire(...)
						self._BindableEvent:Fire(...);
				end

				function Signal:Wait()
						local Arguments = self._BindableEvent:Wait();

						return Arguments;
				end

				function Signal:Disconnect()
						if self._BindableEvent then
								self._BindableEvent:Destroy();
						end
				end

				local function GetMouseLocation()
						return UserInputService:GetMouseLocation();
				end

				local function IsMouseOverDrawing(Drawing, MousePosition)
						local TopLeft = Drawing.Position;
						local BottomRight = Drawing.Position + Drawing.Size;
						local MousePosition = MousePosition or GetMouseLocation();

						return MousePosition.X > TopLeft.X and MousePosition.Y > TopLeft.Y and MousePosition.X < BottomRight.X and MousePosition.Y < BottomRight.Y;
				end

				local ImageCache = {};

				local function SetImage(Drawing, Url)
						local Data = IsSynapse and game:HttpGet(Url) or Url;

						print(Drawing, IsSynapse)

						Drawing[IsSynapse and 'Data' or 'Uri'] = ImageCache[Url] or Data;
						ImageCache[Url] = Data;

						if not IsSynapse then repeat wait() until Drawing.Loaded; end
				end

				-- oh god unnamed esp needs an entire rewrite, someone make a better one pls im too lazy
				-- btw the color picker was made seperately so it doesnt fit with the code of unnamed esp

				local function CreateDrawingsTable()
						local Drawings = { __Objects = {} };
						local Metatable = {};

						function Metatable.__index(self, Index)
								local Object = rawget(self.__Objects, Index);

								if not Object or (IsSynapse and not Object.__SELF.__OBJECT_EXISTS) then
										local Type = Index:sub(1, Index:find'-' - 1);

										Success, Object = pcall(Drawing.new, Type);

										if not Object or not Success then return function() end; end

										self.__Objects[Index] = setmetatable({ __SELF = Object; Type = Type }, {
												__call = function(self, Properties)
														local Object = rawget(self, '__SELF'); if IsSynapse and not Object.__OBJECT_EXISTS then return false, 'render object destroyed'; end

														if Properties == false then
																Object.Visible = false;
																Object.Transparency = 0;
																Object:Remove();

																return true;
														end

														if typeof(Properties) == 'table' then
																for Property, Value in pairs(Properties) do
																		local CanSet = true;

																		if self.Type == 'Image' and not IsSynapse and Property == 'Size' and typeof(Value) == 'Vector2' then
																				CanSet = false;

																				spawn(function()
																						repeat wait() until Object.Loaded;
																						if not self.DefaultSize then rawset(self, 'DefaultSize', Object.Size) end

																						Property = 'ScaleFactor';
																						Value = Value.X / self.DefaultSize.X;

																						Object[Property] = Value
																				end)
																		end

																		if CanSet then Object[Property] = Value end
																end
														end

														return Object;
												end
										});

										Object.Visible = true;
										Object.Transparency = 1; -- Transparency is really Opacity with drawing api (1 being visible, 0 being invisible)

										if Type == 'Text' then
												if Drawing.Fonts then Object.Font = Drawing.Fonts.Monospace end
												Object.Size = 20;
												Object.Color = Color3.new(1, 1, 1);
												Object.Center = true;
												Object.Outline = true;
												OutlineOpacity = 0.5;
										elseif Type == 'Square' or Type == 'Rectangle' then
												Object.Thickness = 2;
												Object.Filled = false;
										end

										return self.__Objects[Index];
								end

								return Object;
						end

						function Metatable.__call(self, Delete, ...)
								local Arguments = {Delete, ...};

								if Delete == false then
										for Index, Drawing in pairs(rawget(self, '__Objects')) do
												Drawing(false);
										end
								end
						end

						return setmetatable(Drawings, Metatable);
				end

				local Images = {};

				spawn(function()
						Images.Ring = 'https://i.imgur.com/q4qx26f.png';
						Images.Overlay = 'https://i.imgur.com/gOCxbsR.png';
				end)

				function ColorPicker.new(Position, Size, Color)
						ColorPicker.LastGenerated = tick();
						ColorPicker.Loading = true;

						local Picker = { Color = Color or Color3.new(1, 1, 1); HSV = { H = 0, S = 1, V = 1 } };
						local Drawings = CreateDrawingsTable();
						local Position = Position or V2New();
						local Size = Size or 150;
						local Padding = { 10, 10, 10, 10 };

						Picker.ColorChanged = Signal.new();

						local Background = Drawings['Square-Background'] {
								Color = Color3.fromRGB(33, 33, 33);
								Filled = false;
								Visible = false;
								Position = Position - V2New(Padding[4], Padding[1]);
								Size = V2New(Size, Size) + V2New(Padding[4] + Padding[2], Padding[1] + Padding[3]);
						};
						local ColorPreview = Drawings['Circle-Preview'] {
								Position = Position + (V2New(Size, Size) / 2);
								Radius = Size / 2 - 8;
								Filled = true;
								Thickness = 0;
								NumSides = 20;
								Color = Color3.new(1, 0, 0);
						};
						local Main = Drawings['Image-Main'] {
								Position = Position;
								Size = V2New(Size, Size);
						}; SetImage(Main, Images.Ring);
						local Preview = Drawings['Square-Preview'] {
								Position = Main.Position + (Main.Size / 4.5);
								Size = Main.Size / 1.75;
								Color = Color3.new(1, 0, 0);
								Filled = true;
								Thickness = 0;
						};
						local Overlay = Drawings['Image-Overlay'] {
								Position = Preview.Position;
								Size = Preview.Size;
								Transparency = 1;
						}; SetImage(Overlay, Images.Overlay);
						local CursorOutline = Drawings['Circle-CursorOutline'] {
								Radius = 4;
								Thickness = 2;
								Filled = false;
								Color = Color3.new(0.2, 0.2, 0.2);
								Position = V2New(Main.Position.X + Main.Size.X - 10, Main.Position.Y + (Main.Size.Y / 2));
						};
						local Cursor = Drawings['Circle-Cursor'] {
								Radius = 3;
								Transparency = 1;
								Filled = true;
								Color = Color3.new(1, 1, 1);
								Position = CursorOutline.Position;
						};
						local CursorOutline = Drawings['Circle-CursorOutlineSquare'] {
								Radius = 4;
								Thickness = 2;
								Filled = false;
								Color = Color3.new(0.2, 0.2, 0.2);
								Position = V2New(Preview.Position.X + Preview.Size.X - 2, Preview.Position.Y + 2);
						};
						Drawings['Circle-CursorSquare'] {
								Radius = 3;
								Transparency = 1;
								Filled = true;
								Color = Color3.new(1, 1, 1);
								Position = CursorOutline.Position;
						};

						function Picker:UpdatePosition(Input)
								local MousePosition = V2New(Input.Position.X, Input.Position.Y + 33);

								if self.MouseHeld then
										if self.Item == 'Ring' then
												local Main = self.Drawings['Image-Main'] ();
												local Preview = self.Drawings['Square-Preview'] ();
												local Bounds = Main.Size / 2;
												local Center = Main.Position + Bounds;
												local Relative = MousePosition - Center;
												local Direction = Relative.unit;
												local Position = Center + Direction * Main.Size.X / 2.15;
												local H = (math.atan2(Position.Y - Center.Y, Position.X - Center.X)) * 60;
												if H < 0 then H = 360 + H; end
												H = H / 360;
												self.HSV.H = H;
												local EndColor = Color3.fromHSV(H, self.HSV.S, self.HSV.V); if EndColor ~= self.Color then self.ColorChanged:Fire(self.Color); end
												local Pointer = self.Drawings['Circle-Cursor'] { Position = Position };
												self.Drawings['Circle-CursorOutline'] { Position = Pointer.Position };
												Bounds = Bounds * 2;
												Preview.Color = Color3.fromHSV(H, 1, 1);
												self.Color = EndColor;
												self.Drawings['Circle-Preview'] { Color = EndColor };
										elseif self.Item == 'HL' then
												local Preview = self.Drawings['Square-Preview'] ();
												local HSV = self.HSV;
												local Position = V2New(math.clamp(MousePosition.X, Preview.Position.X, Preview.Position.X + Preview.Size.X), math.clamp(MousePosition.Y, Preview.Position.Y, Preview.Position.Y + Preview.Size.Y));
												HSV.S = (Position.X - Preview.Position.X) / Preview.Size.X;
												HSV.V = 1 - (Position.Y - Preview.Position.Y) / Preview.Size.Y;
												local EndColor = Color3.fromHSV(HSV.H, HSV.S, HSV.V); if EndColor ~= self.Color then self.ColorChanged:Fire(self.Color); end
												self.Color = EndColor;
												self.Drawings['Circle-Preview'] { Color = EndColor };
												local Pointer = self.Drawings['Circle-CursorSquare'] { Position = Position };
												self.Drawings['Circle-CursorOutlineSquare'] { Position = Pointer.Position };
										end
								end
						end

						function Picker:HandleInput(Input, P, Type)
								if Type == 'Began' then
										if Input.UserInputType.Name == 'MouseButton1' then
												local Main = self.Drawings['Image-Main'] ();
												local SquareSV = self.Drawings['Square-Preview'] ();
												local MousePosition = V2New(Input.Position.X, Input.Position.Y + 33);
												self.MouseHeld = true;
												local Bounds = Main.Size / 2;
												local Center = Main.Position + Bounds;
												local R = (MousePosition - Center);

												if R.Magnitude < Bounds.X and R.Magnitude > Bounds.X - 20 then
														self.Item = 'Ring';
												end

												if MousePosition.X > SquareSV.Position.X and MousePosition.Y > SquareSV.Position.Y and MousePosition.X < SquareSV.Position.X + SquareSV.Size.X and MousePosition.Y < SquareSV.Position.Y + SquareSV.Size.Y then
														self.Item = 'HL';
												end

												self:UpdatePosition(Input, P);
										end
								elseif Type == 'Changed' then
										if Input.UserInputType.Name == 'MouseMovement' then
												self:UpdatePosition(Input, P);
										end
								elseif Type == 'Ended' and Input.UserInputType.Name == 'MouseButton1' then
										self.Item = nil;
								end
						end

						function Picker:Dispose()
								self.Drawings(false);
								self.UpdatePosition = nil;
								self.HandleInput = nil;
								Connections:DisconnectAll(); -- scuffed tbh
						end

						Connections:Listen(UserInputService.InputBegan, function(Input, Process)
								Picker:HandleInput(Input, Process, 'Began');
						end);
						Connections:Listen(UserInputService.InputChanged, function(Input, Process)
								if Input.UserInputType.Name == 'MouseMovement' then
										local MousePosition = V2New(Input.Position.X, Input.Position.Y + 33);
										local Cursor = Picker.Drawings['Triangle-Cursor'] {
												Filled = true;
												Color = Color3.new(0.9, 0.9, 0.9);
												PointA = MousePosition + V2New(0, 0);
												PointB = MousePosition + V2New(12, 14);
												PointC = MousePosition + V2New(0, 18);
												Thickness = 0;
										};
								end
								Picker:HandleInput(Input, Process, 'Changed');
						end);
						Connections:Listen(UserInputService.InputEnded, function(Input, Process)
								Picker:HandleInput(Input, Process, 'Ended');

								if Input.UserInputType.Name == 'MouseButton1' then
										Picker.MouseHeld = false;
								end
						end);

						ColorPicker.Loading = false;

						Picker.Drawings = Drawings;
						return Picker;
				end

				function SubMenu:Show(Position, Title, Options)
						self.Open = true;

						local Visible = true;
						local BasePosition = Position;
						local BaseSize = V2New(200, 140);
						local End = BasePosition + BaseSize;

						self.Bounds = { BasePosition.X, BasePosition.Y, End.X, End.Y };

						delay(0.025, function()
								if not self.Open then return; end

								Menu:AddMenuInstance('Sub-Main', 'Square', {
										Size            = BaseSize;
										Position        = BasePosition;
										Filled          = false;
										Color           = Colors.Primary.Main;
										Thickness       = 3;
										Visible         = Visible;
								});
						end);
						Menu:AddMenuInstance('Sub-TopBar', 'Square', {
								Position        = BasePosition;
								Size            = V2New(BaseSize.X, 10);
								Color           = Colors.Primary.Dark;
								Filled          = true;
								Visible         = Visible;
						});
						Menu:AddMenuInstance('Sub-TopBarTwo', 'Square', {
								Position        = BasePosition + V2New(0, 10);
								Size            = V2New(BaseSize.X, 20);
								Color           = Colors.Primary.Main;
								Filled          = true;
								Visible         = Visible;
						});
						Menu:AddMenuInstance('Sub-TopBarText', 'Text', {
								Size            = 20;
								Position        = shared.MenuDrawingData.Instances['Sub-TopBarTwo'].Position + V2New(15, -3);
								Text            = Title or '';
								Color           = Colors.Secondary.Light;
								Visible         = Visible;
						});
						Menu:AddMenuInstance('Sub-Filling', 'Square', {
								Size            = BaseSize - V2New(0, 30);
								Position        = BasePosition + V2New(0, 30);
								Filled          = true;
								Color           = Colors.Secondary.Main;
								Transparency= .75;
								Visible         = Visible;
						});

						if Options then
								for Index, Option in pairs(Options) do -- currently only supports color and button(but color is a button so), planning on fully rewriting or something
										local function GetName(Name) return ('Sub-%s.%d'):format(Name, Index) end
										local Position = shared.MenuDrawingData.Instances['Sub-Filling'].Position + V2New(20, Index * 25 - 10);
										-- local BasePosition   = shared.MenuDrawingData.Instances.Filling.Position + V2New(30, v.Index * 25 - 10);

										if Option.Type == 'Color' then
												local ColorPreview = Menu:AddMenuInstance(GetName'ColorPreview', 'Circle', {
														Position = Position;
														Color = Option.Color;
														Radius = IsSynapse and 10 or 10;
														NumSides = 10;
														Filled = true;
														Visible = true;
												});
												local Text = Menu:AddMenuInstance(GetName'Text', 'Text', {
														Text = Option.Text;
														Position = ColorPreview.Position + V2New(15, -8);
														Size = 16;
														Color = Colors.Primary.Dark;
														Visible = true;
												});
												UIButtons[#UIButtons + 1] = {
														FromSubMenu = true;
														Option = function() return Option.Function(ColorPreview, BasePosition + V2New(BaseSize.X, 0)) end;
														Instance = Menu:AddMenuInstance(Format('%s_Hitbox', GetName'Button'), 'Square', {
																Position        = Position - V2New(20, 12);
																Size            = V2New(BaseSize.X, 25);
																Visible         = false;
														});
												};
										elseif Option.Type == 'Button' then
												UIButtons[#UIButtons + 1] = {
														FromSubMenu = true;
														Option = Option.Function;
														Instance = Menu:AddMenuInstance(Format('%s_Hitbox', GetName'Button'), 'Square', {
																Size            = V2New(BaseSize.X, 20) - V2New(20, 0);
																Visible         = true;
																Transparency= .5;
																Position        = Position - V2New(10, 10);
																Color           = Colors.Secondary.Light;
																Filled          = true;
														});
												};
												local Text              = Menu:AddMenuInstance(Format('%s_Text', GetName'Text'), 'Text', {
														Text            = Option.Text;
														Size            = 18;
														Position        = Position + V2New(5, -10);
														Visible         = true;
														Color           = Colors.Primary.Dark;
												});
										end
								end
						end
				end

				function SubMenu:Hide()
						self.Open = false;

						for i, v in pairs(shared.MenuDrawingData.Instances) do
								if i:sub(1, 3) == 'Sub' then
										v.Visible = false;

										if i:sub(4, 4) == ':' then -- ';' = Temporary so remove
												v:Remove();
												shared.MenuDrawingData.Instance[i] = nil;
										end
								end
						end

						for i, Button in pairs(UIButtons) do
								if Button.FromSubMenu then
										UIButtons[i] = nil;
								end
						end

						spawn(function() -- stupid bug happens if i dont use this
								for i = 1, 10 do
										if shared.CurrentColorPicker then -- dont know why 'CurrentColorPicker' isnt a variable in this
												shared.CurrentColorPicker:Dispose();
										end
										wait(0.1);
								end
						end)

						CurrentColorPicker = nil;
				end

				function CreateMenu(NewPosition) -- Create Menu
						MenuLoaded = false;
						UIButtons  = {};
						Sliders    = {};

						local BaseSize = V2New(300, 625);
						local BasePosition = NewPosition or V2New(Camera.ViewportSize.X / 8 - (BaseSize.X / 2), Camera.ViewportSize.Y / 2 - (BaseSize.Y / 2));

						BasePosition = V2New(math.clamp(BasePosition.X, 0, Camera.ViewportSize.X), math.clamp(BasePosition.Y, 0, Camera.ViewportSize.Y));

						Menu:AddMenuInstance('CrosshairX', 'Line', {
								Visible                 = false;
								Color                   = Color3.new(0, 1, 0);
								Transparency    = 1;
								Thickness               = 1;
						});
						Menu:AddMenuInstance('CrosshairY', 'Line', {
								Visible                 = false;
								Color                   = Color3.new(0, 1, 0);
								Transparency    = 1;
								Thickness               = 1;
						});

						delay(.025, function() -- since zindex doesnt exist
								Menu:AddMenuInstance('Main', 'Square', {
										Size            = BaseSize;
										Position        = BasePosition;
										Filled          = false;
										Color           = Colors.Primary.Main;
										Thickness       = 3;
										Visible         = true;
								});
						end);
						Menu:AddMenuInstance('TopBar', 'Square', {
								Position        = BasePosition;
								Size            = V2New(BaseSize.X, 15);
								Color           = Colors.Primary.Dark;
								Filled          = true;
								Visible         = true;
						});
						Menu:AddMenuInstance('TopBarTwo', 'Square', {
								Position        = BasePosition + V2New(0, 15);
								Size            = V2New(BaseSize.X, 45);
								Color           = Colors.Primary.Main;
								Filled          = true;
								Visible         = true;
						});
						Menu:AddMenuInstance('TopBarText', 'Text', {
								Size            = 25;
								Position        = shared.MenuDrawingData.Instances.TopBarTwo.Position + V2New(25, 10);
								Text            = 'Unnamed ESP';
								Color           = Colors.Secondary.Light;
								Visible         = true;
								Transparency= 1; -- proto outline fix
								Outline         = true;
								OutlineOpacity = 0.5;
						});
						Menu:AddMenuInstance('TopBarTextBR', 'Text', {
								Size            = 18;
								Position        = shared.MenuDrawingData.Instances.TopBarTwo.Position + V2New(BaseSize.X - 75, 25);
								Text            = 'by ic3w0lf';
								Color           = Colors.Secondary.Light;
								Visible         = true;
								Transparency= 1;
								Outline         = true;
								OutlineOpacity = 0.5;
						});
						Menu:AddMenuInstance('Filling', 'Square', {
								Size            = BaseSize - V2New(0, 60);
								Position        = BasePosition + V2New(0, 60);
								Filled          = true;
								Color           = Colors.Secondary.Main;
								Transparency= .5;
								Visible         = true;
						});

						local CPos = 0;

						GetTableData(Options)(function(i, v)
								if typeof(v.Value) == 'boolean' and not IsStringEmpty(v.Text) and v.Text ~= nil then
										CPos                            = CPos + 25;
										local BaseSize          = V2New(BaseSize.X, 30);
										local BasePosition      = shared.MenuDrawingData.Instances.Filling.Position + V2New(30, v.Index * 25 - 10);
										UIButtons[#UIButtons + 1] = {
												Option = v;
												Instance = Menu:AddMenuInstance(Format('%s_Hitbox', v.Name), 'Square', {
														Position        = BasePosition - V2New(30, 15);
														Size            = BaseSize;
														Visible         = false;
												});
										};
										Menu:AddMenuInstance(Format('%s_OuterCircle', v.Name), 'Circle', {
												Radius          = 10;
												Position        = BasePosition;
												Color           = Colors.Secondary.Light;
												Filled          = true;
												Visible         = true;
										});
										Menu:AddMenuInstance(Format('%s_InnerCircle', v.Name), 'Circle', {
												Radius          = 7;
												Position        = BasePosition;
												Color           = Colors.Secondary.Dark;
												Filled          = true;
												Visible         = v.Value;
										});
										Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
												Text            = v.Text;
												Size            = 20;
												Position        = BasePosition + V2New(20, -10);
												Visible         = true;
												Color           = Colors.Secondary.Light;
												Transparency= 1;
												Outline         = true;
												OutlineOpacity = 0.5;
										});
								end
						end)
						GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
								if typeof(v.Value) == 'number' then
										CPos                            = CPos + 25;

										local BaseSize          = V2New(BaseSize.X, 30);
										local BasePosition      = shared.MenuDrawingData.Instances.Filling.Position + V2New(0, CPos - 10);

										local Line                      = Menu:AddMenuInstance(Format('%s_SliderLine', v.Name), 'Square', {
												Transparency    = 1;
												Color                   = Colors.Secondary.Light;
												-- Thickness            = 3;
												Filled                  = true;
												Visible                 = true;
												Position                = BasePosition + V2New(15, -5);
												Size                    = BaseSize - V2New(30, 10);
												Transparency    = 0.5;
										});
										local Slider            = Menu:AddMenuInstance(Format('%s_Slider', v.Name), 'Square', {
												Visible                 = true;
												Filled                  = true;
												Color                   = Colors.Primary.Dark;
												Size                    = V2New(5, Line.Size.Y);
												Transparency    = 0.5;
										});
										local Text                      = Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
												Text                    = v.Text;
												Size                    = 20;
												Center                  = true;
												Transparency    = 1;
												Outline                 = true;
												OutlineOpacity  = 0.5;
												Visible                 = true;
												Color                   = Colors.White;
										}); Text.Position       = Line.Position + (Line.Size / 2) - V2New(0, Text.TextBounds.Y / 1.75);
										local AMT                       = Menu:AddMenuInstance(Format('%s_AmountText', v.Name), 'Text', {
												Text                    = tostring(v.Value);
												Size                    = 22;
												Center                  = true;
												Transparency    = 1;
												Outline                 = true;
												OutlineOpacity  = 0.5;
												Visible                 = true;
												Color                   = Colors.White;
												Position                = Text.Position;
										});

										local CSlider = {Slider = Slider; Line = Line; Min = v.AllArgs[4]; Max = v.AllArgs[5]; Option = v};
										local Dummy = Instance.new'NumberValue';

										Dummy:GetPropertyChangedSignal'Value':Connect(function()
												Text.Transparency = Dummy.Value;
												-- Text.OutlineTransparency = 1 - Dummy.Value;
												AMT.Transparency = 1 - Dummy.Value;
										end);

										Dummy.Value = 1;

										function CSlider:ShowValue(Bool)
												self.ShowingValue = Bool;

												TweenService:Create(Dummy, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Value = Bool and 0 or 1 }):Play();
										end

										Sliders[#Sliders + 1] = CSlider;

										-- local Percent = (v.Value / CSlider.Max) * 100;
										-- local Size = math.abs(Line.From.X - Line.To.X);
										-- local Value = Size * (Percent / 100); -- this shit's inaccurate but fuck it i'm not even gonna bother fixing it

										Slider.Position = Line.Position + V2New(35, 0);

										v.BaseSize = BaseSize;
										v.BasePosition = BasePosition;
										-- AMT.Position = BasePosition + V2New(BaseSize.X - AMT.TextBounds.X - 10, -10)
								end
						end)
						local FirstItem = false;
						GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
								if typeof(v.Value) == 'EnumItem' then
										CPos                            = CPos + (not FirstItem and 30 or 25);
										FirstItem                       = true;

										local BaseSize          = V2New(BaseSize.X, FirstItem and 30 or 25);
										local BasePosition      = shared.MenuDrawingData.Instances.Filling.Position + V2New(0, CPos - 10);

										UIButtons[#UIButtons + 1] = {
												Option = v;
												Instance = Menu:AddMenuInstance(Format('%s_Hitbox', v.Name), 'Square', {
														Size            = V2New(BaseSize.X, 20) - V2New(30, 0);
														Visible         = true;
														Transparency= .5;
														Position        = BasePosition + V2New(15, -10);
														Color           = Colors.Secondary.Light;
														Filled          = true;
												});
										};
										local Text              = Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
												Text            = v.Text;
												Size            = 20;
												Position        = BasePosition + V2New(20, -10);
												Visible         = true;
												Color           = Colors.Secondary.Light;
												Transparency= 1;
												Outline         = true;
												OutlineOpacity = 0.5;
										});
										local BindText  = Menu:AddMenuInstance(Format('%s_BindText', v.Name), 'Text', {
												Text            = tostring(v.Value):match'%w+%.%w+%.(.+)';
												Size            = 20;
												Position        = BasePosition;
												Visible         = true;
												Color           = Colors.Secondary.Light;
												Transparency= 1;
												Outline         = true;
												OutlineOpacity = 0.5;
										});

										Options[i].BaseSize = BaseSize;
										Options[i].BasePosition = BasePosition;
										BindText.Position = BasePosition + V2New(BaseSize.X - BindText.TextBounds.X - 20, -10);
								end
						end)
						GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
								if typeof(v.Value) == 'function' then
										local BaseSize          = V2New(BaseSize.X, 30);
										local BasePosition      = shared.MenuDrawingData.Instances.Filling.Position + V2New(0, CPos + (25 * v.AllArgs[4]) - 35);

										UIButtons[#UIButtons + 1] = {
												Option = v;
												Instance = Menu:AddMenuInstance(Format('%s_Hitbox', v.Name), 'Square', {
														Size            = V2New(BaseSize.X, 20) - V2New(30, 0);
														Visible         = true;
														Transparency= .5;
														Position        = BasePosition + V2New(15, -10);
														Color           = Colors.Secondary.Light;
														Filled          = true;
												});
										};
										local Text              = Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
												Text            = v.Text;
												Size            = 20;
												Position        = BasePosition + V2New(20, -10);
												Visible         = true;
												Color           = Colors.Secondary.Light;
												Transparency= 1;
												Outline         = true;
												OutlineOpacity = 0.5;
										});

										-- BindText.Position = BasePosition + V2New(BaseSize.X - BindText.TextBounds.X - 10, -10);
								end
						end)

						delay(.1, function()
								MenuLoaded = true;
						end);

						-- this has to be at the bottom cuz proto drawing api doesnt have zindex :triumph:      
						Menu:AddMenuInstance('Cursor1', 'Line', {
								Visible                 = false;
								Color                   = Color3.new(1, 0, 0);
								Transparency    = 1;
								Thickness               = 2;
						});
						Menu:AddMenuInstance('Cursor2', 'Line', {
								Visible                 = false;
								Color                   = Color3.new(1, 0, 0);
								Transparency    = 1;
								Thickness               = 2;
						});
						Menu:AddMenuInstance('Cursor3', 'Line', {
								Visible                 = false;
								Color                   = Color3.new(1, 0, 0);
								Transparency    = 1;
								Thickness               = 2;
						});
				end

				CreateMenu();
				delay(0.1, function()
						SubMenu:Show(V2New()); -- Create the submenu
						SubMenu:Hide();
				end);

				shared.UESP_InputChangedCon = UserInputService.InputChanged:Connect(function(input)
						if input.UserInputType.Name == 'MouseMovement' and Options.MenuOpen.Value then
								for i, v in pairs(Sliders) do
										local Values = {
												v.Line.Position.X;
												v.Line.Position.Y;
												v.Line.Position.X + v.Line.Size.X;
												v.Line.Position.Y + v.Line.Size.Y;
										};
										if MouseHoveringOver(Values) then
												v:ShowValue(true);
										else
												if not MouseHeld then v:ShowValue(false); end
										end
								end
						end
				end)
				shared.UESP_InputBeganCon = UserInputService.InputBegan:Connect(function(input)
						if input.UserInputType.Name == 'MouseButton1' and Options.MenuOpen.Value then
								MouseHeld = true;
								local Bar = Menu:GetInstance'TopBar';
								local Values = {
										Bar.Position.X;
										Bar.Position.Y;
										Bar.Position.X + Bar.Size.X;
										Bar.Position.Y + Bar.Size.Y;
								}
								if MouseHoveringOver(Values) then
										DraggingUI = true;
										DragOffset = Menu:GetInstance'Main'.Position - GetMouseLocation();
								else
										for i, v in pairs(Sliders) do
												local Values = {
														v.Line.Position.X;
														v.Line.Position.Y;
														v.Line.Position.X + v.Line.Size.X;
														v.Line.Position.Y + v.Line.Size.Y;
														-- v.Line.From.X        - (v.Slider.Radius);
														-- v.Line.From.Y        - (v.Slider.Radius);
														-- v.Line.To.X          + (v.Slider.Radius);
														-- v.Line.To.Y          + (v.Slider.Radius);
												};
												if MouseHoveringOver(Values) then
														DraggingWhat = v;
														Dragging = true;
														break
												end
										end

										if not Dragging then
												local Values = {
														TracerPosition.X - 10;
														TracerPosition.Y - 10;
														TracerPosition.X + 10;
														TracerPosition.Y + 10;
												};
												if MouseHoveringOver(Values) then
														DragTracerPosition = true;
												end
										end
								end
						end
				end)
				shared.UESP_InputEndedCon = UserInputService.InputEnded:Connect(function(input)
						if input.UserInputType.Name == 'MouseButton1' and Options.MenuOpen.Value then
								MouseHeld = false;
								DragTracerPosition = false;
								local IgnoreOtherInput = false;

								if SubMenu.Open and not MouseHoveringOver(SubMenu.Bounds) then
										if CurrentColorPicker and IsMouseOverDrawing(CurrentColorPicker.Drawings['Square-Background']()) then IgnoreOtherInput = true; end
										if not IgnoreOtherInput then SubMenu:Hide() end
								end

								if not IgnoreOtherInput then
										for i, v in pairs(UIButtons) do
												if SubMenu.Open and MouseHoveringOver(SubMenu.Bounds) and not v.FromSubMenu then continue end

												local Values = {
														v.Instance.Position.X;
														v.Instance.Position.Y;
														v.Instance.Position.X + v.Instance.Size.X;
														v.Instance.Position.Y + v.Instance.Size.Y;
												};
												if MouseHoveringOver(Values) then
														v.Option();
														IgnoreOtherInput = true;
														break -- prevent clicking 2 options
												end
										end
										for i, v in pairs(Sliders) do
												if IgnoreOtherInput then break end

												local Values = {
														v.Line.Position.X;
														v.Line.Position.Y;
														v.Line.Position.X + v.Line.Size.X;
														v.Line.Position.Y + v.Line.Size.Y;
												};
												if not MouseHoveringOver(Values) then
														v:ShowValue(false);
												end
										end
								end
						elseif input.UserInputType.Name == 'MouseButton2' and Options.MenuOpen.Value and not DragTracerPosition then
								local Values = {
										TracerPosition.X - 10;
										TracerPosition.Y - 10;
										TracerPosition.X + 10;
										TracerPosition.Y + 10;
								}
								if MouseHoveringOver(Values) then
										DragTracerPosition = false;
										TracerPosition = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135);
								end
						elseif input.UserInputType.Name == 'Keyboard' then
								if Binding then
										BindedKey = input.KeyCode;
										Binding = false;
								elseif input.KeyCode == Options.MenuKey.Value or (input.KeyCode == Enum.KeyCode.Home and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)) then
										Options.MenuOpen();
								elseif input.KeyCode == Options.ToggleKey.Value then
										Options.Enabled();
								elseif input.KeyCode.Name == 'F1' and UserInputService:IsMouseButtonPressed(1) and shared.am_ic3 then -- hehe hiden spectate feature cuz why not
										local HD, LPlayer, LCharacter = 0.95;

										for i, Player in pairs(Players:GetPlayers()) do
												local Character = GetCharacter(Player);

												if Player ~= LocalPlayer and Player ~= Spectating and Character and Character:FindFirstChild'HumanoidRootPart' then
														local Head = Character:FindFirstChild'Head';
														local Humanoid = Character:FindFirstChildOfClass'Humanoid';

														if Head then
																local Distance  = (Camera.CFrame.Position - Head.Position).Magnitude;

																if Distance > Options.MaxDistance.Value then continue; end

																local Direction = -(Camera.CFrame.Position - Mouse.Hit.Position).unit;
																local Relative  = Character.Head.Position - Camera.CFrame.Position;
																local Unit      = Relative.unit;

																local DP = Direction:Dot(Unit);

																if DP > HD then
																		HD = DP;
																		LPlayer = Player;
																		LCharacter = Character;
																end
														end
												end
										end

										if LPlayer and LPlayer ~= Spectating and LCharacter then
												Camera.CameraSubject = LCharacter.Head;
												Spectating = LPlayer;
										else
												if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass'Humanoid' then
														Camera.CameraSubject = LocalPlayer.Character:FindFirstChildOfClass'Humanoid';
														Spectating = nil;
												end
										end
								end
						end
				end)

				local function CameraCon() -- unnamed esp v1 sucks
						workspace.CurrentCamera:GetPropertyChangedSignal'ViewportSize':Connect(function()
								TracerPosition = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135);
						end);
				end

				CameraCon();

				local function ToggleMenu()
						if Options.MenuOpen.Value then
								-- GUIService:SetMenuIsOpen(true);
								GetTableData(shared.MenuDrawingData.Instances)(function(i, v)
										if OldData[v] then
												pcall(Set, v, 'Visible', true);
										end
								end)
						else
								-- GUIService:SetMenuIsOpen(false);
								GetTableData(shared.MenuDrawingData.Instances)(function(i, v)
										OldData[v] = v.Visible;
										if v.Visible then
												pcall(Set, v, 'Visible', false);
										end
								end)
						end
				end

				local function CheckRay(Instance, Distance, Position, Unit)
						local Pass = true;
						local Model = Instance;

						if Distance > 999 then return false; end

						if Instance.ClassName == 'Player' then
								Model = GetCharacter(Instance);
						end

						if not Model then
								Model = Instance.Parent;

								if Model.Parent == workspace then
										Model = Instance;
								end
						end

						if not Model then return false end

						local _Ray = Ray.new(Position, Unit * Distance);

						local List = {LocalPlayer.Character, Camera, Mouse.TargetFilter};

						for i,v in pairs(IgnoreList) do table.insert(List, v); end;

						local Hit = workspace:FindPartOnRayWithIgnoreList(_Ray, List);

						if Hit and not Hit:IsDescendantOf(Model) then
								Pass = false;
								if Hit.Transparency >= .3 or not Hit.CanCollide and Hit.ClassName ~= Terrain then -- Detect invisible walls
										IgnoreList[#IgnoreList + 1] = Hit;
								end
						end

						return Pass;
				end

				local function CheckTeam(Player)
						if Player.Neutral and LocalPlayer.Neutral then return true; end
						return Player.TeamColor == LocalPlayer.TeamColor;
				end

				local CustomTeam = CustomTeams[game.PlaceId];

				if CustomTeam ~= nil then
						if CustomTeam.Initialize then ypcall(CustomTeam.Initialize) end

						CheckTeam = CustomTeam.CheckTeam;
				end

				local function CheckPlayer(Player, Character)
						if not Options.Enabled.Value then return false end

						local Pass = true;
						local Distance = 0;

						if Player ~= LocalPlayer and Character then
								if not Options.ShowTeam.Value and CheckTeam(Player) then
										Pass = false;
								end

								local Head = Character:FindFirstChild'Head';

								if Pass and Character and Head then
										Distance = (Camera.CFrame.Position - Head.Position).Magnitude;
										if Options.VisCheck.Value then
												Pass = CheckRay(Player, Distance, Camera.CFrame.Position, (Head.Position - Camera.CFrame.Position).unit);
										end
										if Distance > Options.MaxDistance.Value then
												Pass = false;
										end
								end
						else
								Pass = false;
						end

						return Pass, Distance;
				end

				local function CheckDistance(Instance)
						if not Options.Enabled.Value then return false end

						local Pass = true;
						local Distance = 0;

						if Instance ~= nil then
								Distance = (Camera.CFrame.Position - Instance.Position).Magnitude;
								if Options.VisCheck.Value then
										Pass = CheckRay(Instance, Distance, Camera.CFrame.Position, (Instance.Position - Camera.CFrame.Position).unit);
								end
								if Distance > Options.MaxDistance.Value then
										Pass = false;
								end
						else
								Pass = false;
						end

						return Pass, Distance;
				end

				local function UpdatePlayerData()
						if (tick() - LastRefresh) > (Options.RefreshRate.Value / 1000) then
								LastRefresh = tick();
								if CustomESP and Options.Enabled.Value then
										local a, b = pcall(CustomESP);
								end
								for i, v in pairs(RenderList.Instances) do
										if v.Instance ~= nil and v.Instance.Parent ~= nil and v.Instance:IsA'BasePart' then
												local Data = shared.InstanceData[v.Instance:GetDebugId()] or { Instances = {}; DontDelete = true };

												Data.Instance = v.Instance;

												Data.Instances['OutlineTracer'] = Data.Instances['OutlineTracer'] or NewDrawing'Line'{
														Transparency    = 0.75;
														Thickness               = 5;
														Color                   = Color3.new(0.1, 0.1, 0.1);
												}
												Data.Instances['Tracer'] = Data.Instances['Tracer'] or NewDrawing'Line'{
														Transparency    = 1;
														Thickness               = 2;
												}
												Data.Instances['NameTag'] = Data.Instances['NameTag'] or NewDrawing'Text'{
														Size                    = Options.TextSize.Value;
														Center                  = true;
														Outline                 = Options.TextOutline.Value;
														Visible                 = true;
												};
												Data.Instances['DistanceTag'] = Data.Instances['DistanceTag'] or NewDrawing'Text'{
														Size                    = Options.TextSize.Value - 1;
														Center                  = true;
														Outline                 = Options.TextOutline.Value;
														Visible                 = true;
												};

												local NameTag           = Data.Instances['NameTag'];
												local DistanceTag       = Data.Instances['DistanceTag'];
												local Tracer            = Data.Instances['Tracer'];
												local OutlineTracer     = Data.Instances['OutlineTracer'];

												local Pass, Distance = CheckDistance(v.Instance);

												if Pass then
														local ScreenPosition, Vis = WorldToViewport(v.Instance.Position);
														local Color = v.Color;
														local OPos = Camera.CFrame:pointToObjectSpace(v.Instance.Position);

														if ScreenPosition.Z < 0 then
																local AT = math.atan2(OPos.Y, OPos.X) + math.pi;
																OPos = CFrame.Angles(0, 0, AT):vectorToWorldSpace((CFrame.Angles(0, math.rad(89.9), 0):vectorToWorldSpace(V3New(0, 0, -1))));
														end

														local Position = WorldToViewport(Camera.CFrame:pointToWorldSpace(OPos));

														if Options.ShowTracers.Value then
																Tracer.Transparency = math.clamp(Distance / 200, 0.45, 0.8);
																Tracer.Visible  = true;
																Tracer.From             = TracerPosition;
																Tracer.To               = V2New(Position.X, Position.Y);
																Tracer.Color    = Color;
																OutlineTracer.Visible = true;
																OutlineTracer.Transparency = Tracer.Transparency - 0.1;
																OutlineTracer.From = Tracer.From;
																OutlineTracer.To = Tracer.To;
																OutlineTracer.Color     = Color3.new(0.1, 0.1, 0.1);
														else
																Tracer.Visible = false;
																OutlineTracer.Visible = false;
														end

														if ScreenPosition.Z > 0 then
																local ScreenPositionUpper = ScreenPosition;

																if Options.ShowName.Value then
																		LocalPlayer.NameDisplayDistance = 0;
																		NameTag.Visible         = true;
																		NameTag.Text            = v.Text;
																		NameTag.Size            = Options.TextSize.Value;
																		NameTag.Outline         = Options.TextOutline.Value;
																		NameTag.Position        = V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y);
																		NameTag.Color           = Color;
																		if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
																				NameTag.Font    = Drawing.Fonts.Monospace;
																		end
																else
																		LocalPlayer.NameDisplayDistance = 100;
																		NameTag.Visible = false;
																end
																if Options.ShowDistance.Value or Options.ShowHealth.Value then
																		DistanceTag.Visible             = true;
																		DistanceTag.Size                = Options.TextSize.Value - 1;
																		DistanceTag.Outline             = Options.TextOutline.Value;
																		DistanceTag.Color               = Color3.new(1, 1, 1);
																		if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
																				NameTag.Font    = Drawing.Fonts.Monospace;
																		end

																		local Str = '';

																		if Options.ShowDistance.Value then
																				Str = Str .. Format('[%d] ', Distance);
																		end

																		DistanceTag.Text = Str;
																		DistanceTag.Position = V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y) + V2New(0, NameTag.TextBounds.Y);
																else
																		DistanceTag.Visible = false;
																end
														else
																NameTag.Visible                 = false;
																DistanceTag.Visible             = false;
														end
												else
														NameTag.Visible                 = false;
														DistanceTag.Visible             = false;
														Tracer.Visible                  = false;
														OutlineTracer.Visible   = false;
												end

												Data.Instances['NameTag']               = NameTag;
												Data.Instances['DistanceTag']   = DistanceTag;
												Data.Instances['Tracer']                = Tracer;
												Data.Instances['OutlineTracer'] = OutlineTracer;

												shared.InstanceData[v.Instance:GetDebugId()] = Data;
										end
								end
								for i, v in pairs(Players:GetPlayers()) do
										local Data = shared.InstanceData[v.Name] or { Instances = {}; };

										Data.Instances['Box'] = Data.Instances['Box'] or LineBox:Create{Thickness = 4};
										Data.Instances['OutlineTracer'] = Data.Instances['OutlineTracer'] or NewDrawing'Line'{
												Transparency    = 1;
												Thickness               = 3;
												Color                   = Color3.new(0.1, 0.1, 0.1);
										}
										Data.Instances['Tracer'] = Data.Instances['Tracer'] or NewDrawing'Line'{
												Transparency    = 1;
												Thickness               = 1;
										}
										Data.Instances['HeadDot'] = Data.Instances['HeadDot'] or NewDrawing'Circle'{
												Filled                  = true;
												NumSides                = 30;
										}
										Data.Instances['NameTag'] = Data.Instances['NameTag'] or NewDrawing'Text'{
												Size                    = Options.TextSize.Value;
												Center                  = true;
												Outline                 = Options.TextOutline.Value;
												OutlineOpacity  = 1;
												Visible                 = true;
										};
										Data.Instances['DistanceHealthTag'] = Data.Instances['DistanceHealthTag'] or NewDrawing'Text'{
												Size                    = Options.TextSize.Value - 1;
												Center                  = true;
												Outline                 = Options.TextOutline.Value;
												OutlineOpacity  = 1;
												Visible                 = true;
										};

										local NameTag           = Data.Instances['NameTag'];
										local DistanceTag       = Data.Instances['DistanceHealthTag'];
										local Tracer            = Data.Instances['Tracer'];
										local OutlineTracer     = Data.Instances['OutlineTracer'];
										local HeadDot           = Data.Instances['HeadDot'];
										local Box                       = Data.Instances['Box'];

										local Character = GetCharacter(v);
										local Pass, Distance = CheckPlayer(v, Character);

										if Pass and Character then
												local Humanoid = Character:FindFirstChildOfClass'Humanoid';
												local Head = Character:FindFirstChild'Head';
												local HumanoidRootPart = Character:FindFirstChild'HumanoidRootPart';
												local Dead = Humanoid and Humanoid:GetState().Name == 'Dead';

												if Character ~= nil and Head and HumanoidRootPart and not Dead then
														local ScreenPosition, Vis = WorldToViewport(Head.Position);
														local Color = Rainbow and Color3.fromHSV(tick() * 128 % 255/255, 1, 1) or (CheckTeam(v) and TeamColor or EnemyColor); Color = Options.ShowTeamColor.Value and v.TeamColor.Color or Color;
														local OPos = Camera.CFrame:pointToObjectSpace(Head.Position);

														if ScreenPosition.Z < 0 then
																local AT = math.atan2(OPos.Y, OPos.X) + math.pi;
																OPos = CFrame.Angles(0, 0, AT):vectorToWorldSpace((CFrame.Angles(0, math.rad(89.9), 0):vectorToWorldSpace(V3New(0, 0, -1))));
														end

														local Position = WorldToViewport(Camera.CFrame:pointToWorldSpace(OPos));

														if Options.ShowTracers.Value then
																if TracerPosition.X >= Camera.ViewportSize.X or TracerPosition.Y >= Camera.ViewportSize.Y or TracerPosition.X < 0 or TracerPosition.Y < 0 then
																		TracerPosition = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135);
																end

																Tracer.Visible  = true;
																Tracer.Transparency = math.clamp(1 - (Distance / 200), 0.25, 0.75);
																Tracer.From             = TracerPosition;
																Tracer.To               = V2New(Position.X, Position.Y);
																Tracer.Color    = Color;
																OutlineTracer.From = Tracer.From;
																OutlineTracer.To = Tracer.To;
																OutlineTracer.Transparency = Tracer.Transparency - 0.15;
																OutlineTracer.Visible = true;
														else
																Tracer.Visible = false;
																OutlineTracer.Visible = false;
														end

														if ScreenPosition.Z > 0 then
																local ScreenPositionUpper       = WorldToViewport((HumanoidRootPart:GetRenderCFrame() * CFrame.new(0, Head.Size.Y + HumanoidRootPart.Size.Y + (Options.YOffset.Value / 25), 0)).Position);
																local Scale                                     = Head.Size.Y / 2;

																if Options.ShowName.Value then
																		NameTag.Visible         = true;
																		NameTag.Text            = v.Name .. (CustomPlayerTag and CustomPlayerTag(v) or '');
																		NameTag.Size            = Options.TextSize.Value;
																		NameTag.Outline         = Options.TextOutline.Value;
																		NameTag.Position        = V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y) - V2New(0, NameTag.TextBounds.Y);
																		NameTag.Color           = Color;
																		NameTag.Color           = Color;
																		NameTag.OutlineColor= Color3.new(0.05, 0.05, 0.05);
																		NameTag.Transparency= 0.85;
																		if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
																				NameTag.Font    = Drawing.Fonts.Monospace;
																		end
																else
																		NameTag.Visible = false;
																end
																if Options.ShowDistance.Value or Options.ShowHealth.Value then
																		DistanceTag.Visible             = true;
																		DistanceTag.Size                = Options.TextSize.Value - 1;
																		DistanceTag.Outline             = Options.TextOutline.Value;
																		DistanceTag.Color               = Color3.new(1, 1, 1);
																		DistanceTag.Transparency= 0.85;
																		if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
																				NameTag.Font    = Drawing.Fonts.Monospace;
																		end

																		local Str = '';

																		if Options.ShowDistance.Value then
																				Str = Str .. Format('[%d] ', Distance);
																		end
																		if Options.ShowHealth.Value and Humanoid then
																				Str = Str .. Format('[%d/%d] [%s%%]', Humanoid.Health, Humanoid.MaxHealth, math.floor(Humanoid.Health / Humanoid.MaxHealth * 100));
																		end

																		DistanceTag.Text = Str;
																		DistanceTag.OutlineColor = Color3.new(0.05, 0.05, 0.05);
																		DistanceTag.Position = (NameTag.Visible and NameTag.Position + V2New(0, NameTag.TextBounds.Y) or V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y));
																else
																		DistanceTag.Visible = false;
																end
																if Options.ShowDot.Value and Vis then
																		local Top                       = WorldToViewport((Head.CFrame * CFrame.new(0, Scale, 0)).Position);
																		local Bottom            = WorldToViewport((Head.CFrame * CFrame.new(0, -Scale, 0)).Position);
																		local Radius            = (Top - Bottom).y;

																		HeadDot.Visible         = true;
																		HeadDot.Color           = Color;
																		HeadDot.Position        = V2New(ScreenPosition.X, ScreenPosition.Y);
																		HeadDot.Radius          = Radius;
																else
																		HeadDot.Visible = false;
																end
																if Options.ShowBoxes.Value and Vis and HumanoidRootPart then
																		local Body = {
																				Head;
																				Character:FindFirstChild'Left Leg' or Character:FindFirstChild'LeftLowerLeg';
																				Character:FindFirstChild'Right Leg' or Character:FindFirstChild'RightLowerLeg';
																				Character:FindFirstChild'Left Arm' or Character:FindFirstChild'LeftLowerArm';
																				Character:FindFirstChild'Right Arm' or Character:FindFirstChild'RightLowerArm';
																		}
																		Box:Update(HumanoidRootPart.CFrame, V3New(2, 3, 1) * (Scale * 2), Color, nil, shared.am_ic3 and Body);
																else
																		Box:SetVisible(false);
																end
														else
																NameTag.Visible                 = false;
																DistanceTag.Visible             = false;
																HeadDot.Visible                 = false;

																Box:SetVisible(false);
														end
												else
														NameTag.Visible                 = false;
														DistanceTag.Visible             = false;
														HeadDot.Visible                 = false;
														Tracer.Visible                  = false;
														OutlineTracer.Visible   = false;

														Box:SetVisible(false);
												end
										else
												NameTag.Visible                 = false;
												DistanceTag.Visible             = false;
												HeadDot.Visible                 = false;
												Tracer.Visible                  = false;
												OutlineTracer.Visible   = false;

												Box:SetVisible(false);
										end

										shared.InstanceData[v.Name] = Data;
								end
						end
				end

				local LastInvalidCheck = 0;

				local function Update()
						if tick() - LastInvalidCheck > 0.3 then
								LastInvalidCheck = tick();

								if Camera.Parent ~= workspace then
										Camera = workspace.CurrentCamera;
										CameraCon();
										WTVP = Camera.WorldToViewportPoint;
								end

								for i, v in pairs(shared.InstanceData) do
										if not Players:FindFirstChild(tostring(i)) then
												if not shared.InstanceData[i].DontDelete then
														GetTableData(v.Instances)(function(i, obj)
																obj.Visible = false;
																obj:Remove();
																v.Instances[i] = nil;
														end)
														shared.InstanceData[i] = nil;
												else
														if shared.InstanceData[i].Instance == nil or shared.InstanceData[i].Instance.Parent == nil then
																GetTableData(v.Instances)(function(i, obj)
																		obj.Visible = false;
																		obj:Remove();
																		v.Instances[i] = nil;
																end)
																shared.InstanceData[i] = nil;
														end
												end
										end
								end
						end

						local CX = Menu:GetInstance'CrosshairX';
						local CY = Menu:GetInstance'CrosshairY';

						if Options.Crosshair.Value then
								CX.Visible = true;
								CY.Visible = true;

								CX.To = V2New((Camera.ViewportSize.X / 2) - 8, (Camera.ViewportSize.Y / 2));
								CX.From = V2New((Camera.ViewportSize.X / 2) + 8, (Camera.ViewportSize.Y / 2));
								CY.To = V2New((Camera.ViewportSize.X / 2), (Camera.ViewportSize.Y / 2) - 8);
								CY.From = V2New((Camera.ViewportSize.X / 2), (Camera.ViewportSize.Y / 2) + 8);
						else
								CX.Visible = false;
								CY.Visible = false;
						end

						if Options.MenuOpen.Value and MenuLoaded then
								local MLocation = GetMouseLocation();
								shared.MenuDrawingData.Instances.Main.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1);
								local MainInstance = Menu:GetInstance'Main';

								local Values = {
										MainInstance.Position.X;
										MainInstance.Position.Y;
										MainInstance.Position.X + MainInstance.Size.X;
										MainInstance.Position.Y + MainInstance.Size.Y;
								};

								if MainInstance and (MouseHoveringOver(Values) or (SubMenu.Open and MouseHoveringOver(SubMenu.Bounds))) then
										Debounce.CursorVis = true;

										Menu:UpdateMenuInstance'Cursor1'{
												Visible = true;
												From    = V2New(MLocation.x, MLocation.y);
												To              = V2New(MLocation.x + 5, MLocation.y + 6);
										}
										Menu:UpdateMenuInstance'Cursor2'{
												Visible = true;
												From    = V2New(MLocation.x, MLocation.y);
												To              = V2New(MLocation.x, MLocation.y + 8);
										}
										Menu:UpdateMenuInstance'Cursor3'{
												Visible = true;
												From    = V2New(MLocation.x, MLocation.y + 6);
												To              = V2New(MLocation.x + 5, MLocation.y + 5);
										}
								else
										if Debounce.CursorVis then
												Debounce.CursorVis = false;

												Menu:UpdateMenuInstance'Cursor1'{Visible = false};
												Menu:UpdateMenuInstance'Cursor2'{Visible = false};
												Menu:UpdateMenuInstance'Cursor3'{Visible = false};
										end
								end
								if MouseHeld then
										local MousePos = GetMouseLocation();

										if Dragging then
												DraggingWhat.Slider.Position = V2New(math.clamp(MLocation.X - DraggingWhat.Slider.Size.X / 2, DraggingWhat.Line.Position.X, DraggingWhat.Line.Position.X + DraggingWhat.Line.Size.X - DraggingWhat.Slider.Size.X), DraggingWhat.Slider.Position.Y);
												local Percent   = (DraggingWhat.Slider.Position.X - DraggingWhat.Line.Position.X) / ((DraggingWhat.Line.Position.X + DraggingWhat.Line.Size.X - DraggingWhat.Line.Position.X) - DraggingWhat.Slider.Size.X);
												local Value             = CalculateValue(DraggingWhat.Min, DraggingWhat.Max, Percent);
												DraggingWhat.Option(Value);
										elseif DraggingUI then
												Debounce.UIDrag = true;
												local Main = Menu:GetInstance'Main';
												Main.Position = MousePos + DragOffset;
										elseif DragTracerPosition then
												TracerPosition = MousePos;
										end
								else
										Dragging = false;
										DragTracerPosition = false;
										if DraggingUI and Debounce.UIDrag then
												Debounce.UIDrag = false;
												DraggingUI = false;
												CreateMenu(Menu:GetInstance'Main'.Position);
										end
								end
								if not Debounce.Menu then
										Debounce.Menu = true;
										ToggleMenu();
								end
						elseif Debounce.Menu and not Options.MenuOpen.Value then
								Debounce.Menu = false;
								ToggleMenu();
						end
				end

				RunService:UnbindFromRenderStep(GetDataName);
				RunService:UnbindFromRenderStep(UpdateName);

				RunService:BindToRenderStep(GetDataName, 300, UpdatePlayerData);
				RunService:BindToRenderStep(UpdateName, 199, Update);
		end)
	end
})

------------------------------------------------------------------------------------------------------------------------------------------------
--noFling------------------------------------------------------------------------------------------------------------------------------------------

Tab3:AddButton({
	Name = "AMOGUS",
	Callback = function()
		local netboost = 1000 --velocity 
		--netboost usage: 
		--set to false to disable
		--set to a vector3 value if you dont want the velocity to change
		--set to a number to change the velocity in real time with magnitude equal to the number
		local idleMag = 0.005 --used only in case netboost is set to a number value
		--if magnitude of the real velocity of a part is lower than this
		--then the fake velocity is being set to Vector3.new(0, netboost, 0)
		--the lower value the less you jitter but you might loose network ownership
		local simradius = "shp" --simulation radius (net bypass) method
		--"shp" - sethiddenproperty
		--"ssr" - setsimulationradius
		--false - disable
		local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
		local newanimate = false --disables the animate script and enables after reanimation
		local discharscripts = true --disables all localScripts parented to your character before reanimation
		local R15toR6 = true --tries to convert your character to r6 if its r15
		local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
		local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
		local method = 3 --reanimation method
		--methods:
		--0 - breakJoints (takes [loadtime] seconds to laod)
		--1 - limbs
		--2 - limbs + anti respawn
		--3 - limbs + breakJoints after [loadtime] seconds
		--4 - remove humanoid + breakJoints
		--5 - remove humanoid + limbs
		local alignmode = 2 --AlignPosition mode
		--modes:
		--1 - AlignPosition rigidity enabled true
		--2 - 2 AlignPositions rigidity enabled both true and false
		--3 - AlignPosition rigidity enabled false
		local hedafterneck = true --disable aligns for head and enable after neck is removed

		local lp = game:GetService("Players").LocalPlayer
		local rs = game:GetService("RunService")
		local stepped = rs.Stepped
		local heartbeat = rs.Heartbeat
		local renderstepped = rs.RenderStepped
		local sg = game:GetService("StarterGui")
		local ws = game:GetService("Workspace")
		local cf = CFrame.new
		local v3 = Vector3.new
		local v3_0 = v3(0, 0, 0)
		local inf = math.huge

		local c = lp.Character

		if not (c and c.Parent) then
			return
		end

		for i, v in pairs(c:GetDescendants()) do
			if v:IsA("CharacterMesh") or v:IsA("SpecialMesh") then
				v:Destroy()
			end
		end

		c:GetPropertyChangedSignal("Parent"):Connect(function()
			if not (c and c.Parent) then
				c = nil
			end
		end)

		local function gp(parent, name, className)
			local ret = nil
			pcall(function()
				for i, v in pairs(parent:GetChildren()) do
					if (v.Name == name) and v:IsA(className) then
						ret = v
						break
					end
				end
			end)
			return ret
		end

		local function align(Part0, Part1)
			Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)

			local att0 = Instance.new("Attachment", Part0)
			att0.Orientation = v3_0
			att0.Position = v3_0
			att0.Name = "att0_" .. Part0.Name
			local att1 = Instance.new("Attachment", Part1)
			att1.Orientation = v3_0
			att1.Position = v3_0
			att1.Name = "att1_" .. Part1.Name

			if (alignmode == 1) or (alignmode == 2) then
				local ape = Instance.new("AlignPosition", att0)
				ape.ApplyAtCenterOfMass = false
				ape.MaxForce = inf
				ape.MaxVelocity = inf
				ape.ReactionForceEnabled = false
				ape.Responsiveness = 200
				ape.Attachment1 = att1
				ape.Attachment0 = att0
				ape.Name = "AlignPositionRtrue"
				ape.RigidityEnabled = true
			end

			if (alignmode == 2) or (alignmode == 3) then
				local apd = Instance.new("AlignPosition", att0)
				apd.ApplyAtCenterOfMass = false
				apd.MaxForce = inf
				apd.MaxVelocity = inf
				apd.ReactionForceEnabled = false
				apd.Responsiveness = 200
				apd.Attachment1 = att1
				apd.Attachment0 = att0
				apd.Name = "AlignPositionRfalse"
				apd.RigidityEnabled = false
			end

			local ao = Instance.new("AlignOrientation", att0)
			ao.MaxAngularVelocity = inf
			ao.MaxTorque = inf
			ao.PrimaryAxisOnly = false
			ao.ReactionTorqueEnabled = false
			ao.Responsiveness = 200
			ao.Attachment1 = att1
			ao.Attachment0 = att0
			ao.RigidityEnabled = false

			if netboost then
				Part0:GetPropertyChangedSignal("Parent"):Connect(function()
					if not (Part0 and Part0.Parent) then
						Part0 = nil
					end
				end)
				spawn(function()
					if typeof(netboost) == "Vector3" then
						local vel = v3_0
						local rotvel = v3_0
						while Part0 do
							Part0.Velocity = vel
							Part0.RotVelocity = rotvel
							heartbeat:Wait()
							if Part0 then
								vel = Part0.Velocity
								Part0.Velocity = netboost
								Part0.RotVelocity = v3_0
								stepped:Wait()
							end
						end
					elseif typeof(netboost) == "number" then
						local vel = v3_0
						local rotvel = v3_0
						while Part0 do
							Part0.Velocity = vel
							Part0.RotVelocity = rotvel
							heartbeat:Wait()
							if Part0 then
								local newvel = vel
								local mag = newvel.Magnitude
								if mag < idleMag then
									newvel = v3(0, netboost, 0)
								else
									local multiplier = netboost / mag
									newvel *= v3(multiplier,  multiplier, multiplier)
								end
								vel = Part0.Velocity
								rotvel = Part0.RotVelocity
								Part0.Velocity = newvel
								Part0.RotVelocity = v3_0
								stepped:Wait()
							end
						end
					end
				end)
			end
		end

		local function respawnrequest()
			local c = lp.Character
			local ccfr = ws.CurrentCamera.CFrame
			local fc = Instance.new("Model")
			local nh = Instance.new("Humanoid", fc)
			lp.Character = fc
			nh.Health = 0
			lp.Character = c
			fc:Destroy()
			local con = nil
			local function confunc()
				con:Disconnect()
				ws.CurrentCamera.CFrame = ccfr
			end
			con = renderstepped:Connect(confunc)
		end

		local destroyhum = (method == 4) or (method == 5)
		local breakjoints = (method == 0) or (method == 4)
		local antirespawn = (method == 0) or (method == 2) or (method == 3)

		addtools = addtools and gp(lp, "Backpack", "Backpack")

		if simradius == "shp" then
			local shp = sethiddenproperty or set_hidden_property or set_hidden_prop or sethiddenprop
			if shp then
				spawn(function()
					while c and heartbeat:Wait() do
						shp(lp, "SimulationRadius", inf)
					end
				end)
			end
		elseif simradius == "ssr" then
			local ssr = setsimulationradius or set_simulation_radius or set_sim_radius or setsimradius or set_simulation_rad or setsimulationrad
			if ssr then
				spawn(function()
					while c and heartbeat:Wait() do
						ssr(inf)
					end
				end)
			end
		end

		antiragdoll = antiragdoll and function(v)
			if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
				v.Parent = nil
			end
		end

		if antiragdoll then
			for i, v in pairs(c:GetDescendants()) do
				antiragdoll(v)
			end
			c.DescendantAdded:Connect(antiragdoll)
		end

		if antirespawn then
			respawnrequest()
		end

		if method == 0 then
			wait(loadtime)
			if not c then
				return
			end
		end

		if discharscripts then
			for i, v in pairs(c:GetChildren()) do
				if v:IsA("LocalScript") then
					v.Disabled = true
				end
			end
		elseif newanimate then
			local animate = gp(c, "Animate", "LocalScript")
			if animate and (not animate.Disabled) then
				animate.Disabled = true
			else
				newanimate = false
			end
		end

		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			for i, v in pairs(hum:GetPlayingAnimationTracks()) do
				v:Stop()
			end
		end

		if addtools then
			for i, v in pairs(addtools:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = c
				end
			end
		end

		pcall(function()
			settings().Physics.AllowSleep = false
			settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		end)

		local OLDscripts = {}

		for i, v in pairs(c:GetDescendants()) do
			if v.ClassName == "Script" then
				table.insert(OLDscripts, v)
			end
		end

		local scriptNames = {}

		for i, v in pairs(c:GetDescendants()) do
			if v:IsA("BasePart") then
				local newName = tostring(i)
				local exists = true
				while exists do
					exists = false
					for i, v in pairs(OLDscripts) do
						if v.Name == newName then
							exists = true
						end
					end
					if exists then
						newName = newName .. "_"    
					end
				end
				table.insert(scriptNames, newName)
				Instance.new("Script", v).Name = newName
			end
		end

		c.Archivable = true
		local cl = c:Clone()
		for i, v in pairs(cl:GetDescendants()) do
			pcall(function()
				v.Transparency = 1
				v.Anchored = false
			end)
		end

		local model = Instance.new("Model", c)
		model.Name = model.ClassName

		model:GetPropertyChangedSignal("Parent"):Connect(function()
			if not (model and model.Parent) then
				model = nil
			end
		end)

		for i, v in pairs(c:GetChildren()) do
			if v ~= model then
				if destroyhum and v:IsA("Humanoid") then
					v:Destroy()
				else
					if addtools and v:IsA("Tool") then
						for i1, v1 in pairs(v:GetDescendants()) do
							if v1 and v1.Parent and v1:IsA("BasePart") then
								local bv = Instance.new("BodyVelocity", v1)
								bv.Velocity = v3_0
								bv.MaxForce = v3(1000, 1000, 1000)
								bv.P = 1250
								bv.Name = "bv_" .. v.Name
							end
						end
					end
					v.Parent = model
				end
			end
		end
		local head = gp(model, "Head", "BasePart")
		local torso = gp(model, "Torso", "BasePart") or gp(model, "UpperTorso", "BasePart")
		if breakjoints then
			model:BreakJoints()
		else
			if head and torso then
				for i, v in pairs(model:GetDescendants()) do
					if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
						local save = false
						if (v.Part0 == torso) and (v.Part1 == head) then
							save = true
						end
						if (v.Part0 == head) and (v.Part1 == torso) then
							save = true
						end
						if save then
							if hedafterneck then
								hedafterneck = v
							end
						else
							v:Destroy()
						end
					end
				end
			end
			if method == 3 then
				spawn(function()
					wait(loadtime)
					if model then
						model:BreakJoints()
					end
				end)
			end
		end

		cl.Parent = c
		for i, v in pairs(cl:GetChildren()) do
			v.Parent = c
		end
		cl:Destroy()

		local modelDes = {}
		for i, v in pairs(model:GetDescendants()) do
			if v:IsA("BasePart") then
				i = tostring(i)
				local con = nil
				con = v:GetPropertyChangedSignal("Parent"):Connect(function()
					if not (v and v.Parent) then
						con:Disconnect()
						modelDes[i] = nil
					end
				end)
				modelDes[i] = v
			end
		end
		local modelcolcon = nil
		local function modelcolf()
			if model then
				for i, v in pairs(modelDes) do
					v.CanCollide = false
				end
			else
				modelcolcon:Disconnect()
			end
		end
		modelcolcon = stepped:Connect(modelcolf)
		modelcolf()

		for i, scr in pairs(model:GetDescendants()) do
			if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
				local Part0 = scr.Parent
				if Part0:IsA("BasePart") then
					for i1, scr1 in pairs(c:GetDescendants()) do
						if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
							local Part1 = scr1.Parent
							if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
								align(Part0, Part1)
								break
							end
						end
					end
				end
			end
		end

		if (typeof(hedafterneck) == "Instance") and head and head.Parent then
			local aligns = {}
			for i, v in pairs(head:GetDescendants()) do
				if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
					table.insert(aligns, v)
					v.Enabled = false
				end
			end
			spawn(function()
				while c and hedafterneck and hedafterneck.Parent do
					stepped:Wait()
				end
				if not (c and head and head.Parent) then
					return
				end
				for i, v in pairs(aligns) do
					pcall(function()
						v.Enabled = true
					end)
				end
			end)
		end

		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent then
				if v.ClassName == "Script" then
					if table.find(scriptNames, v.Name) then
						v:Destroy()
					end
				elseif not v:IsDescendantOf(model) then
					if v:IsA("Decal") then
						v.Transparency = 1
					elseif v:IsA("ForceField") then
						v.Visible = false
					elseif v:IsA("Sound") then
						v.Playing = false
					elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
						v.Enabled = false
					end
				end
			end
		end

		if newanimate then
			local animate = gp(c, "Animate", "LocalScript")
			if animate then
				animate.Disabled = false
			end
		end

		if addtools then
			for i, v in pairs(c:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = addtools
				end
			end
		end

		local hum0 = model:FindFirstChildOfClass("Humanoid")
		local hum1 = c:FindFirstChildOfClass("Humanoid")
		if hum1 then
			ws.CurrentCamera.CameraSubject = hum1
			local camSubCon = nil
			local function camSubFunc()
				camSubCon:Disconnect()
				if c and hum1 and (hum1.Parent == c) then
					ws.CurrentCamera.CameraSubject = hum1
				end
			end
			camSubCon = renderstepped:Connect(camSubFunc)
			if hum0 then
				hum0.Changed:Connect(function(prop)
					if (prop == "Jump") and hum1 and hum1.Parent then
						hum1.Jump = hum0.Jump
					end
				end)
			else
				lp.Character = nil
				lp.Character = c
			end
		end

		local rb = Instance.new("BindableEvent", c)
		rb.Event:Connect(function()
			rb:Destroy()
			sg:SetCore("ResetButtonCallback", true)
			if destroyhum then
				c:BreakJoints()
				return
			end
			if antirespawn then
				if hum0 and hum0.Parent and (hum0.Health > 0) then
					model:BreakJoints()
					hum0.Health = 0
				end
				respawnrequest()
			else
				if hum0 and hum0.Parent and (hum0.Health > 0) then
					model:BreakJoints()
					hum0.Health = 0
				end
			end
		end)
		sg:SetCore("ResetButtonCallback", rb)

		spawn(function()
			while c do
				if hum0 and hum0.Parent and hum1 and hum1.Parent then
					hum1.Jump = hum0.Jump
				end
				wait()
			end
			sg:SetCore("ResetButtonCallback", true)
		end)

		R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
		if R15toR6 then
			local cfr = nil
			pcall(function()
				cfr = gp(c, "HumanoidRootPart", "BasePart").CFrame
			end)
			if cfr then
				local R6parts = { 
					head = {
						Name = "Head",
						Size = v3(2, 1, 1),
						R15 = {
							Head = 0
						}
					},
					torso = {
						Name = "Torso",
						Size = v3(2, 2, 1),
						R15 = {
							UpperTorso = 0.2,
							LowerTorso = -0.8
						}
					},
					root = {
						Name = "HumanoidRootPart",
						Size = v3(2, 2, 1),
						R15 = {
							HumanoidRootPart = 0
						}
					},
					leftArm = {
						Name = "Left Arm",
						Size = v3(1, 2, 1),
						R15 = {
							LeftHand = -0.85,
							LeftLowerArm = -0.2,
							LeftUpperArm = 0.4
						}
					},
					rightArm = {
						Name = "Right Arm",
						Size = v3(1, 2, 1),
						R15 = {
							RightHand = -0.85,
							RightLowerArm = -0.2,
							RightUpperArm = 0.4
						}
					},
					leftLeg = {
						Name = "Left Leg",
						Size = v3(1, 2, 1),
						R15 = {
							LeftFoot = -0.85,
							LeftLowerLeg = -0.15,
							LeftUpperLeg = 0.6
						}
					},
					rightLeg = {
						Name = "Right Leg",
						Size = v3(1, 2, 1),
						R15 = {
							RightFoot = -0.85,
							RightLowerLeg = -0.15,
							RightUpperLeg = 0.6
						}
					}
				}
				for i, v in pairs(c:GetChildren()) do
					if v:IsA("BasePart") then
						for i1, v1 in pairs(v:GetChildren()) do
							if v1:IsA("Motor6D") then
								v1.Part0 = nil
							end
						end
					end
				end
				for i, v in pairs(R6parts) do
					local part = Instance.new("Part")
					part.Name = v.Name
					part.Size = v.Size
					part.CFrame = cfr
					part.Anchored = false
					part.Transparency = 1
					part.CanCollide = false
					for i1, v1 in pairs(v.R15) do
						local R15part = gp(c, i1, "BasePart")
						local att = gp(R15part, "att1_" .. i1, "Attachment")
						if R15part then
							local weld = Instance.new("Weld", R15part)
							weld.Name = "Weld_" .. i1
							weld.Part0 = part
							weld.Part1 = R15part
							weld.C0 = cf(0, v1, 0)
							weld.C1 = cf(0, 0, 0)
							R15part.Massless = true
							R15part.Name = "R15_" .. i1
							R15part.Parent = part
							if att then
								att.Parent = part
								att.Position = v3(0, v1, 0)
							end
						end
					end
					part.Parent = c
					R6parts[i] = part
				end
				local R6joints = {
					neck = {
						Parent = R6parts.torso,
						Name = "Neck",
						Part0 = R6parts.torso,
						Part1 = R6parts.head,
						C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
						C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
					},
					rootJoint = {
						Parent = R6parts.root,
						Name = "RootJoint" ,
						Part0 = R6parts.root,
						Part1 = R6parts.torso,
						C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
						C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
					},
					rightShoulder = {
						Parent = R6parts.torso,
						Name = "Right Shoulder",
						Part0 = R6parts.torso,
						Part1 = R6parts.rightArm,
						C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
						C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					},
					leftShoulder = {
						Parent = R6parts.torso,
						Name = "Left Shoulder",
						Part0 = R6parts.torso,
						Part1 = R6parts.leftArm,
						C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
						C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					},
					rightHip = {
						Parent = R6parts.torso,
						Name = "Right Hip",
						Part0 = R6parts.torso,
						Part1 = R6parts.rightLeg,
						C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
						C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					},
					leftHip = {
						Parent = R6parts.torso,
						Name = "Left Hip" ,
						Part0 = R6parts.torso,
						Part1 = R6parts.leftLeg,
						C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
						C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					}
				}
				for i, v in pairs(R6joints) do
					local joint = Instance.new("Motor6D")
					for prop, val in pairs(v) do
						joint[prop] = val
					end
					R6joints[i] = joint
				end
				hum1.RigType = Enum.HumanoidRigType.R6
				hum1.HipHeight = 0
			end
		end

		wait()
		if not c then
			return
		end

		local venttoggle = false
		local vented = false
		local mode2 = false
		local attack = false
		local modetoggle = false
		local dead = false
		local dtoggle = false
		local sittoggle = false
		local sit = false
		local sine = 0
		local mouse = lp:GetMouse()

		local joints = {
			["RootJoint"] = "",
			["Neck"] = "",
			["Right Hip"] = "",
			["Left Hip"] = "",
			["Left Shoulder"] = "",
			["Right Shoulder"] = ""
		}

		for i, v in pairs(c:GetDescendants()) do
			if v:IsA("Motor6D") and (joints[v.Name] == "") and (not v:IsDescendantOf(model)) then
				joints[v.Name] = v
			end
		end

		for i, v in pairs(joints) do
			if v and (v ~= "") then
				v.C0 = cf(0, 0, 0)
				v.C1 = cf(0, 0, 0)
			else
				return
			end
		end

		local Root = gp(c, "HumanoidRootPart", "BasePart")
		if not Root then
			return
		end

		local function replace(a)
			local b, c = a.Part0, a.Part1
			a.Part1, a.Part0 = b, c
		end

		replace(joints["Left Shoulder"])
		replace(joints["Right Shoulder"])
		replace(joints["Left Hip"])
		replace(joints["Right Hip"])

		for i, v in pairs(c:GetChildren()) do
			if v:IsA("Accessory") then
				v:Destroy()
			end
		end

		joints.Neck.C0 = cf(0, 0.3, -0.5)

		mouse.Button1Down:Connect(function()
			if not (kill or mode2 or dead) then
				attack = true
				vented = false
				hum1.WalkSpeed = 0
				wait(0.5)
				hum1.WalkSpeed = 16
				attack = false
			end
		end)

		mouse.KeyDown:Connect(function(key)
			if not c then 
				return 
			end
			key = key:lower()
			if k == "e" then
				if not venttoggle then
					modetoggle = false
					mode2 = false
					venttoggle = true
					vented = true
					hum1.WalkSpeed = 100
					position = "ventidle"
				elseif venttoggle then
					venttoggle = false
					vented = false
					hum1.WalkSpeed = 16
				end
			elseif key == "f" then
				if not modetoggle then
					venttoggle = false
					vented = false
					modetoggle = true
					mode2 = true
					sittoggle = false
					sit = false
					hum1.WalkSpeed = 60
				elseif modetoggle then
					modetoggle = false
					mode2 = false
					hum1.WalkSpeed = 16
				end
			elseif key == "q" then
				if dtoggle == false then
					venttoggle = false
					vented = false
					modetoggle = false
					mode2 = false
					dtoggle = true
					dead = true
					sittoggle = false
					sit = false
					hum1.WalkSpeed = 0
				elseif dtoggle == true then
					dtoggle = false
					dead = false
					hum1.WalkSpeed = 16
				end
			elseif key == "c" then
				if sittoggle == false then
					venttoggle = false
					vented = false
					modetoggle = false
					mode2 = false
					dtoggle = false
					dead = false
					sittoggle = true
					sit = true
					hum1.WalkSpeed = 0
				elseif sittoggle == true then
					sittoggle = false
					sit = false
					hum1.WalkSpeed = 16
				end
			end
		end)

		local pose = "idle"
		while stepped:Wait() and c do
			if attack then
				pose = "attack"
			elseif dead then
				pose = "dead"
			elseif sit then
				pose = "sit"
			elseif mode2 then
				if Root.Velocity.Magnitude < 2 then
					pose = "idle2"
				elseif Root.Velocity.Magnitude > 20 then
					pose = "walk2"
				end
			else
				if Root.Velocity.y > 1 then
					pose = "jump"
				elseif Root.Velocity.y < -1 then
					pose = "fall"
				elseif Root.Velocity.Magnitude < 2 then
					pose = "idle"
				elseif Root.Velocity.Magnitude < 20 then
					pose = "walk"
				elseif Root.Velocity.Magnitude > 20 then
					pose = "run"
				end 
			end
			sine += 1
			if pose == "idle" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0.3 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(20 + 0 * math.sin(sine/12)), math.rad(-3 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(3 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "walk" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0.3 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 30 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + -0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + -30 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "jump" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(15 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "fall" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(15 + 10 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-10 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(10 + 5 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(10 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "vent" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + -8 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "ventidle" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), -20 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "idle2" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/20), 3 + 0.3 * math.sin(sine/20), 0 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + 20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(20 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/20), 2 + 0 * math.sin(sine/20), 0.5 + -0.5 * math.sin(sine/20)) * CFrame.Angles(math.rad(10 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
			elseif pose == "walk2" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/20), 3 + 0.3 * math.sin(sine/20), 0 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(-60 + 10 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/20), 2 + 0 * math.sin(sine/20), 0.3 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + -10 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(-5 + 0 * math.sin(sine/20))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20), 0.5 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(5 + 0 * math.sin(sine/20))),0.1)
			elseif pose == "attack" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "sit" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), -1.8 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(10 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), -1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/12)), math.rad(10 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), -1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/12)), math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
			elseif pose == "dead" then
				joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), -2.5 + 0 * math.sin(sine/5), -1 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
				joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 3 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
				joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 3 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12))),0.1)
			end
			joints["Right Shoulder"].C0 = joints["Right Shoulder"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), -0.8 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
			joints["Left Shoulder"].C0 = joints["Left Shoulder"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), -0.8 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
		end
	end
})

Tab3:AddButton({
	Name = "Rainbow King",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/BjpHhDSG"))()
	end
})

Tab3:AddButton({
	Name = "Fe Dog (Player)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/H0fCpUYQ"))()
	end
})

Tab3:AddButton({
	Name = "Creeper Fe Script",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/R7Hee4dW"))()
	end
})

Tab3:AddButton({
	Name = "long Legs",
	Callback = function()
		loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
	end
})

Tab3:AddButton({
	Name = "Control Player FE Script",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/YqYD9wbk"))()
	end
})

Tab3:AddButton({
	Name = "Animation Gui",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/0MLPL32f"))()
	end
})

Tab3:AddButton({
	Name = "Neko Maid Animation Fe Script",
	Callback = function()
		-- FE Neko Maid Animations By Creo
		-- Tail that CAN be used https://web.roblox.com/catalog/4645440842/Plain-White-Cat-Tail
		-- For updates on script join this server
		-- https://discord.gg/ad7WVB6Bxf


		local NotificationBindable = Instance.new("BindableFunction")
		local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
			game.StarterGui:SetCore("SendNotification", {
				Title = Title;
				Text = Text;
				Icon = "";
				Duration = Duration;
				Button1 = Button1Text;
				Button2 = nil;
				Callback = NotificationBindable;
			})
		end

		Msgreq("FE Neko Anims V1.6","Loading, please wait while it loads",5,nil)
		local SongID = "http://www.roblox.com/asset/?id=198665867"
		Bypass = "death"
		if not Bypass then Bypass = "limbs" end
		HumanDied = false

		CountSCIFIMOVIELOL = 1
		function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
			local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
			AlignPos.ApplyAtCenterOfMass = true;
			AlignPos.MaxForce = 67752;
			AlignPos.MaxVelocity = math.huge/9e110;
			AlignPos.ReactionForceEnabled = false;
			AlignPos.Responsiveness = 200;
			AlignPos.RigidityEnabled = false;
			local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
			AlignOri.MaxAngularVelocity = math.huge/9e110;
			AlignOri.MaxTorque = 67752;
			AlignOri.PrimaryAxisOnly = false;
			AlignOri.ReactionTorqueEnabled = false;
			AlignOri.Responsiveness = 200;
			AlignOri.RigidityEnabled = false;
			local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "AthP_"..CountSCIFIMOVIELOL
			local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "AthP_"..CountSCIFIMOVIELOL
			local AttachmentC=Instance.new('Attachment',Part1); AttachmentC.Name = "AthO_"..CountSCIFIMOVIELOL
			local AttachmentD=Instance.new('Attachment',Part0); AttachmentD.Name = "AthO_"..CountSCIFIMOVIELOL
			AttachmentC.Orientation = Angle
			AttachmentA.Position = Position
			AlignPos.Attachment1 = AttachmentA;
			AlignPos.Attachment0 = AttachmentB;
			AlignOri.Attachment1 = AttachmentC;
			AlignOri.Attachment0 = AttachmentD;
			CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1

		end

		coroutine.wrap(function()
			local player = game.Players.LocalPlayer
			local char = player.Character or player.CharacterAdded:wait()
			if sethiddenproperty then
				while true do
					game:GetService("RunService").RenderStepped:Wait()
					settings().Physics.AllowSleep = false
					local TBL = game:GetService("Players"):GetChildren() 
					for _ = 1,#TBL do local Players = TBL[_]
						if Players ~= game:GetService("Players").LocalPlayer then
							Players.MaximumSimulationRadius = 0
							sethiddenproperty(Players,"SimulationRadius",0) 
						end 
					end
					game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
					sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge)*math.huge)
					if HumanDied then break end
				end
			else
				while true do
					game:GetService("RunService").RenderStepped:Wait()
					settings().Physics.AllowSleep = false
					local TBL = game:GetService("Players"):GetChildren() 
					for _ = 1,#TBL do local Players = TBL[_]
						if Players ~= game:GetService("Players").LocalPlayer then
							Players.MaximumSimulationRadius = 0
						end 
					end
					game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
					if HumanDied then break end
				end
			end
		end)()

		if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
				game:GetService("Players").LocalPlayer["Character"].Archivable = true 
				local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
				CloneChar.Parent = workspace 
				CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
				wait() 
				CloneChar.Humanoid.BreakJointsOnDeath = false
				workspace.Camera.CameraSubject = CloneChar.Humanoid
				CloneChar.Name = "non" 
				CloneChar.Humanoid.DisplayDistanceType = "None"
				if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
				if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

				local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
				DeadChar.HumanoidRootPart:Destroy()

				local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
				local CONVEC
				local function VECTORUNIT()
					if HumanDied then CONVEC:Disconnect(); return end
					local lookVec = workspace.Camera.CFrame.lookVector
					local Root = CloneChar["HumanoidRootPart"]
					LVecPart.Position = Root.Position
					LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
				end
				CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

				local CONDOWN
				local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
				local function KEYDOWN(_,Processed) 
					if HumanDied then CONDOWN:Disconnect(); return end
					if Processed ~= true then
						local Key = _.KeyCode
						if Key == Enum.KeyCode.W then
							WDown = true end
						if Key == Enum.KeyCode.A then
							ADown = true end
						if Key == Enum.KeyCode.S then
							SDown = true end
						if Key == Enum.KeyCode.D then
							DDown = true end
						if Key == Enum.KeyCode.Space then
							SpaceDown = true end end end
				CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

				local CONUP
				local function KEYUP(_)
					if HumanDied then CONUP:Disconnect(); return end
					local Key = _.KeyCode
					if Key == Enum.KeyCode.W then
						WDown = false end
					if Key == Enum.KeyCode.A then
						ADown = false end
					if Key == Enum.KeyCode.S then
						SDown = false end
					if Key == Enum.KeyCode.D then
						DDown = false end
					if Key == Enum.KeyCode.Space then
						SpaceDown = false end end
				CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

				local function MoveClone(X,Y,Z)
					LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
					workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
				end

				coroutine.wrap(function() 
					while true do game:GetService("RunService").RenderStepped:Wait()
						if HumanDied then break end
						if WDown then MoveClone(0,0,1e4) end
						if ADown then MoveClone(1e4,0,0) end
						if SDown then MoveClone(0,0,-1e4) end
						if DDown then MoveClone(-1e4,0,0) end
						if SpaceDown then CloneChar["Humanoid"].Jump = true end
						if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
							workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
					end 
				end)()

				local con
				function UnCollide()
					if HumanDied then con:Disconnect(); return end
					for _,Parts in next, CloneChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false 
						end 
					end
					for _,Parts in next, DeadChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false
						end 
					end 
				end
				con = game:GetService("RunService").Stepped:Connect(UnCollide)

				local resetBindable = Instance.new("BindableEvent")
				resetBindable.Event:connect(function()
					game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
					resetBindable:Destroy()
					pcall(function()
						CloneChar.Humanoid.Health = 0
						DeadChar.Humanoid.Health = 0
					end)
				end)
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

				coroutine.wrap(function()
					while true do
						game:GetService("RunService").RenderStepped:wait()
						if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
							HumanDied = true
							pcall(function()
								game.Players.LocalPlayer.Character = CloneChar
								CloneChar:Destroy()
								game.Players.LocalPlayer.Character = DeadChar
								if resetBindable then
									game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
									resetBindable:Destroy()
								end
								DeadChar.Humanoid.Health = 0
							end)
							break
						end		
					end
				end)()

				SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))

				coroutine.wrap(function()
					while true do
						game:GetService("RunService").RenderStepped:wait()
						if HumanDied then break end
						DeadChar["Torso"].CFrame = CloneChar["Torso"].CFrame
					end
				end)()

				for _,v in next, DeadChar:GetChildren() do
					if v:IsA("Accessory") then
						SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
					end
				end

				for _,BodyParts in next, CloneChar:GetDescendants() do
					if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
						BodyParts.Transparency = 1 end end

				DeadChar.Torso["Left Shoulder"]:Destroy()
				DeadChar.Torso["Right Shoulder"]:Destroy()
				DeadChar.Torso["Left Hip"]:Destroy()
				DeadChar.Torso["Right Hip"]:Destroy()

			elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
				game:GetService("Players").LocalPlayer["Character"].Archivable = true 
				local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
				game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
				local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
				Instance.new("Part",FalseChar).Name = "Head" 
				Instance.new("Part",FalseChar).Name = "Torso" 
				Instance.new("Humanoid",FalseChar).Name = "Humanoid"
				game:GetService("Players").LocalPlayer["Character"] = FalseChar
				game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
				local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
				Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
				Clone.Name = "Humanoid"
				game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
				game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
				wait(5.65) 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
				CloneChar.Parent = workspace 
				CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
				wait() 
				CloneChar.Humanoid.BreakJointsOnDeath = false
				workspace.Camera.CameraSubject = CloneChar.Humanoid 
				CloneChar.Name = "non" 
				CloneChar.Humanoid.DisplayDistanceType = "None"
				if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
				if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

				FalseChar:Destroy()

				local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

				local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
				local CONVEC
				local function VECTORUNIT()
					if HumanDied then CONVEC:Disconnect(); return end
					local lookVec = workspace.Camera.CFrame.lookVector
					local Root = CloneChar["HumanoidRootPart"]
					LVecPart.Position = Root.Position
					LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
				end
				CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

				local CONDOWN
				local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
				local function KEYDOWN(_,Processed) 
					if HumanDied then CONDOWN:Disconnect(); return end
					if Processed ~= true then
						local Key = _.KeyCode
						if Key == Enum.KeyCode.W then
							WDown = true end
						if Key == Enum.KeyCode.A then
							ADown = true end
						if Key == Enum.KeyCode.S then
							SDown = true end
						if Key == Enum.KeyCode.D then
							DDown = true end
						if Key == Enum.KeyCode.Space then
							SpaceDown = true end end end
				CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

				local CONUP
				local function KEYUP(_)
					if HumanDied then CONUP:Disconnect(); return end
					local Key = _.KeyCode
					if Key == Enum.KeyCode.W then
						WDown = false end
					if Key == Enum.KeyCode.A then
						ADown = false end
					if Key == Enum.KeyCode.S then
						SDown = false end
					if Key == Enum.KeyCode.D then
						DDown = false end
					if Key == Enum.KeyCode.Space then
						SpaceDown = false end end
				CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

				local function MoveClone(X,Y,Z)
					LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
					workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
				end

				coroutine.wrap(function() 
					while true do game:GetService("RunService").RenderStepped:Wait()
						if HumanDied then break end
						if WDown then MoveClone(0,0,1e4) end
						if ADown then MoveClone(1e4,0,0) end
						if SDown then MoveClone(0,0,-1e4) end
						if DDown then MoveClone(-1e4,0,0) end
						if SpaceDown then CloneChar["Humanoid"].Jump = true end
						if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
							workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
					end 
				end)()

				local con
				function UnCollide()
					if HumanDied then con:Disconnect(); return end
					for _,Parts in next, CloneChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false 
						end 
					end
					for _,Parts in next, DeadChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false
						end 
					end 
				end
				con = game:GetService("RunService").Stepped:Connect(UnCollide)

				local resetBindable = Instance.new("BindableEvent")
				resetBindable.Event:connect(function()
					game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
					resetBindable:Destroy()
					CloneChar.Humanoid.Health = 0
				end)
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

				coroutine.wrap(function()
					while true do
						game:GetService("RunService").RenderStepped:wait()
						if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
							HumanDied = true
							pcall(function()
								game.Players.LocalPlayer.Character = CloneChar
								CloneChar:Destroy()
								game.Players.LocalPlayer.Character = DeadChar
								if resetBindable then
									game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
									resetBindable:Destroy()
								end
								DeadChar.Humanoid.Health = 0
							end)
							break
						end		
					end
				end)()

				SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

				for _,v in next, DeadChar:GetChildren() do
					if v:IsA("Accessory") then
						if v.Name == "PlainTail" then
							Tail = CloneChar[v.Name].Handle
						end
						SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
					end
				end

				for _,BodyParts in next, CloneChar:GetDescendants() do
					if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
						BodyParts.Transparency = 1 end end
			elseif Bypass == "hats" then
				game:GetService("Players").LocalPlayer["Character"].Archivable = true 
				local DeadChar = game.Players.LocalPlayer.Character
				DeadChar.Name = "non"
				local HatPosition = Vector3.new(0,0,0)
				local HatName = "MediHood"
				local HatsLimb = {
					Rarm = DeadChar:FindFirstChild("Hat1"),
					Larm = DeadChar:FindFirstChild("Pink Hair"),
					Rleg = DeadChar:FindFirstChild("Robloxclassicred"),
					Lleg = DeadChar:FindFirstChild("Kate Hair"),
					Torso1 = DeadChar:FindFirstChild("Pal Hair"),
					Torso2 = DeadChar:FindFirstChild("LavanderHair")
				}
				HatName = DeadChar:FindFirstChild(HatName)

				coroutine.wrap(function()
					while true do
						game:GetService("RunService").RenderStepped:wait()
						if not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
							HumanDied = true
							pcall(function()
								if resetBindable then
									game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
									resetBindable:Destroy()
								end
								DeadChar.Humanoid.Health = 0
							end)
							break
						end		
					end
				end)()

				local con
				function UnCollide()
					if HumanDied then con:Disconnect(); return end
					for _,Parts in next, DeadChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false
						end 
					end 
				end
				con = game:GetService("RunService").Stepped:Connect(UnCollide)

				SCIFIMOVIELOL(HatName.Handle,DeadChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(HatsLimb.Torso1.Handle,DeadChar["Torso"],Vector3.new(0.5,0,0),Vector3.new(90,0,0))
				SCIFIMOVIELOL(HatsLimb.Torso2.Handle,DeadChar["Torso"],Vector3.new(-0.5,0,0),Vector3.new(90,0,0))
				SCIFIMOVIELOL(HatsLimb.Larm.Handle,DeadChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
				SCIFIMOVIELOL(HatsLimb.Rarm.Handle,DeadChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
				SCIFIMOVIELOL(HatsLimb.Lleg.Handle,DeadChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))
				SCIFIMOVIELOL(HatsLimb.Rleg.Handle,DeadChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))

				for i,v in pairs(HatsLimb) do
					v.Handle:FindFirstChild("AccessoryWeld"):Destroy()
					if v.Handle:FindFirstChild("Mesh") then v.Handle:FindFirstChild("Mesh"):Destroy() end
					if v.Handle:FindFirstChild("SpecialMesh") then v.Handle:FindFirstChild("SpecialMesh"):Destroy() end
				end
				HatName.Handle:FindFirstChild("AccessoryWeld"):Destroy()
			end
		else
			if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
				game:GetService("Players").LocalPlayer["Character"].Archivable = true 
				local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
				CloneChar.Parent = workspace 
				CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
				CloneChar.Humanoid.BreakJointsOnDeath = false
				workspace.Camera.CameraSubject = CloneChar.Humanoid 
				CloneChar.Name = "non" 
				CloneChar.Humanoid.DisplayDistanceType = "None"
				if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
				if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

				local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
				DeadChar.HumanoidRootPart:Destroy()

				local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
				local CONVEC
				local function VECTORUNIT()
					if HumanDied then CONVEC:Disconnect(); return end
					local lookVec = workspace.Camera.CFrame.lookVector
					local Root = CloneChar["HumanoidRootPart"]
					LVecPart.Position = Root.Position
					LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
				end
				CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

				local CONDOWN
				local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
				local function KEYDOWN(_,Processed) 
					if HumanDied then CONDOWN:Disconnect(); return end
					if Processed ~= true then
						local Key = _.KeyCode
						if Key == Enum.KeyCode.W then
							WDown = true end
						if Key == Enum.KeyCode.A then
							ADown = true end
						if Key == Enum.KeyCode.S then
							SDown = true end
						if Key == Enum.KeyCode.D then
							DDown = true end
						if Key == Enum.KeyCode.Space then
							SpaceDown = true end end end
				CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

				local CONUP
				local function KEYUP(_)
					if HumanDied then CONUP:Disconnect(); return end
					local Key = _.KeyCode
					if Key == Enum.KeyCode.W then
						WDown = false end
					if Key == Enum.KeyCode.A then
						ADown = false end
					if Key == Enum.KeyCode.S then
						SDown = false end
					if Key == Enum.KeyCode.D then
						DDown = false end
					if Key == Enum.KeyCode.Space then
						SpaceDown = false end end
				CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

				local function MoveClone(X,Y,Z)
					LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
					workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
				end

				coroutine.wrap(function() 
					while true do game:GetService("RunService").RenderStepped:Wait()
						if HumanDied then break end
						if WDown then MoveClone(0,0,1e4) end
						if ADown then MoveClone(1e4,0,0) end
						if SDown then MoveClone(0,0,-1e4) end
						if DDown then MoveClone(-1e4,0,0) end
						if SpaceDown then CloneChar["Humanoid"].Jump = true end
						if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
							workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
					end 
				end)()

				local con
				function UnCollide()
					if HumanDied then con:Disconnect(); return end
					for _,Parts in next, CloneChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false 
						end 
					end
					for _,Parts in next, DeadChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false
						end 
					end 
				end
				con = game:GetService("RunService").Stepped:Connect(UnCollide)

				local resetBindable = Instance.new("BindableEvent")
				resetBindable.Event:connect(function()
					game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
					resetBindable:Destroy()
					CloneChar.Humanoid.Health = 0
				end)
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

				coroutine.wrap(function()
					while true do
						game:GetService("RunService").RenderStepped:wait()
						if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
							HumanDied = true
							pcall(function()
								game.Players.LocalPlayer.Character = CloneChar
								CloneChar:Destroy()
								game.Players.LocalPlayer.Character = DeadChar
								if resetBindable then
									game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
									resetBindable:Destroy()
								end
								DeadChar.Humanoid.Health = 0
							end)
							break
						end		
					end
				end)()

				for _,v in next, DeadChar:GetChildren() do
					if v:IsA("Accessory") then
						v:Clone().Parent = CloneChar
					end
				end

				for _,v in next, DeadChar:GetDescendants() do
					if v:IsA("Motor6D") and v.Name ~= "Neck" then
						v:Destroy()
					end
				end

				SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

				SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

				coroutine.wrap(function()
					while true do
						game:GetService("RunService").RenderStepped:wait()
						if HumanDied then break end
						DeadChar["UpperTorso"].CFrame = CloneChar["Torso"].CFrame * CFrame.new(0,0.2,0)
					end
				end)()

				for _,v in next, DeadChar:GetChildren() do
					if v:IsA("Accessory") then
						SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
					end
				end

				for _,BodyParts in next, CloneChar:GetDescendants() do
					if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
						BodyParts.Transparency = 1 end end

			elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
				game:GetService("Players").LocalPlayer["Character"].Archivable = true 
				local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
				game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
				local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
				Instance.new("Part",FalseChar).Name = "Head" 
				Instance.new("Part",FalseChar).Name = "UpperTorso"
				Instance.new("Humanoid",FalseChar).Name = "Humanoid"
				game:GetService("Players").LocalPlayer["Character"] = FalseChar
				game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
				local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
				Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
				Clone.Name = "Humanoid"
				game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
				game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
				wait(5.65) 
				game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
				CloneChar.Parent = workspace 
				CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
				wait() 
				CloneChar.Humanoid.BreakJointsOnDeath = false
				workspace.Camera.CameraSubject = CloneChar.Humanoid 
				CloneChar.Name = "non" 
				CloneChar.Humanoid.DisplayDistanceType = "None"
				if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
				if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

				FalseChar:Destroy()

				local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

				local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
				local CONVEC
				local function VECTORUNIT()
					if HumanDied then CONVEC:Disconnect(); return end
					local lookVec = workspace.Camera.CFrame.lookVector
					local Root = CloneChar["HumanoidRootPart"]
					LVecPart.Position = Root.Position
					LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
				end
				CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

				local CONDOWN
				local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
				local function KEYDOWN(_,Processed) 
					if HumanDied then CONDOWN:Disconnect(); return end
					if Processed ~= true then
						local Key = _.KeyCode
						if Key == Enum.KeyCode.W then
							WDown = true end
						if Key == Enum.KeyCode.A then
							ADown = true end
						if Key == Enum.KeyCode.S then
							SDown = true end
						if Key == Enum.KeyCode.D then
							DDown = true end
						if Key == Enum.KeyCode.Space then
							SpaceDown = true end end end
				CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

				local CONUP
				local function KEYUP(_)
					if HumanDied then CONUP:Disconnect(); return end
					local Key = _.KeyCode
					if Key == Enum.KeyCode.W then
						WDown = false end
					if Key == Enum.KeyCode.A then
						ADown = false end
					if Key == Enum.KeyCode.S then
						SDown = false end
					if Key == Enum.KeyCode.D then
						DDown = false end
					if Key == Enum.KeyCode.Space then
						SpaceDown = false end end
				CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

				local function MoveClone(X,Y,Z)
					LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
					workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
				end

				coroutine.wrap(function() 
					while true do game:GetService("RunService").RenderStepped:Wait()
						if HumanDied then break end
						if WDown then MoveClone(0,0,1e4) end
						if ADown then MoveClone(1e4,0,0) end
						if SDown then MoveClone(0,0,-1e4) end
						if DDown then MoveClone(-1e4,0,0) end
						if SpaceDown then CloneChar["Humanoid"].Jump = true end
						if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
							workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
					end 
				end)()

				local con
				function UnCollide()
					if HumanDied then con:Disconnect(); return end
					for _,Parts in next, CloneChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false 
						end 
					end
					for _,Parts in next, DeadChar:GetDescendants() do
						if Parts:IsA("BasePart") then
							Parts.CanCollide = false
						end 
					end 
				end
				con = game:GetService("RunService").Stepped:Connect(UnCollide)

				local resetBindable = Instance.new("BindableEvent")
				resetBindable.Event:connect(function()
					game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
					resetBindable:Destroy()
					CloneChar.Humanoid.Health = 0
				end)
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

				coroutine.wrap(function()
					while true do
						game:GetService("RunService").RenderStepped:wait()
						if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
							HumanDied = true
							pcall(function()
								game.Players.LocalPlayer.Character = CloneChar
								CloneChar:Destroy()
								game.Players.LocalPlayer.Character = DeadChar
								if resetBindable then
									game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
									resetBindable:Destroy()
								end
								DeadChar.Humanoid.Health = 0
							end)
							break
						end		
					end
				end)()

				for _,v in next, DeadChar:GetChildren() do
					if v:IsA("Accessory") then
						v:Clone().Parent = CloneChar
					end
				end

				SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

				SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
				SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

				SCIFIMOVIELOL(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

				for _,v in next, DeadChar:GetChildren() do
					if v:IsA("Accessory") then
						SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
					end
				end

				for _,BodyParts in next, CloneChar:GetDescendants() do
					if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
						BodyParts.Transparency = 1 end end
				if DeadChar.Head:FindFirstChild("Neck") then
					game.Players.LocalPlayer.Character:BreakJoints()
				end
			end
		end
		local CloneChar = workspace.non







		ArtificialHB = Instance.new('BindableEvent', script)
		ArtificialHB.Name = 'Heartbeat'
		script:WaitForChild('Heartbeat')
		frame = 1 / 60
		tf = 0
		allowframeloss = false
		tossremainder = false
		lastframe = tick()
		script.Heartbeat:Fire()

		game:GetService('RunService').Heartbeat:connect(function(s, p)
			tf = tf + s
			if tf >= frame then
				if allowframeloss then
					script.Heartbeat:Fire()
					lastframe = tick()
				else
					for i = 1, math.floor(tf / frame) do
						script.Heartbeat:Fire()
					end
					lastframe = tick()
				end
				if tossremainder then
					tf = 0
				else
					tf = tf - frame * math.floor(tf / frame)
				end
			end
		end)
		local makesound = function(soundid,speed,volume,parent)
			local sound = Instance.new("Sound")
			sound.SoundId = soundid
			sound.RollOffMaxDistance = 100
			sound.PlaybackSpeed =speed 
			sound.Volume = volume
			sound.Parent = parent
			return sound
		end
		local Callerp = function(Start,End,Percent)
			return (Start - (End - Start) * Percen)
		end
		function swait(t)
			game:GetService('RunService').Stepped:wait()
		end

		local TweenService = game:GetService("TweenService")
		local CF = CFrame.new
		local CFA = CFrame.Angles
		local head = CloneChar:WaitForChild("Head")
		local tors = CloneChar:WaitForChild("Torso")
		local huma = CloneChar:WaitForChild("Humanoid")
		huma.DisplayName = " "
		local neck = Instance.new("Weld",tors)
		neck.Part0 = tors
		neck.Part1 = head
		neck.C0 = CF(0,1.5,0)
		local nek = neck.C1
		neck.Enabled = true
		local root = CloneChar.HumanoidRootPart.RootJoint.C0
		local rs = tors["Right Shoulder"].C0
		local ls = tors["Left Shoulder"].C0
		local rh = tors["Right Hip"].C0
		local lh = tors["Left Hip"].C0
		local RootPart = CloneChar:WaitForChild("HumanoidRootPart")
		local Humanoid = CloneChar.Humanoid
		local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
		Humanoid.JumpPower = 80
		local Attacking = false
		local AttackANVal = 1
		local bambam = Instance.new("BodyThrust")
		bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		bambam.Force = Vector3.new(1000,0,1000)
		bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		rayCast = function(Pos, Dir, Max, Ignore)

			return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), (CloneChar and game.Players.LocalPlayer.Character))
		end
		Spawn(function()
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
					s = game:GetService("RunService").Heartbeat:connect(function()
						v.Velocity = Vector3.new(0,35,0)
						wait(0.3)
					end)
				end
			end
		end)
		spawn(function()
			repeat
				wait()
			until Humanoid.Health < 0.1
			s:Disconnect()
		end)
		if Tail ~= nil then
			TailWeld = Tail.AccessoryWeld

		else
			TailWeld = Instance.new("Weld",workspace)
			Msgreq("FE Neko Anims V1.6","Loading Without Tail Accessory (Check top of script for the accessory)",5,nil)
		end
		local TC0 = TailWeld.C0 * CFrame.new(0,0,0.4)
		local Song = Instance.new("Sound",RootPart)
		Song.SoundId = SongID
		Song.Looped = true
		Song:Play()
		local Running = false

		local MakeTween = function(timetack,easingstyle,easingdirection,repeats,flipflop)
			local newtween = TweenInfo.new(
				timetack, 
				easingstyle, 
				easingdirection, 
				repeats, 
				flipflop, 
				0 
			)
			return newtween
		end
		local DOTWEEN = function(Part,tim,value)
			local Tween = MakeTween(tim,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false)
			TweenService:Create(Part,Tween,{C0= value}):Play()
		end
		local LerpStyle = function(lerpmagnet,easingstyle,easingdirection)
			local newstyle = TweenService:GetValue(lerpmagnet,easingstyle,easingdirection)
			return newstyle
		end

		local SpinKick  = function()
			if Attacking == false then
				Attacking = true 
				for i = 0,60,1 do
					swait()
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(30),math.rad(0),math.rad(0)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-20)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(20)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-20 + -10)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-30 - -6)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
				end 
				bambam.Location = game.Players.LocalPlayer.Character.Torso.Position
				game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.Torso.Position
				RootPart.Anchored = true
				for i = 0,60,1 do
					swait()
					RootPart.Position = RootPart.Position + Vector3.new(0,0.6,0)
					bambam.Location = game.Players.LocalPlayer.Character["Right Leg"].Position
					game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.Torso.Position
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(-20 + -36*i),math.rad(0),math.rad(0)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.0,0,0) * CFA(math.rad(0),math.rad(30),math.rad(40)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(-30),math.rad(-40)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(50)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(30)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
				end 
				RootPart.Anchored = false
				Attacking = false
			end
		end


		local ComboCont = 1
		local Attack = function()
			if Attacking == false then
				Attacking = true
				if ComboCont == 1 then
					for i = 0,10,1 do
						swait()
						bambam.Location = game.Players.LocalPlayer.Character["Right Arm"].Position
						game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character["Right Arm"].Position
						neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(-30),math.rad(0),math.rad(80)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.5,0,-1.2) * CFA(math.rad(0),math.rad(90),math.rad(90)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(20)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(10)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(30)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					end 

					for i = 0,15,1 do
						swait()
						bambam.Location = game.Players.LocalPlayer.Character["Right Arm"].Position
						game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character["Right Arm"].Position
						neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,-3,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.5,0,0) * CFA(math.rad(0),math.rad(-85),math.rad(90)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(20)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(40)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(30)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					end
					ComboCont = 2


				elseif ComboCont == 2 then
					for i = 0,10,1 do
						swait()
						bambam.Location = game.Players.LocalPlayer.Character["Left Arm"].Position
						game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character["Left Arm"].Position
						neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(90),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(-30),math.rad(0),math.rad(90)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-12)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-90)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(10)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(30)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					end 

					for i = 0,10,1 do
						swait()
						bambam.Location = game.Players.LocalPlayer.Character["Left Arm"].Position
						game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character["Left Arm"].Position
						neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(-90),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,-3,0) * CFA(math.rad(0),math.rad(0),math.rad(-90)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-12)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0.5) * CFA(math.rad(0),math.rad(90),math.rad(-90)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(10)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(30)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					end 
					ComboCont = 3
				elseif ComboCont == 3 then
					for i = 0,10,1 do
						swait()
						bambam.Location = game.Players.LocalPlayer.Character["Right Leg"].Position
						game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character["Left Arm"].Position
						neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(10),math.rad(0),math.rad(-50)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-5)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(8)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(-50),math.rad(-98)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(20),math.rad(0)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					end 

					for i = 0,15,1 do
						swait()
						bambam.Location = game.Players.LocalPlayer.Character["Right Leg"].Position
						game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character["Left Arm"].Position
						neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(90),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,-3,0) * CFA(math.rad(-40),math.rad(0),math.rad(90)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-5)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(8)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(90),math.rad(-90+40)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(-90),math.rad(0)),LerpStyle(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
					end 
					ComboCont = 1
				end
				Attacking = false
			end
		end
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local B1Hold = false
		Mouse.Button1Down:Connect(function()
			B1Hold = true 
			while B1Hold == true do
				wait()
				Attack()
			end
		end)
		local Running = false
		Mouse.Button1Up:Connect(function()
			B1Hold = false
		end)
		Mouse.KeyDown:Connect(function(key)
			if key == "z" then
				SpinKick()
			else
				if key == "t" and Attacking == false then
					Attacking = true
					makesound("rbxassetid://6433451653",1,1,tors):Play()
					for i=0,100 do
						swait()
						neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad( -15 + math.rad(math.sin(time()*16)*15)),0,0),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
						RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(-10 +  math.sin(time()*16)*10),math.rad(0),math.rad(0)),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0.4 + math.sin(time()*17)*0.4,0) * CFA(0,math.rad(90),math.rad(123)),LerpStyle(0.07*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(10),0,math.rad(-90)),LerpStyle(0.07*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(-30 + math.sin(time()*17)*20),math.rad(-10 +  math.sin(time()*16)*10)),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(10 +  math.sin(time()*16)*-10)),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
						TailWeld.C0 = TailWeld.C0:Lerp(TC0 * CFrame.Angles(math.rad(-20 + math.sin(-time()*3.83)*-20),math.rad(-math.sin(time()*3.83/2)*24),0),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					end
					Attacking = false
				else
					if key == "r" and Attacking == false then
						Attacking = true
						while game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude < 0.1 do
							swait()
							game.Players.LocalPlayer.Character.HumanoidRootPart.Position = tors.Position
							neck.C1 = neck.C1:Lerp(nek * CF(0,-0.4,0) * CFA(math.rad(-90),math.rad(-math.cos(time()*3)*30),0),LerpStyle(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
							RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,-2.5) * CFA(math.rad(78),math.rad(math.sin(time()*3)*12),math.rad(math.rad(math.sin(time()*3)*40))),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.3,0.4 +0.4+math.sin(time()*3)*0.2,-0.4 -0.2+math.sin(time()*3)*0.2) * CFA(math.rad(-45)+math.rad(math.sin(time()*3)*12),math.rad(0),math.rad(180 - 10+math.cos(time()*3)*5)),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-0.3,0.4+0.4-math.sin(time()*3)*0.2,-0.4 -0.2+math.sin(time()*3)*0.2) * CFA(math.rad(-45)-math.rad(math.sin(time()*3)*12),math.rad(0),math.rad(-180 + 10 +math.cos(time()*3)*5)),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(-math.sin(time()*3)*12),math.rad(math.sin(time()*3)*30),math.rad(-12 - 50 + math.cos(time()*3)*30)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(-math.sin(time()*3)*12),math.rad(math.sin(time()*3)*30),math.rad(12 + 50 + math.cos(time()*3)*30)),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
							TailWeld.C0 = TailWeld.C0:Lerp(TC0 * CFrame.Angles(math.rad(0),0,math.rad(math.cos(time()*3)*40)),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))

						end
						Attacking = false
					else if key == "f" then
							if Running == false then
								Running = true 
								Humanoid.WalkSpeed = 40
							else
								Running = false
								Humanoid.WalkSpeed = 20
							end
						elseif key == "x" and Attacking == false and Mouse.Target.Parent:FindFirstChildWhichIsA("Humanoid") ~= nil then
							Attacking = true
							Camera = workspace.CurrentCamera
							Camera.CameraType = "Scriptable"
							local Target = Mouse.Target.Parent
							for i = 0,200,1 do
								swait()
								Camera.CFrame = Camera.CFrame:Lerp(CFrame.new((head.CFrame * CFrame.new(0,0,-5)).Position,head.CFrame.Position),1)
								neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(20),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(20),math.rad(0),math.rad(0)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,-0.5,0) * CFA(math.rad(-25),math.rad(0),math.rad(00)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,-0.5,0) * CFA(math.rad(-25),math.rad(0),math.rad(00)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(20+ -40)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-20+ -4)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
							end

							for i = 0,20,1 do
								swait()
								Camera.CFrame = Camera.CFrame:Lerp(CFrame.new((head.CFrame * CFrame.new(0,0,-3)).Position,head.CFrame.Position),1)
								neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(20),math.rad(0),math.rad(0)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,-0.5,0) * CFA(math.rad(-40),math.rad(0),math.rad(00)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,-0.5,0) * CFA(math.rad(-40),math.rad(0),math.rad(00)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(20+ -40)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-20+ -4)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
							end
							RootPart.CFrame = Target.HumanoidRootPart.CFrame * CFrame.new(0,0,-8)
							for i = 0,100,1 do
								swait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Target.HumanoidRootPart.Position
								Camera.CFrame = Camera.CFrame:Lerp(CFrame.new((head.CFrame * CFrame.new(-3,0,0)).Position,Target.HumanoidRootPart.CFrame.Position),0.2)
								neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.8,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,0) * CFA(math.rad(20),math.rad(0),math.rad(0)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,-0.5,0) * CFA(math.rad(-80),math.rad(0),math.rad(-20)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,-0.5,0) * CFA(math.rad(-80),math.rad(0),math.rad(20)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(20+ -40)),LerpStyle(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
								tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,0,0) * CFA(math.rad(0),math.rad(0),math.rad(-20+ -4)),LerpStyle(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
							end
							Attacking = false
							Camera.CameraType = "Custom"
						end
					end
				end
			end
		end)
		local RLA = CFrame.new(0,0,0)

		local Anim = "Idle"



		Humanoid.WalkSpeed = 20
		Msgreq("FE Neko Anims V1.6","FE Neko Animations Loaded, have fun - Made by Creo",5,nil)
		while true do
			swait()
			hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 0.5, 0)).lookVector, 4, CloneChar)
			local torvel = (game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Vector3.new(1, 0, 1)).magnitude
			local velderp = RootPart.Velocity.y
			if RootPart.Velocity.y > 0 and hitfloor == nil then
				Anim = "Jumping"

			elseif RootPart.Velocity.y < 0 and hitfloor == nil then
				Anim = "Falling"
			elseif torvel < .5 and hitfloor ~= nil  then
				Anim = "Idle"
			elseif torvel > .5 and  hitfloor ~= nil  then
				Anim = "Walking"
			end
			local W1 = game.Players.LocalPlayer.Character.Humanoid.MoveDirection* RootPart.CFrame.LookVector
			local W2 = game.Players.LocalPlayer.Character.Humanoid.MoveDirection* RootPart.CFrame.RightVector
			WVA = W1.X+W1.Z
			RLV = W2.X+W2.Z


			if Attacking == false then
				game.Players.LocalPlayer.Character.HumanoidRootPart.Position = tors.Position
				if Anim == "Falling" then
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0.3) * CFA(math.rad(20),0,0),LerpStyle(0.4,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root *CF(0,0,0) * CFA(0,0,0),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(math.rad(-40),0,math.rad(5)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(math.rad(-40),0,math.rad(-5)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.4,0.8,0) * CFA(0,0,math.rad(10)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0.4,0.5,0)  * CFA(0,0,math.rad(50)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
				elseif Anim == "Jumping" then
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0.3) * CFA(math.rad(-20),0,0),LerpStyle(0.4,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root *CF(0,0,0) * CFA(0,0,0),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0,0,0) * CFA(0,math.rad(-40),math.rad(-20)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0,0,0) * CFA(0,math.rad(40),math.rad(20)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.4,0.8,0) * CFA(0,0,math.rad(-10)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0.4,0.5,0)  * CFA(0,0,math.rad(-50)),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
				elseif Anim == "Idle" then
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(7+math.cos(time()*3.83)*-5 + (-6 + math.sin(time()*3.83)*6 )),math.rad(-24) + math.rad( math.sin((time()*3.83)/2)*10),math.rad(-math.cos((time()*3.83)/2)*13)),LerpStyle(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root * CF(0,0,math.cos((time()*3.83))/10) * CFA(math.rad(0),math.rad(0),math.rad(0)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-0.1,math.cos((time()*3.83))/10,0) * CFA(math.rad(-5)- -math.sin((-time()*3.83))/8.7,math.rad(0),math.rad(5)+math.cos((-time()*3.83))/8.7),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(0.1,math.cos((time()*3.83))/10,0) * CFA(math.rad(-5)- -math.sin((-time()*3.83))/8.7,math.rad(0),math.rad(-5)-math.cos((-time()*3.83))/8.7),LerpStyle(0.3*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,-math.cos((time()*3.83))/8,0) * CFA(math.rad(-4),math.rad(-12),math.rad(8)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,-math.cos((time()*3.83))/8,0) * CFA(math.rad(-1),math.rad(7),math.rad(2)),LerpStyle(0.4*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					TailWeld.C0 = TailWeld.C0:Lerp(TC0 * CFrame.Angles(math.rad(-20 + math.sin(-time()*3.83)*-20),math.rad(-math.sin(time()*3.83/2)*24),0),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				elseif Anim == "Walking" and Running == false then
					RLA =  CFrame.new((math.sin((time()*8))/1)*0.5 *WVA,0.3*(1-WVA),(math.sin((time()*8))/1)*0.5 *RLV) * CFrame.Angles((-math.sin((time()*8))/1.5)*RLV,0,(math.sin((time()*8))/1.2)*WVA)
					LLA =  CFrame.new((math.sin((time()*8))/1)*0.5 *WVA,0.3*(1-WVA),(math.sin((time()*8))/1)*0.5 *RLV) * CFrame.Angles((-math.sin((time()*8))/1.5)*RLV,0,(math.sin((time()*8))/1.2)*WVA)
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(math.rad(7),math.clamp(math.cos((time()*8))*0.2 + math.rad(-RootPart.RotVelocity.Y*8),math.rad(-85),math.rad(85)),math.rad(-RootPart.RotVelocity.Y*0.4)),LerpStyle(0.4,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root *CF(0,-math.sin((time()*8*2))/3.2,-math.sin((time()*8*2))/3) * CFA(math.rad( -15 + 10 + WVA*15) + -math.rad(math.sin(time() *(8*2))*10),math.clamp( math.rad(0) - -RootPart.RotVelocity.Y/50,math.rad(-20),math.rad(20)),math.cos((time()*8))*0.2),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(-math.sin((time()*8))/4.5,0,0) * CFA(math.rad(-5),-math.sin((time()*8))*0.1 + math.rad(RootPart.RotVelocity.Y*3),-math.sin((time()*8))*0.4),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-math.sin((time()*8))/4.5,0,0) * CFA(math.rad(-5),-math.sin((time()*8))*0.1 + math.rad(RootPart.RotVelocity.Y*3),-math.sin((time()*8))*0.4),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0,(math.cos((time()*8))/8),0) * RLA * CFA(0, (-math.sin((time()*8))*0.5)*WVA,math.rad( -15 + 10 + WVA*15) + -math.rad(math.sin(time() *(8*2))*10)),LerpStyle(0.2,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(0,(-math.cos((time()*8))/8),0) * LLA * CFA(0, (-math.sin((time()*8))*0.5)*WVA,-math.rad( -15 + 10 + WVA*15) + math.rad(math.sin(time() *(8*2))*10)),LerpStyle(0.2,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					TailWeld.C0 = TailWeld.C0:Lerp(TC0 * CFrame.Angles(math.rad(-30 + math.sin(-time()*8)*-20),0,-math.rad(-math.sin(time()*8/2)*20 + RLV*2)),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				elseif Anim == "Walking" and Running == true then
					RLA =  CFrame.new(0,(0.5 + math.cos(time()*15)*0.5)*WVA+ 0.2,(0.5 - math.cos(time()*15)*0.5)*RLV+ 0.2) * CFrame.Angles(0,-math.rad(math.sin(time()*15)*80)*RLV,math.rad(math.sin(time()*15)*80)*WVA)
					LLA =  CFrame.new(0,(0.5 + math.cos(time()*15)*0.5)*WVA- 0.2,(-0.5 + math.cos(time()*15)*0.5)*RLV- 0.2) * CFrame.Angles(0,-math.rad(math.sin(time()*15)*80)*RLV,math.rad(-math.sin(time()*15)*80)*WVA)
					RAA = CFrame.new(0,0.8 + math.sin(time()*15)*0.9*WVA,math.sin(time()*15)*0.9*RLV) * CFrame.Angles(0,math.rad(-math.cos(time()*15)*85)*RLV,math.rad(math.cos(time()*15)*85)*WVA)
					LAA = CFrame.new(0,0.8 + math.sin(time()*15)*0.9*WVA,math.sin(time()*15)*0.9*-RLV) * CFrame.Angles(0,math.rad(-math.cos(time()*15)*85)*RLV,math.rad(-math.cos(time()*15)*85)*WVA)
					neck.C1 = neck.C1:Lerp(nek * CF(0,0,0) * CFA(0,math.rad(-RootPart.RotVelocity.Y*5),0),LerpStyle(0.4,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					RootPart.RootJoint.C0 = RootPart.RootJoint.C0:Lerp(root *CF((-1 - math.sin(time()*15)*2)*RLV,(-1 - math.sin(time()*15)*2)*WVA,-1 + 0.5 -math.sin(time()*15)*0.8) * CFA(math.rad(80 - math.cos(time()*15)*20),0,0),LerpStyle(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Shoulder"].C0 = tors["Right Shoulder"].C0:Lerp(rs * CF(0.6+ math.sin(time()*15)*1,0,-0.6)* RAA * CFA(math.rad(-10 - -math.cos(time()*15*2)*10),0,math.rad(80)),LerpStyle(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Left Shoulder"].C0 = tors["Left Shoulder"].C0:Lerp(ls * CF(-0.6+ -math.sin(time()*15)*1,0,-0.6) * LAA * CFA(math.rad(-10 - -math.cos(time()*15*2)*10),0,math.rad(-80)),LerpStyle(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.InOut))
					tors["Right Hip"].C0 = tors["Right Hip"].C0:Lerp(rh * CF(0.4 + -math.cos(time()*15)*0.9,0,0) * RLA * CFA(0, 0,math.rad(50)),LerpStyle(0.6,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					tors["Left Hip"].C0 = tors["Left Hip"].C0:Lerp(lh * CF(-0.4+ math.cos(time()*15)*0.9,0,0) * LLA * CFA(0, 0,math.rad(-80)),LerpStyle(0.6,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
					TailWeld.C0 = TailWeld.C0:Lerp(TC0 * CFrame.new(0,0.7,0.3) * CFrame.Angles(math.rad(-110 + math.sin(-time()*15)*-20),-math.rad(RLV*30),0),LerpStyle(0.1*1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut))
				end
			end
		end
	end
})

------------------------------------------------------------------------------------------------------------------------------------------------
--Fling------------------------------------------------------------------------------------------------------------------------------------------

Tab4:AddButton({
	Name = "Zommbie FE Script",
	Callback = function()
		loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7668ee0c4e1b352d8ac51efd6ed6f3fc/raw/d6421d586bf9b5d2e3fc0ebf14203c849494ec5f/FE%2520Zombie'))()
	end
})

Tab4:AddButton({
	Name = "Saitama FE SCRIPT",
	Callback = function()
		--Saitama
		--Made by mugaga#2801
		--For The Script To Execute You Need:
		--https://web.roblox.com/catalog/6470135113/Fan-Hand-Sign-Why-Dont-We-WDW
		--R - Main Idle
		--E - Barrage
		--Click - Punch
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
		if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
		game:GetService("RunService").Heartbeat:connect(function()
		v.Velocity = Vector3.new(0,35,0)
		wait(0.5)
		end)
		end
		end

		game:GetService("StarterGui"):SetCore("SendNotification", { 
				Title = "Notification";
				Text = "Netless activated";
				Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
		Duration = 16;
		local HatChar = game.Players.LocalPlayer.Character
		local Hat = HatChar:FindFirstChild("WDW_FoamFinger")

		Hat.Handle.SpecialMesh:Destroy()




		HumanDied = false
		local reanim
		function noplsmesh(hat)
		_G.OldCF=workspace.Camera.CFrame
		oldchar=game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
		for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
		if v:IsA('Mesh') or v:IsA('SpecialMesh') then
		v:Remove()
		end
		end
		game.Players.LocalPlayer.Character=oldchar
		wait()
		workspace.Camera.CFrame=_G.OldCF
		game.Players.LocalPlayer.Character=oldchar
		end
		_G.ClickFling=false -- Set this to true if u want.
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/OofHead-FE/nexo-before-deleted/main/NexoPD'),true))()

		IT = Instance.new
		CF = CFrame.new
		VT = Vector3.new
		RAD = math.rad
		C3 = Color3.new
		UD2 = UDim2.new
		BRICKC = BrickColor.new
		ANGLES = CFrame.Angles
		EULER = CFrame.fromEulerAnglesXYZ
		COS = math.cos
		ACOS = math.acos
		SIN = math.sin
		ASIN = math.asin
		ABS = math.abs
		MRANDOM = math.random
		FLOOR = math.floor

		speed = 1
		sine = 1
		srv = game:GetService('RunService')

		function hatset(yes,part,c1,c0,nm)
		reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
		reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
		reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
		if nm==true then
		noplsmesh(yes)
		end
		end

		--put the hat script converted below

		reanim = game.Players.LocalPlayer.Character.CWExtra.NexoPD
		RJ = reanim.HumanoidRootPart.RootJoint
		RS = reanim.Torso['Right Shoulder']
		LS = reanim.Torso['Left Shoulder']
		RH = reanim.Torso['Right Hip']
		LH = reanim.Torso['Left Hip']
		Root = reanim.HumanoidRootPart
		NECK = reanim.Torso.Neck
		NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
		LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

		Mode='1'

		mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
		if k == 'r' then-- first mode
		Mode='1'
		elseif k == 'e' then-- second mode
		Mode='2'
		elseif k == 'urkeybind' then-- third mode
		Mode='3'
		end
		end)



		attacklol=game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
		Mode='Attack0'
		wait(1) -- Time Of Attack
		Mode='Attack1'
		end)



		coroutine.wrap(function()
		while true do -- anim changer
		if HumanDied then mousechanger:Disconnect() break end
		sine = sine + speed
		local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
		local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
		local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
		local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
		local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
		local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
		if lookvector > reanim.Humanoid.WalkSpeed then
		lookvector = reanim.Humanoid.WalkSpeed
		end
		if lookvector < -reanim.Humanoid.WalkSpeed then
		lookvector = -reanim.Humanoid.WalkSpeed
		end
		if rightvector > reanim.Humanoid.WalkSpeed then
		rightvector = reanim.Humanoid.WalkSpeed
		end
		if rightvector < -reanim.Humanoid.WalkSpeed then
		rightvector = -reanim.Humanoid.WalkSpeed
		end
		local lookvel = lookvector / reanim.Humanoid.WalkSpeed
		local rightvel = rightvector / reanim.Humanoid.WalkSpeed
		if Mode == '1' then
		if Root.Velocity.y > 1 then -- jump
		--jump clerp here
		elseif Root.Velocity.y < -1 then -- fall
		--fall clerp here
		elseif Root.Velocity.Magnitude < 2 then -- idle
		NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+10*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+10.4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-33+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+3*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		elseif Root.Velocity.Magnitude < 20 then -- walk
		NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+10*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-10.4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-30*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+20*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(34+15*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		elseif Root.Velocity.Magnitude > 20 then -- run
		--run clerp here
		end
		elseif Mode == '2' then
		if Root.Velocity.y > 1 then -- jump
		--jump clerp here
		elseif Root.Velocity.y < -1 then -- fall
		--fall clerp here
		elseif Root.Velocity.Magnitude < 2 then -- idle
		NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-37+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RS.C0 = RS.C0:Lerp(CF(0+3*math.cos(sine/1),1+-2*math.cos(sine/1),0+8*math.cos(sine/1))*ANGLES(RAD(130+10*math.cos(sine/1)),RAD(32+0*math.cos(sine/1)),RAD(-26+0*math.cos(sine/1))),.3)
		LS.C0 = LS.C0:Lerp(CF(0+5*math.cos(sine/1),0.5+4*math.cos(sine/1),0+-7*math.cos(sine/1))*ANGLES(RAD(94+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1))),.3)
		RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),0+-0.1*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.5+0*math.cos(sine/2),-0.6+0*math.cos(sine/2))*ANGLES(RAD(36+15*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
		elseif Root.Velocity.Magnitude < 20 then -- walk
		NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-37+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RS.C0 = RS.C0:Lerp(CF(0+3*math.cos(sine/1),1+-2*math.cos(sine/1),0+8*math.cos(sine/1))*ANGLES(RAD(130+10*math.cos(sine/1)),RAD(32+0*math.cos(sine/1)),RAD(-26+0*math.cos(sine/1))),.3)
		LS.C0 = LS.C0:Lerp(CF(0+5*math.cos(sine/1),0.5+4*math.cos(sine/1),0+-7*math.cos(sine/1))*ANGLES(RAD(94+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1))),.3)
		RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),0+-0.1*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.5+0*math.cos(sine/2),-0.6+0*math.cos(sine/2))*ANGLES(RAD(36+15*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
		elseif Root.Velocity.Magnitude > 20 then -- run
		--run clerp here
		end
		elseif Mode == '3' then
		if Root.Velocity.y > 1 then -- jump
		--jump clerp here
		elseif Root.Velocity.y < -1 then -- fall
		--fall clerp here
		elseif Root.Velocity.Magnitude < 2 then -- idle
		--idle clerp here
		elseif Root.Velocity.Magnitude < 20 then -- walk
		--walk clerp here
		elseif Root.Velocity.Magnitude > 20 then -- run
		--run clerp here
		end
		elseif Mode == 'Attack0' then
		NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(-37+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.3)
		RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(105+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13))),.3)
		LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(101+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-44+0*math.cos(sine/13))),.3)
		RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(18+0*math.cos(sine/13)),RAD(-51+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13))),.3)
		LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.3)
		reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.6+0*math.cos(sine/2),-0.5+0*math.cos(sine/2))*ANGLES(RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
		elseif Mode == 'Attack1' then
		NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(-30+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(101+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13))),.3)
		LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(105+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
		RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
		LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13))),.3)
		reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.6+0*math.cos(sine/2),-0.5+0*math.cos(sine/2))*ANGLES(RAD(21+2*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
		end
		srv.RenderStepped:Wait()
		end
		end)()

		--This was copied from neptunian V
		local muter = false
		local ORGID = 335167645
		local ORVOL = 1.15
		local ORPIT = 1.01
		local kan = Instance.new("Sound",char)
		kan.Volume = 0
		if not NoSound then
				kan.Volume = 1.15
		end
		kan.TimePosition = 0
		kan.PlaybackSpeed = 1.01
		kan.Pitch = 1.01
		kan.SoundId = "rbxassetid://335167645"
		kan.Name = "Saitama"
		kan.Looped = true
		kan:Play()
		--Created using Nexo Animator
	end
})

Tab4:AddButton({
	Name = "Mage Fe Script ",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/65b0QecR"))()
	end
})

Tab4:AddButton({
	Name = "Mouse fling (Better Keyboard Required Arceus) Key E",
	Callback = function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
			game:GetService("RunService").Heartbeat:connect(function()
			v.Velocity = Vector3.new(0,-30,0)
			wait(0.5)
			end)
			end
			end
			
			function rmesh(HatName)
			for _,mesh in next, workspace[game.Players.LocalPlayer.Name][HatName]:GetDescendants() do
			if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
			mesh:Remove()
			end
			end
			end
			
			function create(part, parent, position, rotation)
			part.AccessoryWeld:Remove()
			Instance.new("Attachment",part)
			Instance.new("AlignPosition",part)
			Instance.new("AlignOrientation",part)
			Instance.new("Attachment",parent)
			part.AlignPosition.Attachment0 = part.Attachment
			part.AlignOrientation.Attachment0 = part.Attachment
			part.AlignPosition.Attachment1 = parent.Attachment
			part.AlignOrientation.Attachment1 = parent.Attachment
			part.Attachment.Position = position
			part.Attachment.Orientation = rotation
			part.AlignPosition.Responsiveness = 200
			part.AlignOrientation.Responsiveness = 200
			part.AlignPosition.MaxForce = 9999999
			part.AlignPosition.RigidityEnabled = false
			part.AlignOrientation.MaxTorque = 9999999
			end
			
			local LocalPlayer = game.Players.LocalPlayer
			
			function eswait(num)
			if num == 0 or num == nil then
			game:service("RunService").Stepped:wait(0)
			else
			for i = 0, num do
			game:service("RunService").Stepped:wait(0)
			end
			end
			end
			
			function makepart(hat,part)
			Instance.new('Part',workspace[LocalPlayer.Name])
			workspace[LocalPlayer.Name].Part.Name = 'lerp'..hat
			workspace[LocalPlayer.Name]['lerp'..hat].CanCollide = false
			workspace[LocalPlayer.Name]['lerp'..hat].Size = workspace[LocalPlayer.Name][hat].Handle.Size
			workspace[LocalPlayer.Name]['lerp'..hat].Transparency = 1
			Instance.new('Weld',workspace[LocalPlayer.Name]['lerp'..hat])
			create(workspace[LocalPlayer.Name][hat].Handle,workspace[LocalPlayer.Name]['lerp'..hat],Vector3.new(),Vector3.new())
			workspace[LocalPlayer.Name]['lerp'..hat].Weld.Part0 = workspace[LocalPlayer.Name]['lerp'..hat]
			workspace[LocalPlayer.Name]['lerp'..hat].Weld.Part1 = workspace[LocalPlayer.Name][part]
			workspace[LocalPlayer.Name]['lerp'..hat].Weld.C0 = workspace[LocalPlayer.Name]['lerp'..hat].CFrame:inverse() * workspace[LocalPlayer.Name][part].CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),0)
			end
			
			local hatsine = 0
			
			local hatchange = 1
			
			function clerp(hat,ppx,ppy,pppz,rrrx,rrry,rrz,lppx,lppy,lpppz,lrrrx,lrrry,lrrz,speed)
			coroutine.wrap(function()
			while true do
			hatsine = hatsine + speed
			workspace[game.Players.LocalPlayer.Name]['lerp'..hat].Weld.C0 = workspace[game.Players.LocalPlayer.Name]['lerp'..hat].Weld.C0:lerp(CFrame.new(ppx + lppx * math.sin(hatsine/11), ppy + lppy * math.sin(hatsine/11), pppz + lpppz * math.sin(hatsine/11)) * CFrame.Angles(math.rad(rrrx + lrrrx * math.sin(hatsine/11)), math.rad(rrry + lrrry * math.sin(hatsine/11)), math.rad(rrz + lrrz * math.sin(hatsine/11))),0.1)
			eswait()
			end
			end)()
			end
			
			local player = game.Players.LocalPlayer
			local character1 = player.Character
			local mouse = player:GetMouse()
			
			local fakebody = Instance.new("Part", character1)
			fakebody.Transparency = 1
			fakebody.Anchored = true
			fakebody.CanCollide = false
			fakebody.Position = character1.Head.Position
			fakebody.Name = "FPart"
			wait()
			_G.ReanimationType = "PDeath" --PDeath, Fling, Simple
			_G.Velocity = Vector3.new(36,0,0)
			_G.FlingBlock = true
			_G.FlingBlockTransparency = 1
			_G.HighlightFlingBlock = true
			_G.FlingBlockPosition = "FPart"
			_G.HighlightFlingBlockColor = Color3.fromRGB(255,0,0)
			
			loadstring(game:HttpGet("https://raw.githubusercontent.com/GelatekWasTaken/Reanimation.lua/main/Main/Main.lua"))()
			wait(1)
			
			mouse.KeyDown:connect(function(key)
				if key == "e" then
				character1.Reanimate.FPart.Position = mouse.Hit.p
				end
			end)
			
			rmesh('Pink Hair')
			rmesh('Kate Hair')
			
			makepart('Kate Hair','Right Arm')
			clerp('Kate Hair',0,1,0,0,0,0,0,0,0,0,0,0,1)
			
			makepart('Pink Hair','Right Arm')
			clerp('Pink Hair',0,0.5,-2,-90,0,0,0,0,0,0,0,0,1)
			
			local Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
			local Speed = 20*Scale
			local Gravity = 0.1
			
			local Player = game.Players.LocalPlayer
			local Character = Player.Character.Reanimate
			local Humanoid = Character.Humanoid
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
			local Torso = Character.HumanoidRootPart
			local Mouse = game.Players.LocalPlayer:GetMouse()
			local RenderStepped = game:GetService("RunService").RenderStepped
			local Camera = Workspace.CurrentCamera
			Camera:ClearAllChildren()
			local Model = Instance.new("Model",Character)
			local IgnoreList = {Character,Workspace.Terrain}
			
			local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
			local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
			local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
			local Gangster = false
			
			local Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
			local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
			local RotationOffsetHead = CFrame.Angles(0,0,0)
			
			local Handle = Instance.new("Part",Model)
			Handle.CanCollide = false
			Handle.Name = "Handle"
			Handle.Position = Vector3.new(0,100,0)
			Handle:BreakJoints()
			Handle.FormFactor = "Custom"
			Handle.Size = Vector3.new(0.2,0.2,0.2)
			Handle.TopSurface = "SmoothNoOutlines"
			Handle.BottomSurface = "SmoothNoOutlines"
			Handle.FrontSurface = "SmoothNoOutlines"
			Handle.BackSurface = "SmoothNoOutlines"
			Handle.RightSurface = "SmoothNoOutlines"
			Handle.LeftSurface = "SmoothNoOutlines"
			Handle.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Handle)
			Mesh.Scale = Vector3.new(0.25,1,0.4) / 0.2 * Scale
			local HandleWeld = Instance.new("Motor6D")
			HandleWeld.Part0 = Character["Right Arm"]
			HandleWeld.Part1 = Handle
			HandleWeld.C0 = CFrame.new(Vector3.new(0,-1,0)*Scale) * CFrame.Angles(math.rad(-105),0,0)
			HandleWeld.Parent = Handle
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("CylinderMesh",Part)
			Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("CylinderMesh",Part)
			Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("CylinderMesh",Part)
			Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("CylinderMesh",Part)
			Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,-0.175)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,0.175)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(-0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.1,0.3,0.05) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.25,-0.75)*Scale) * CFrame.Angles(math.rad(-10),0,0)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.1,0.05,0.625) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.1,-0.435)*Scale)
			PartWeld.Parent = Part
			
			for i = 0,80,10 do
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.25,0.15,0.03555*2) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0,0.15,0.315)*Scale) * CFrame.Angles(math.rad(i-65),0,0) * CFrame.new(Vector3.new(0,0.2,0)*Scale)
			PartWeld.Parent = Part
			end
			
			local Barrel = Instance.new("Part",Model)
			Barrel.CanCollide = false
			Barrel.Position = Vector3.new(0,100,0)
			Barrel:BreakJoints()
			Barrel.FormFactor = "Custom"
			Barrel.Size = Vector3.new(0.2,0.2,0.2)
			Barrel.TopSurface = "SmoothNoOutlines"
			Barrel.BottomSurface = "SmoothNoOutlines"
			Barrel.FrontSurface = "SmoothNoOutlines"
			Barrel.BackSurface = "SmoothNoOutlines"
			Barrel.RightSurface = "SmoothNoOutlines"
			Barrel.LeftSurface = "SmoothNoOutlines"
			Barrel.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Barrel)
			Mesh.Scale = Vector3.new(0.25,0.2,2) / 0.2 * Scale
			local BarrelWeld = Instance.new("Motor6D")
			BarrelWeld.Part0 = Handle
			BarrelWeld.Part1 = Barrel
			BarrelWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.5,-0.7)*Scale)
			BarrelWeld.Parent = Barrel
			
			local Barrel1 = Barrel
			
			local Barrel2 = Instance.new("Part",Model)
			Barrel2.CanCollide = false
			Barrel2.Position = Vector3.new(0,100,0)
			Barrel2:BreakJoints()
			Barrel2.FormFactor = "Custom"
			Barrel2.Size = Vector3.new(0.2,0.2,0.2)
			Barrel2.TopSurface = "SmoothNoOutlines"
			Barrel2.BottomSurface = "SmoothNoOutlines"
			Barrel2.FrontSurface = "SmoothNoOutlines"
			Barrel2.BackSurface = "SmoothNoOutlines"
			Barrel2.RightSurface = "SmoothNoOutlines"
			Barrel2.LeftSurface = "SmoothNoOutlines"
			Barrel2.BrickColor = BrickColor.new("Really black")
			local Mesh = Instance.new("BlockMesh",Barrel2)
			Mesh.Scale = Vector3.new(0.25,0.25,2) / 0.2 * Scale
			local Barrel2Weld = Instance.new("Motor6D")
			Barrel2Weld.Part0 = Barrel
			Barrel2Weld.Part1 = Barrel2
			Barrel2Weld.C0 = CFrame.new(Vector3.new(0,0.225,0)*Scale)
			Barrel2Weld.Parent = Barrel2
			
			local RealBarrel = Instance.new("Part",Model)
			RealBarrel.CanCollide = false
			RealBarrel.Position = Vector3.new(0,100,0)
			RealBarrel:BreakJoints()
			RealBarrel.FormFactor = "Custom"
			RealBarrel.Size = Vector3.new(0.2,0.2,0.2)
			RealBarrel.TopSurface = "SmoothNoOutlines"
			RealBarrel.BottomSurface = "SmoothNoOutlines"
			RealBarrel.FrontSurface = "SmoothNoOutlines"
			RealBarrel.BackSurface = "SmoothNoOutlines"
			RealBarrel.RightSurface = "SmoothNoOutlines"
			RealBarrel.LeftSurface = "SmoothNoOutlines"
			RealBarrel.BrickColor = BrickColor.new("Dark grey metallic")
			local Mesh = Instance.new("CylinderMesh",RealBarrel)
			Mesh.Scale = Vector3.new(0.2,2,0.2) / 0.2 * Scale
			local RealBarrelWeld = Instance.new("Motor6D")
			RealBarrelWeld.Part0 = Barrel
			RealBarrelWeld.Part1 = RealBarrel
			RealBarrelWeld.C0 = CFrame.new(Vector3.new(0,0.1,-0.01)*Scale) * CFrame.Angles(math.rad(-90),0,0)
			RealBarrelWeld.Parent = RealBarrel
			
			for i = 1,75,15 do
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.05,0.065,0.05) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Handle
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0,0.525,-0.515)*Scale) * CFrame.Angles(math.rad(i),0,0) * CFrame.new(Vector3.new(0,0,0.2)*Scale)
			PartWeld.Parent = Part
			end
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Really black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Barrel2
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0.06,0.135,0.925)*Scale)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Really black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Barrel2
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(-0.06,0.135,0.925)*Scale)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Really black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.025,0.1,0.1) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Barrel2
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0,0.135,-0.925)*Scale)
			PartWeld.Parent = Part
			
			local Part = Instance.new("Part",Model)
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.Transparency = 1
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Really black")
			local Mesh = Instance.new("BlockMesh",Part)
			Mesh.Scale = Vector3.new(0.1,0.1,0.1) / 0.2 * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = Barrel
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0,0,-5)*Scale)
			PartWeld.Parent = Part
			
			local Light = Instance.new("PointLight",Part)
			Light.Color = BrickColor.new("Gold").Color
			Light.Enabled = true
			Light.Shadows = true
			Light.Brightness = 0
			Light.Range = 6
			
			local Part = Instance.new("Part",Model)
			Part.Material = "Neon"
			Part.CanCollide = false
			Part.Position = Vector3.new(0,100,0)
			Part:BreakJoints()
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2,0.2,0.2)
			Part.TopSurface = "SmoothNoOutlines"
			Part.BottomSurface = "SmoothNoOutlines"
			Part.FrontSurface = "SmoothNoOutlines"
			Part.BackSurface = "SmoothNoOutlines"
			Part.RightSurface = "SmoothNoOutlines"
			Part.LeftSurface = "SmoothNoOutlines"
			Part.BrickColor = BrickColor.new("Bright yellow")
			Part.Transparency = 0.25
			local RecoilMesh = Instance.new("SpecialMesh",Part)
			RecoilMesh.MeshType = "FileMesh"
			RecoilMesh.MeshId = "http://www.roblox.com/Asset/?id=1323306"
			RecoilMesh.TextureId = "http://www.roblox.com/Asset/?id=98896228"
			RecoilMesh.Scale = Vector3.new(0.175,0,0.175) * Scale
			local PartWeld = Instance.new("Motor6D")
			PartWeld.Part0 = RealBarrel
			PartWeld.Part1 = Part
			PartWeld.C0 = CFrame.new(Vector3.new(0,0.95,0)*Scale)
			PartWeld.Parent = Part
			
			function ShootBullet(Target,barrel)
			local barrel = barrel or Barrel
			local Bullet = Instance.new("Part",Workspace)
			Barrel.CanCollide = false
			Bullet.FormFactor = "Custom"
			Bullet.Size = Vector3.new(0.2,0.2,5)*Scale
			Bullet.TopSurface = "Smooth"
			Bullet.BottomSurface = "Smooth"
			Bullet.Anchored = true
			Bullet.CanCollide = false
			Bullet.CFrame = CFrame.new((barrel.CFrame*CFrame.new(0,0,-barrel.Size.Z*barrel.Mesh.Scale.Z/2)).p,Target)*CFrame.new(0,0,-Bullet.Size.Z/2)
			Bullet.Transparency = 0.1
			Bullet.BrickColor = BrickColor.new("Gold")
			--[[local Mesh = Instance.new("SpecialMesh",Bullet)
			Mesh.MeshType = "FileMesh"
			Mesh.Scale = Vector3.new(0.5,0.5,0.2)
			Mesh.MeshId = "http://www.roblox.com/asset/?id=2697549"
			--Mesh.TextureId = "http://www.roblox.com/asset/?id=2697544"]]
			local Mesh = Instance.new("BlockMesh",Bullet)
			Mesh.Scale = Vector3.new(0.2,0.2,5)*Scale/Bullet.Size
			IgnoreList[#IgnoreList+1] = Bullet
			RenderStepped:wait()
			for i = Speed,1000,Speed do -- Loop to do the bullet movement and stuff.
			local ray,Hit,Pos,SurfaceNormal;
			ray = Ray.new(Bullet.Position,((Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)).p-Bullet.Position).unit*Speed)
			Hit,Pos,SurfaceNormal = Workspace:FindPartOnRayWithIgnoreList(ray,IgnoreList)
			Bullet.CFrame = Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)
			if Hit ~= nil then
			local Hum = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid") or (Hit.Parent.Parent.Parent ~= nil and Hit.Parent.Parent.Parent:FindFirstChild("Humanoid"))
			if Hum ~= nil then
			Hum:TakeDamage((((Gangster and math.random(0,0) or math.random(0,0))*Scale)/100)*Hum.MaxHealth)
			end
			break
			end
			RenderStepped:wait()
			end
			Bullet:Destroy()
			end
			
			Mouse.Button1Down:connect(function()
			if not Down and not DB then
			Down = true
			while Down do
			if Humanoid.Health == 0 then break end
			if not DB then
			DB = true
			local Sound = Instance.new("Sound",Barrel)
			Sound.SoundId = "http://www.roblox.com/Asset/?id=165946426" -- 132373574
			Sound.Volume = 5*Scale
			Sound.Pitch = (math.random(70,110)/100)/((Scale < 0.25 and 0.25) or (Scale > 4 and 4) or Scale)
			Sound:Play()
			Spawn(function()
			ShootBullet(Mouse.Hit.p,Barrel1)
			end)
			RecoilMesh.VertexColor = Vector3.new(1,math.random(160,245)/255,20/255)
			PartWeld.C0 = PartWeld.C0 * CFrame.Angles(0,math.rad(math.random(-40,40)),0)
			local Shell = Instance.new("Part",Workspace)
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("Bright yellow")
			Shell.Size = Vector3.new(0.2,0.5,0.2)*Scale
			Shell.CFrame = Barrel.CFrame*CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(-90),0,0)
			Shell.Velocity = ((Barrel.CFrame*CFrame.new(5,0,math.random(-2,2))).p-Barrel.CFrame.p)*5*Scale
			local Mesh = Instance.new("CylinderMesh",Shell)
			Mesh.Scale = Vector3.new(0.2,0.5,0.2)*Scale/Shell.Size
			Spawn(function()
			wait(5)
			Shell:Destroy()
			end)
			for i = 1,20,7.5 do
			character1.Reanimate.FPart.Position = mouse.Hit.p
			RotationOffset = RotationOffset*CFrame.Angles(math.rad(7.5),0,0)
			Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,-0.15,0)*Scale)
			Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,0.15)*Scale)
			Light.Brightness = Light.Brightness+38
			RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,0.375,0)*Scale)
			RenderStepped:wait()
			end
			wait(0.02)
			for i = 1,20,3.75 do
			character1.Reanimate.FPart.Position = mouse.Hit.p
			RotationOffset = RotationOffset*CFrame.Angles(math.rad(-3.75),0,0)
			Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,0.075,0)*Scale)
			Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,-0.075)*Scale)
			Light.Brightness = Light.Brightness-19
			RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,-0.1875,0)*Scale)
			RenderStepped:wait()
			end
			wait(0.02)
			DB = false
			end
			end
			end
			end)
			
			Mouse.Button1Up:connect(function()
			Down = false
			end)
			
			Mouse.KeyDown:connect(function(Key)
			if Key:lower() == "g" and not DB then
			DB = true
			if Gangster == true then
			for i = 1,70,5 do
			RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(-5),0)
			RenderStepped:wait()
			end
			Gangster = false
			else
			for i = 1,70,5 do
			RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(5),0)
			RenderStepped:wait()
			end
			Gangster = true
			end
			DB = false
			end
			end)
			
			local Weld = Instance.new("Weld")
			Weld.Part0 = Torso
			Weld.Part1 = Character["Right Arm"]
			Weld.Parent = Torso
			
			local Weld2 = Instance.new("Weld")
			Weld2.Part0 = Torso
			Weld2.Part1 = Character.Head
			Weld2.Parent = Torso
			
			local RA = Character["Right Arm"]
			
			game:GetService("RunService"):BindToRenderStep("Pistol",Enum.RenderPriority.Character.Value,function()
			local Point = Torso.CFrame:vectorToObjectSpace(Mouse.Hit.p-Torso.CFrame.p)
			if Point.Z > 0 then
			if Point.X > 0 then
			Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
			elseif Point.X < 0 then
			Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
			end
			end
			
			local CFr = (Torso.CFrame*Part0Joint):toObjectSpace(CFrame.new((Torso.CFrame*Part0Joint).p,Mouse.Hit.p))--RayEnd))
			Weld.C0 = Part0Joint * (CFr-CFr.p) * RotationOffset
			Weld.C1 = Part1Joint
			Weld.Part0 = Torso
			Weld.Part1 = RA
			local CFr = (Torso.CFrame*Part0JointHead):toObjectSpace(CFrame.new((Torso.CFrame*Part0JointHead).p,Mouse.Hit.p))--RayEnd))
			Weld2.C0 = Part0JointHead * (CFr-CFr.p) * RotationOffsetHead
			Weld2.C1 = Part1JointHead
			Weld2.Part0 = Torso
			Weld2.Part1 = Character.Head
			local Last = Scale
			Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
			Speed = 20*Scale
			if Scale ~= Last then
			Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
			Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
			Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
			Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
			end
			end)
	end
})

Tab4:AddButton({
	Name = "Fling Gui (Spin)",
	Callback = function()
		--[[Fling GUI]]--
		--[[Made by topit]]--
		loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
		--This link auto updates, so there's no need to update this file.
	end
})

Tab4:AddButton({
	Name = "Big fling Box",
	Callback = function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then game:GetService("RunService").Heartbeat:connect(function() v.Velocity = Vector3.new(-30,0,0) end) end end game:GetService("StarterGui"):SetCore("SendNotification", { Title = "CREDIT"; Text = "MADE BY HACKER_YT"; Icon = ""}) Duration = 16;
 
		local UserInputService = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")
		local Camera = workspace.CurrentCamera
		
		local SPEED_MULTIPLIER = 30
		local JUMP_POWER = 60
		local JUMP_GAP = 0.3
		
		local character = game.Players.LocalPlayer.Character
		
		for i,v in ipairs(character:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
		end
		
		local ball = character.HumanoidRootPart
		ball.Shape = Enum.PartType.Ball
		ball.Size = Vector3.new(5,5,5)
		local humanoid = character:WaitForChild("Humanoid")
		local params = RaycastParams.new()
		params.FilterType = Enum.RaycastFilterType.Blacklist
		params.FilterDescendantsInstances = {character}
		
		local tc = RunService.RenderStepped:Connect(function(delta)
		ball.CanCollide = true
		humanoid.PlatformStand = true
		if UserInputService:GetFocusedTextBox() then return end
		if UserInputService:IsKeyDown("C") then
		ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
		end
		if UserInputService:IsKeyDown("V") then
		ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
		end
		if UserInputService:IsKeyDown("X") then
		ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
		end
		if UserInputService:IsKeyDown("Z") then
		ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
		end
		--ball.RotVelocity = ball.RotVelocity - Vector3.new(0,ball.RotVelocity.Y/50,0)
		end)
		
		UserInputService.JumpRequest:Connect(function()
		local result = workspace:Raycast(
		ball.Position,
		Vector3.new(
		0,
		-((ball.Size.Y/2)+JUMP_GAP),
		0
		),
		params
		)
		if result then
		ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
		end
		end)
		
		Camera.CameraSubject = ball
		humanoid.Died:Connect(function() tc:Disconnect() end)
		wait(0.9)
		clickfling = true -- set this to false if u dont want click fling or use torso fling
		
		function rmesh(a)
		if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
		old=game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
		for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
		if v:IsA('Mesh') or v:IsA('SpecialMesh') then
		v:Remove()
		end
		end
		for i = 1 , 2 do
		game.Players.LocalPlayer.Character=old
		end
		end
		
		a=game.Players.LocalPlayer b=game.Players.LocalPlayer.Character c={}d=table.insert e=false for D,E in next,game:GetService("Players").LocalPlayer.Character:GetDescendants()do if E:IsA("BasePart")then d(c,game:GetService("RunService").Heartbeat:connect(function()pcall(function()E.Velocity=Vector3.new(-30,0,0)sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999)game.Players.LocalPlayer.ReplicationFocus=workspace end)end))end end function f(D,E,F)game.StarterGui:SetCore("SendNotification",{Title=D;Text=E;Duration=F or 5;})end local x=game:GetService("RunService")g=Instance.new('Folder',b)g.Name='CWExtra'b.Archivable=true local y=b:Clone()y.Name='NexoPD'for D,E in next,y:GetDescendants()do if E:IsA('BasePart')or E:IsA('Decal')then E.Transparency=1 end end h=5.65 a.Character=nil a.Character=b b.Humanoid.AutoRotate=false b.Humanoid.WalkSpeed=0 b.Humanoid.JumpPower=0 b.Torso.Anchored=true f('HACKER_YT','SCRIPT\nPLEASE WAIT '..h..' SECOND.')wait(h)b.Torso.Anchored=false f('HACKER_YT','Remaning...')b.Humanoid.Health=0 y.Animate.Disabled=true y.Parent=g y.HumanoidRootPart.CFrame=b.HumanoidRootPart.CFrame*CFrame.new(0,5,0)function i(D,E,F,G)Instance.new("Attachment",D)Instance.new("AlignPosition",D)Instance.new("AlignOrientation",D)Instance.new("Attachment",E)D.Attachment.Name=D.Name E.Attachment.Name=D.Name D.AlignPosition.Attachment0=D[D.Name]D.AlignOrientation.Attachment0=D[D.Name]D.AlignPosition.Attachment1=E[D.Name]D.AlignOrientation.Attachment1=E[D.Name]E[D.Name].Position=F or Vector3.new()D[D.Name].Orientation=G or Vector3.new()D.AlignPosition.MaxForce=999999999 D.AlignPosition.MaxVelocity=math.huge D.AlignPosition.ReactionForceEnabled=false D.AlignPosition.Responsiveness=math.huge D.AlignOrientation.Responsiveness=math.huge D.AlignPosition.RigidityEnabled=false D.AlignOrientation.MaxTorque=999999999 D.Massless=true end function j(D,E,F)Instance.new("Attachment",D)Instance.new("AlignPosition",D)Instance.new("Attachment",E)D.Attachment.Name=D.Name E.Attachment.Name=D.Name D.AlignPosition.Attachment0=D[D.Name]D.AlignPosition.Attachment1=E[D.Name]E[D.Name].Position=F or Vector3.new()D.AlignPosition.MaxForce=999999999 D.AlignPosition.MaxVelocity=math.huge D.AlignPosition.ReactionForceEnabled=false D.AlignPosition.Responsiveness=math.huge D.Massless=true end for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then d(c,x.RenderStepped:Connect(function()E.CanCollide=false end))end end for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then d(c,x.Stepped:Connect(function()E.CanCollide=false end))end end for D,E in next,y:GetDescendants()do if E:IsA('BasePart')then d(c,x.RenderStepped:Connect(function()E.CanCollide=false end))end end for D,E in next,y:GetDescendants()do if E:IsA('BasePart')then d(c,x.Stepped:Connect(function()E.CanCollide=false end))end end for D,E in next,b:GetDescendants()do if E:IsA('Accessory')then i(E.Handle,y[E.Name].Handle)end end i(b['Head'],y['Head'])i(b['Torso'],y['Torso'])j(b['HumanoidRootPart'],y['Torso'],Vector3.new(0,0,0))i(b['Right Arm'],y['Right Arm'])i(b['Left Arm'],y['Left Arm'])i(b['Right Leg'],y['Right Leg'])i(b['Left Leg'],y['Left Leg'])k=a:GetMouse()local z=Instance.new("Part",g)z.CanCollide=false z.Transparency=1 d(c,x.RenderStepped:Connect(function()local D=workspace.CurrentCamera.CFrame.lookVector local E=y["HumanoidRootPart"]z.Position=E.Position z.CFrame=CFrame.new(z.Position,Vector3.new(D.X*10000,D.Y,D.Z*10000))end))l=false m=false n=false o=false p=false function q(D)r=Instance.new('BodyAngularVelocity',D)r.AngularVelocity=Vector3.new(9e9,9e9,9e9)r.MaxTorque=Vector3.new(9e9,9e9,9e9)end q(b.HumanoidRootPart)k=a:GetMouse()s=Instance.new('BodyPosition',b.HumanoidRootPart)s.P=9e9 s.D=9e9 s.MaxForce=Vector3.new(99999,99999,99999)local A d(c,x.Heartbeat:Connect(function()if A==true then s.Position=k.Hit.p b.HumanoidRootPart.Position=k.Hit.p else s.Position=y.Torso.Position b.HumanoidRootPart.Position=y.Torso.Position end end))local B=Instance.new("SelectionBox")B.Adornee=b.HumanoidRootPart B.LineThickness=0.02 B.Color3=Color3.fromRGB(250,0,0)B.Parent=b.HumanoidRootPart B.Name="RAINBOW"t=B if clickfling then d(c,k.Button1Down:Connect(function()A=true end))d(c,k.Button1Up:Connect(function()A=false end))end d(c,k.KeyDown:Connect(function(D)if D==' 'then p=true end if D=='w'then l=true end if D=='s'then m=true end if D=='a'then n=true end if D=='d'then o=true end end))d(c,k.KeyUp:Connect(function(D)if D==' 'then p=false end if D=='w'then l=false end if D=='s'then m=false end if D=='a'then n=false end if D=='d'then o=false end end))local function C(D,E,F)z.CFrame=z.CFrame*CFrame.new(-D,E,-F)y.Humanoid.WalkToPoint=z.Position end d(c,x.RenderStepped:Connect(function()if l==true then C(0,0,1e4)end if m==true then C(0,0,-1e4)end if n==true then C(1e4,0,0)end if o==true then C(-1e4,0,0)end if p==true then y.Humanoid.Jump=true end if l~=true and n~=true and m~=true and o~=true then y.Humanoid.WalkToPoint=y.HumanoidRootPart.Position end end))workspace.CurrentCamera.CameraSubject=y.Humanoid u=Instance.new('BindableEvent')d(c,u.Event:Connect(function()y:Destroy()e=true v=false for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then E.Anchored=true end end w=b.Humanoid:Clone()b.Humanoid:Destroy()w.Parent=b game.Players:Chat('-re')for D,E in pairs(c)do E:Disconnect()end game:GetService("StarterGui"):SetCore("ResetButtonCallback",true)u:Remove()end))game:GetService("StarterGui"):SetCore("ResetButtonCallback",u)
		--//=========================================\\
		--    MADE BY HACKER_YT & NEXO MOONSEC       II
		--\\=========================================//
	end
})

Tab4:AddButton({
	Name = "fling Gui (teleport To @username)",
	Callback = function()
		local lp = game:FindService("Players").LocalPlayer

		local function gplr(String)
			local Found = {}
			local strl = String:lower()
			if strl == "all" then
				for i,v in pairs(game:FindService("Players"):GetPlayers()) do
					table.insert(Found,v)
				end
			elseif strl == "others" then
				for i,v in pairs(game:FindService("Players"):GetPlayers()) do
					if v.Name ~= lp.Name then
						table.insert(Found,v)
					end
				end 
			elseif strl == "me" then
				for i,v in pairs(game:FindService("Players"):GetPlayers()) do
					if v.Name == lp.Name then
						table.insert(Found,v)
					end
				end 
			else
				for i,v in pairs(game:FindService("Players"):GetPlayers()) do
					if v.Name:lower():sub(1, #String) == String:lower() then
						table.insert(Found,v)
					end
				end 
			end
			return Found 
		end

		local function notif(str,dur)
			game:FindService("StarterGui"):SetCore("SendNotification", {
				Title = "yeet gui",
				Text = str,
				Icon = "rbxassetid://2005276185",
				Duration = dur or 3
			})
		end

		--// sds

		local h = Instance.new("ScreenGui")
		local Main = Instance.new("ImageLabel")
		local Top = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local TextBox = Instance.new("TextBox")
		local TextButton = Instance.new("TextButton")

		h.Name = "h"
		h.Parent = game:GetService("CoreGui")
		h.ResetOnSpawn = false

		Main.Name = "Main"
		Main.Parent = h
		Main.Active = true
		Main.Draggable = true
		Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Main.BorderSizePixel = 0
		Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
		Main.Size = UDim2.new(0, 454, 0, 218)
		Main.Image = "rbxassetid://2005276185"

		Top.Name = "Top"
		Top.Parent = Main
		Top.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
		Top.BorderSizePixel = 0
		Top.Size = UDim2.new(0, 454, 0, 44)

		Title.Name = "Title"
		Title.Parent = Top
		Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0, 0, 0.295454562, 0)
		Title.Size = UDim2.new(0, 454, 0, 30)
		Title.Font = Enum.Font.SourceSans
		Title.Text = "FE Yeet Gui (trollface edition)"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true

		TextBox.Parent = Main
		TextBox.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
		TextBox.BorderSizePixel = 0
		TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
		TextBox.Size = UDim2.new(0, 388, 0, 62)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.PlaceholderText = "Who do i destroy(can be shortened)"
		TextBox.Text = ""
		TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.TextScaled = true
		TextBox.TextSize = 14.000
		TextBox.TextWrapped = true

		TextButton.Parent = Main
		TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
		TextButton.Size = UDim2.new(0, 359, 0, 50)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = "Cheese em'"
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true

		TextButton.MouseButton1Click:Connect(function()
			local Target = gplr(TextBox.Text)
			if Target[1] then
				Target = Target[1]
				
				local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
				Thrust.Force = Vector3.new(9999,9999,9999)
				Thrust.Name = "YeetForce"
				repeat
					lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
					Thrust.Location = Target.Character.HumanoidRootPart.Position
					game:FindService("RunService").Heartbeat:wait()
				until not Target.Character:FindFirstChild("Head")
			else
				notif("Invalid player")
			end
		end)

		--//fsddfsdf
		notif("Loaded successfully! Created by scuba#0001", 5)
	end
})

------------------------------------------------------------------------------------------------------------------------------------------------
--Universal------------------------------------------------------------------------------------------------------------------------------------------

Tab5:AddButton({
	Name = "Universal NeonHUB",
	Callback = function()
		loadstring(game:HttpGet("http://www.narwhalhacks.xyz/NeonHub/Main.lua"))()
	end
})

Tab5:AddButton({
	Name = "Universal Gui",
	Callback = function()
		
		local col = nil
		local clickon = false
		local deleteon = false
		local platform = false
		local noclip = false
		local Infjump = false
		local UIS = game:GetService("UserInputService")
		local Size = 6
		local Player = game.Players.LocalPlayer
		local Mouse = Player:GetMouse()
		local Selectedplayer = nil
		local firetouchinterest = firetouchinterest or fake_touch or nil
		local UseDisplayNames = false
		local AntiAFK = false
		local HeadSize = 20
		local hitboxenabled = false
		local shiftlock = false
		local unlockzoom = false
		local walkspeed = 16
		local jumpPower = 50

		-----------------------------------IMPORTENT FUNCS------------------------------------------------------------------------------------------

		function LoadData()
			if not isfile("Universal_19872.lua") then
				return
			else
				local data = game:GetService("HttpService"):JSONDecode(readfile("Universal_19872.lua"))
				Size = data.PSize
				UseDisplayNames = data.usedisplayNames
				AntiAFK = data.anti_afk

			end
		end

		LoadData()

		function Fixcamera()
			for i, v in pairs(workspace:GetChildren()) do
				if v:IsA("Camera") then
					v.HeadScale = 1
					v.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
					v.CameraType = Enum.CameraType.Custom
					v.DiagonalFieldOfView = 143.882
					v.FieldOfView = 70
					v.FieldOfViewMode = Enum.FieldOfViewMode.Vertical
					v.MaxAxisFieldOfView = 116.156
					game.Players.LocalPlayer.CameraMaxZoomDistance = 128
					game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
					game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
					game.Players.LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Zoom
				end 
			end
		end

		-----------------------------------EXTRA----------------------------------------------------------------------------------------------------

		if game.Players.LocalPlayer.Character.Humanoid.UseJumpPower == false then
			jumpPower = 7
		end

		function DissableAntiCheat()
			local thingtodestory = "Ill"
			for i,v in pairs(game.Players.LocalPlayer.PlayerScripts:GetChildren()) do 
				if v.Name:lower():sub(1,#thingtodestory) == thingtodestory:lower() then
					Selectedplayer = v
				end
			end
		end


		game:GetService('RunService').RenderStepped:connect(function()
			if hitboxenabled then
				for i,v in next, game:GetService('Players'):GetPlayers() do
					if v.Name ~= game:GetService('Players').LocalPlayer.Name then
						pcall(function()
							v.Character.HumanoidRootPart.Size = Vector3.new(HeadSize,HeadSize,HeadSize)
							v.Character.HumanoidRootPart.Transparency = 0.8
							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really white")
							v.Character.HumanoidRootPart.Material = "Neon"
							v.Character.HumanoidRootPart.CanCollide = false
						end)
					end
				end
			end
		end)

		function GetCharacter()
			return game.Players.LocalPlayer.Character
		end

		function Teleport(pos)
			if clickon == true then
				local Char = GetCharacter()
				if Char then
					Char:MoveTo(pos)
				end
			end
		end


		local VirtualUser=game:service'VirtualUser'
		game:service'Players'.LocalPlayer.Idled:connect(function()
			if AntiAFK == true then
				VirtualUser:CaptureController()
				VirtualUser:ClickButton2(Vector2.new())
			end
		end)


		UIS.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
				Teleport(Mouse.Hit.p)
			end
		end)

		UserInput = game:GetService("UserInputService")

		function Spawnplatform()
			if platform == true then
				if game.Players.LocalPlayer.Character:FindFirstChild("Left Leg") then
					local Clone = Instance.new("Part")
					Clone.Parent = workspace
					Clone.Anchored = true
					Clone.Position = game.Players.LocalPlayer.Character["Left Leg"].Position
					Clone.Size = Vector3.new(Size, 1, Size)
					Clone.Name = "falksjdhflkjasdhflkjasdhflkjasdfhj"
				else
					local Clone = Instance.new("Part")
					Clone.Parent = workspace
					Clone.Anchored = true
					Clone.Position = game.Players.LocalPlayer.Character["LeftFoot"].Position
					Clone.Size = Vector3.new(Size, 1, Size)
					Clone.Name = "falksjdhflkjasdhflkjasdhflkjasdfhj"
				end
			end
		end
		--Hold CLTR and click to delete parts (you need to rejoin if you delete something wrong)
		local Plr = game:GetService("Players").LocalPlayer
		local Mouse = Plr:GetMouse()

		Mouse.Button1Down:connect(function()
			if deleteon == true then
				if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then return end
				if not Mouse.Target then return end
				Mouse.Target:Destroy()
			end 
		end)

		game:GetService('RunService').Stepped:connect(function()

			if noclip then
				if game:GetService("Players").LocalPlayer.Character ~= nil then
					for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if child:IsA("BasePart") and child.CanCollide == true then
							child.CanCollide = false
						end
					end
				end
			end
			
			if shiftlock then
				game.Players.LocalPlayer.DevEnableMouseLock = true
			end
			
			if unlockzoom then
				game.Players.LocalPlayer.CameraMaxZoomDistance = 99999
			end
			
			if jumpPower ~= 50 or jumpPower ~= 7 then
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpPower
			end
			
			if walkspeed ~= 16 then
				game.Players.LocalPlayer.Characte.Humanoid.WalkSpeed = walkspeed
			end
			
			if shiftlock == true then
				game.Players.LocalPlayer.DevEnableMouseLock = true
			end

			if UserInput:IsKeyDown(Enum.KeyCode.Space) then
				if Infjump == true then
					if game.Players.LocalPlayer.Character:FindFirstChild("Left Leg") then
						local Clone = Instance.new("Part")
						Clone.Parent = workspace
						Clone.Anchored = true
						Clone.Position = game.Players.LocalPlayer.Character["Left Leg"].Position
						Clone.Size = Vector3.new(6, 1, 6)
						Clone.Name = "falksjdhflkjasdhflkjasdhflkjasdfhjsfdgsd"
						Clone.Transparency = 1
						wait()
						Clone:Destroy()
					else
						local Clone = Instance.new("Part")
						Clone.Parent = workspace
						Clone.Anchored = true
						Clone.Position = game.Players.LocalPlayer.Character["LeftFoot"].Position
						Clone.Size = Vector3.new(6, 1, 6)
						Clone.Name = "falksjdhflkjasdhflkjasdhflkjsfdgsdfgasdfhj"
						Clone.Transparency = 1
						wait()
						Clone:Destroy()
					end
				end
			end
		end)

		UserInput.InputBegan:Connect(function(input , gameProccesedevent)
			if gameProccesedevent then
			else
				if input.KeyCode == Enum.KeyCode.Space then
					if Infjump == true then
						if game.Players.LocalPlayer.Character:FindFirstChild("Left Leg") then
							local Clone = Instance.new("Part")
							Clone.Parent = workspace
							Clone.Anchored = true
							Clone.Position = game.Players.LocalPlayer.Character["Left Leg"].Position
							Clone.Size = Vector3.new(6, 1, 6)
							Clone.Name = "falksjdhflkjasdhflkjasdhflkjasdfhjsfdgsd"
							Clone.Transparency = 1
							wait(0.1)
							Clone:Destroy()
						else
							local Clone = Instance.new("Part")
							Clone.Parent = workspace
							Clone.Anchored = true
							Clone.Position = game.Players.LocalPlayer.Character["LeftFoot"].Position
							Clone.Size = Vector3.new(6, 1, 6)
							Clone.Name = "falksjdhflkjasdhflkjasdhflkjsfdgsdfgasdfhj"
							Clone.Transparency = 1
							wait(0.1)
							Clone:Destroy()
						end
					end
				end		
			end

		end)


		-- https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source.lua
		-- https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded
		-- // Initialising the UI
		local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source.lua"))()
		local UI = Venyx.new("universal Gui")
		local Themes = {
			Background = Color3.fromRGB(24, 24, 24),
			Glow = Color3.fromRGB(0, 0, 0),
			Accent = Color3.fromRGB(10, 10, 10),
			LightContrast = Color3.fromRGB(188, 51, 54),
			DarkContrast = Color3.fromRGB(14, 14, 14),  
			TextColor = Color3.fromRGB(255, 255, 255)
		}



		local main = UI:addPage("Main")
		local AD = main:addSection("additional features")
		local server = UI:addPage("Server")
		local Splayer = server:addSection("Players")
		local theme = UI:addPage("Settings")
		local MainGame = main:addSection("Game")
		local localplayer = main:addSection("localplayer")
		local Confic = theme:addSection("Config")
		local Colors = theme:addSection("Colors")




		localplayer:addSlider("Player Speed", 16, 16, 300, function(value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value walkspeed = value end)

		localplayer:addSlider("Player jumpPower", jumpPower, jumpPower, 300, function(value) game.Players.LocalPlayer.Character.Humanoid.JumpPower = value jumpPower = value end)

		MainGame:addSlider("Gravity", 196.2, 0, 196.2, function(value) workspace.Gravity = value end)

		AD:addButton("save location", function() col = workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position end)

		AD:addButton("Load location", function() workspace[game.Players.LocalPlayer.Name]:MoveTo(col) end)

		AD:addButton("Clear Platforms", function() clearplatforms() end)

		AD:addButton("Reset Camera", function() Fixcamera() end)

		AD:addToggle("noclip", false, function(value) noclip = value end)

		AD:addToggle("Inf jump", false,function(value) Infjump = value end)

		AD:addToggle("cntrl click teleport", false, function(value) clickon = value end)

		AD:addToggle("alt click delete", false, function(value) deleteon = value end)

		AD:addToggle("spawn platform", false, function(value) platform = value end)

		AD:addToggle("awalys enable shiftlock", false, function(value) shiftlock = value end)

		AD:addToggle("Anti AFK", AntiAFK, function(value) AntiAFK = value end)

		AD:addToggle("Unlock Zomm Distance", false, function(value) if value == false then game.Players.LocalPlayer.CameraMaxZoomDistance = 128 end unlockzoom = value end)

		Splayer:addTextbox("Player", Size, function(text) FindPlayer(text) end)

		Splayer:addButton("teleport to player", function() game.Players.LocalPlayer.character:MoveTo(workspace[Selectedplayer.Name].HumanoidRootPart.Position) end)

		Splayer:addButton("Kill Player", function() KillPlayer() end)

		Splayer:addButton("Bring Player", function() BringPlayer() end)

		Splayer:addButton("Give Player Tool", function() GiveTool() end)

		Splayer:addToggle("Hitbox expander", false, function(value) hitboxenabled = value if value == false then for i,v in next, game:GetService('Players'):GetPlayers() do 	v.Character.HumanoidRootPart.Size = Vector3.new(2,1,2)v.Character.HumanoidRootPart.Transparency = 1	v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really white")	v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end end end)

		Confic:addTextbox("Platform size", "", function(value) Size = value end)

		Confic:addTextbox("Hitbox size", "20", function(value) HeadSize = tonumber(value) end)

		Confic:addToggle("Use Display Names", UseDisplayNames, function(value) UseDisplayNames = value end)

		Confic:addKeybind("Noclip key", nil, function() noclip = not noclip end)

		Confic:addKeybind("spawn platform key", Enum.KeyCode.Q, function() Spawnplatform()() end)

		Confic:addButton("Save", function() SaveData() end)

		for theme, color in pairs(Themes) do
			Colors:addColorPicker(theme, color, function(color3) UI:setTheme(theme, color3) end) -- // Adding a color picker for each type of theme customisable
		end

		Colors:addKeybind("Toggle UI Keybind", Enum.KeyCode.F3, function() UI:toggle() end)

		Colors:addButton("Kill GUI", function() game.CoreGui["universal Gui"]:Destroy() script:Destroy()end)

		function epicgames()
			UI:Notify("Warning!", "would you like to dissable the Anti Cheat? IT MAY BREAK SOME PARTS OF THE GAME!!! if it dose not work dissable it again in settings.", function(value) if value == true then DissableAntiCheat() end end)
			local COSTOM = UI:addPage("Epic Games")
			local EPIC = COSTOM:addSection("Epic minigames")
			Confic:addButton("Dissable Anti Cheat", function() DissableAntiCheat() end)

		end

		--             functions
		---------------------------------------

		function clearplatforms()
			for i, v in pairs(workspace:GetChildren()) do
				if v.Name == "falksjdhflkjasdhflkjasdhflkjasdfhj" then
					v:Destroy()
				end
			end
		end



		function FindPlayer(target)
			if UseDisplayNames == true then
				for i,v in pairs(game.Players:GetPlayers()) do 
					if v.DisplayName:lower():sub(1,#target) == target:lower() then
						Selectedplayer = v
					end
				end
			else
				for i,v in pairs(game.Players:GetPlayers()) do 
					if v.Name:lower():sub(1,#target) == target:lower() then
						Selectedplayer = v
					end
				end
			end
		end

		function KillPlayer()
			local player = game.Players.LocalPlayer
			if not firetouchinterest then
				UI:Notify("Upgrade exploit.", "Your exploit requires firetouchinterest!")
				return
			end
			local target = Selectedplayer
			player.Character.Humanoid.Name = 1
			local l = player.Character["1"]:Clone()
			l.Parent = player.Character
			l.Name = "Humanoid"
			wait(.2)
			player.Character["1"]:Destroy()
			workspace.CurrentCamera.CameraSubject = player.Character
			player.Character.Humanoid.DisplayDistanceType = "None"
			player.Character.Humanoid:UnequipTools()
			local v = player.Backpack:FindFirstChildOfClass("Tool")
			if not v then
				UI:Notify("Please get a tool.", "Tool not found!")
				return
			end
			v.Parent = player.Character
			v.Parent = player.Character.HumanoidRootPart
			firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 0)
			firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 1)
			pcall(function() player.Character.HumanoidRootPart.CFrame = CFrame.new(0, workspace.FallenPartsDestroyHeight + 5, 0) end)
			wait(.3)
			player.Character:Remove()
			player.CharacterAdded:Wait()
		end


		function BringPlayer()
			local savepos = workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position
			local player = game.Players.LocalPlayer
			if not firetouchinterest then
				UI:Notify("Upgrade exploit.", "Your exploit requires firetouchinterest!")
				return
			end
			local target = Selectedplayer
			player.Character.Humanoid.Name = 1
			local l = player.Character["1"]:Clone()
			l.Parent = player.Character
			l.Name = "Humanoid"
			wait(.2)
			player.Character["1"]:Destroy()
			workspace.CurrentCamera.CameraSubject = player.Character
			player.Character.Humanoid.DisplayDistanceType = "None"
			player.Character.Humanoid:UnequipTools()
			local v = player.Backpack:FindFirstChildOfClass("Tool")
			if not v then
				UI:Notify("Please get a tool.", "Tool not found!")
				return
			end
			v.Parent = player.Character
			v.Parent = player.Character.HumanoidRootPart
			firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 0)
			firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 1)
			pcall(function() player.Character.HumanoidRootPart.CFrame = NormPos end)
			wait(.3)
			player.Character:Remove()
			player.CharacterAdded:Wait()
			workspace[game.Players.LocalPlayer.Name]:MoveTo(savepos)
		end

		function GiveTool()
			local player = game.Players.LocalPlayer
			local target = Selectedplayer
			player.Character.Humanoid.Name = 1
			local l = player.Character["1"]:Clone()
			l.Parent = player.Character
			l.Name = "Humanoid"
			wait(.2)
			player.Character["1"]:Destroy()
			player.Character.Humanoid.DisplayDistanceType = "None"
			player.Character.Humanoid:UnequipTools()
			local v = player.Backpack:FindFirstChildOfClass("Tool")
			if not v then
				UI:Notify("Please get a tool.", "Tool not found!")
				return
			end
			v.Parent = player.Character
			v.Parent = player.Character.HumanoidRootPart
		end

		function SaveData()
			local datatosave = {
				PSize = Size;
				usedisplayNames = UseDisplayNames;
				anti_afk = AntiAFK
			}
			writefile("Universal_19872.lua", game:GetService("HttpService"):JSONEncode(datatosave))
		end

	end
})

Tab5:AddButton({
	Name = "Broken Bones IV",
	Callback = function()
		-- this is owned by NOB NOOB give me credits if you wanna use dont be a dick
		--[[
		IronBrew:tm: obfuscation; Version 2.7.2
		]]
		return(function(NewGen_IIIIIlIlIIIlIllIIII,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI)local NewGen_lllIIllllIlIllIIllII=string.char;local NewGen_IIIIIIllIlIIllIllIl=string.sub;local NewGen_IIIllIlIIIlIIIll=table.concat;local NewGen_IllIIIlIllIlIIll=math.ldexp;local NewGen_IlllIllIlIlIIIIllIlIll=getfenv or function()return _ENV end;local NewGen_llIllIIII=select;local NewGen_lllIllIlIllIIllIIlllII=unpack or table.unpack;local NewGen_llllIIIIIl=tonumber;local function NewGen_llIIIIlIlIIIlIlIIIIIIIlI(NewGen_IIIIIlIlIIIlIllIIII)local NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lllIllIlIllIIllIIlllII="","",{}local NewGen_IIlIllll=256;local NewGen_IIlIlIIlIIlllll={}for NewGen_lIIIIlIllIllIIllIlIIllllI=0,NewGen_IIlIllll-1 do NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_lllIIllllIlIllIIllII(NewGen_lIIIIlIllIllIIllIlIIllllI)end;local NewGen_lIIIIlIllIllIIllIlIIllllI=1;local function NewGen_llIIIllIIIlIIIlllIIlIlIII()local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_llllIIIIIl(NewGen_IIIIIIllIlIIllIllIl(NewGen_IIIIIlIlIIIlIllIIII,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI),36)NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+1;local NewGen_IlIlIIIllllIIIIIIIIllllI=NewGen_llllIIIIIl(NewGen_IIIIIIllIlIIllIllIl(NewGen_IIIIIlIlIIIlIllIIII,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI+NewGen_lllIlIIIlIlllIlIlIlIlIII-1),36)NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+NewGen_lllIlIIIlIlllIlIlIlIlIII;return NewGen_IlIlIIIllllIIIIIIIIllllI end;NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIIllllIlIllIIllII(NewGen_llIIIllIIIlIIIlllIIlIlIII())NewGen_lllIllIlIllIIllIIlllII[1]=NewGen_lllIlIIIlIlllIlIlIlIlIII;while NewGen_lIIIIlIllIllIIllIlIIllllI<#NewGen_IIIIIlIlIIIlIllIIII do local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_llIIIllIIIlIIIlllIIlIlIII()if NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI]then NewGen_IlIlIIIllllIIIIIIIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI]else NewGen_IlIlIIIllllIIIIIIIIllllI=NewGen_lllIlIIIlIlllIlIlIlIlIII..NewGen_IIIIIIllIlIIllIllIl(NewGen_lllIlIIIlIlllIlIlIlIlIII,1,1)end;NewGen_IIlIlIIlIIlllll[NewGen_IIlIllll]=NewGen_lllIlIIIlIlllIlIlIlIlIII..NewGen_IIIIIIllIlIIllIllIl(NewGen_IlIlIIIllllIIIIIIIIllllI,1,1)NewGen_lllIllIlIllIIllIIlllII[#NewGen_lllIllIlIllIIllIIlllII+1],NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IIlIllll=NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIlIllll+1 end;return table.concat(NewGen_lllIllIlIllIIllIIlllII)end;local NewGen_llllIIIIIl=NewGen_llIIIIlIlIIIlIlIIIIIIIlI('25Z25N27525L25R27525N24S24Q24M24U25L25O27924B24N24Q24O24U23M24V27H26P21M22E21K23U25L25D27924825B24Q25525B24U25523W25A24I27F27X24U25B23S24K25527E26328924L24V23P24K25B24I24T24I24O24Q28M24K24L25L25Q27924F24I25B24N27E25X27923X24K25A28I26J23P24I24L24H24Q26J23S24N28P24G29B24S26J24824I24M25A27J25B28D27728X24U24Z25B25L26227924N24K24Q24V29K26J25424O25524I25725B26D2AE25L25F27924V25A25528R24I28T2792AP25F23V29U27525824Q28Z27V2A12A324V25425B2AA24L24S28827523N25B25B25723W28A25L26I27924J2BA25725426P26C26C25724Q2B224U24P29B26D24O24K24M26C2AL25826C27124T24A23W23X24T24P25927921N25721Q23D21M27U25V29429629824824L24U24U24X2A629N29P29R29T2BG2752BI2BB2BL2BN2BP2BR2BT24L2BV2BX2BZ24Q2C124U24J24J23W23L24B23R26Z27921723423G21H21L27U2642CJ29724V26J24F24Q2572572CR29O29Q28R2CV2BH2BJ2D02BO2BQ2822D42D62BY2C026C25924323N24S23W24923U26Q2AP25A1F26V1M27U2602DR29824F24K25828326J24K24T26J24J24U24N24N2BF2E42CZ2BM2E72D32BU2BW2EC2D926C24A26Z24P27023R24H23U27O27524R22F21U25K21427U2662EU2DT23T25524K24G24U24L26J23T28T24U25426J23M24D2F82CX2E52FB2D22E92FE2D72ED23N25724S24T24824D24T26X2AP25N24W27926127G27525M27926J25J2GW25L25N26L2AH27528W2H325K25N25R2H32HC25N2H32HH27925U2HK25N2H02792HI25N26J2612GW27826J2GW25N28W2HW25N2H825P2I02HF2752HF2DI25N2HF27G2AH2IB2HF25E25N27W2IG25N25C25N2H62GW2HF2H32I327525I2GZ2H22IO2I02762HP26125W27925H2IW2HP2HT2HZ2J725N25G2HQ2I925N28G2HX2HP2GW2HL2IZ2792H82JJ2J12H12JI2HU2IP2JM2H92HB25N2932H32A02HM2752JY2HG2HT2GV2IS2JQ2J82IT2752HY2I02I22J02I62IQ2792IA2JE27G2HW2IL2II2IK2JE2IN2JT2KI2J12AP2IV2752I32H32KS2AP2H82IS2J32752J52KX2IX2J82L82JB2JD2IC25N2ET2JH2HT2HS2HG2JL2J02JO2K72LI2752H52H72H926M27923L2HP2672K42LU2JP2LO2HU2KA2LJ2J92AP2KE2I425N2KG2AP2I82LD2IL27G2FY2KN2IJ25N2IL2KR2I72KU2792KW2LC2KZ2JL2L22HQ2L425N2L62MQ2JR2J92H32H32JC2I32HF2652I02782LH2IX2782LK2JN2AP2N12HQ2K82H42L02H826L2LT27524P2HP2DQ2K125N2NO2LN2IX2LP2M32KC2GW2M72I52MM2JE2ME25N2CI2MH2KP2LD2ML2KH2IS2KV2J62MR2IZ2MT2J22J42OE2MZ2LA2N32JE2HO2LG2I02JK2NC2OR2M02NV2JS2LR2NL27924X2HP25T2LY2752P12NU2MZ2NX2HU2KD2LC2O12KH2O32KK25N25S2MJ2JE2KO2PJ2O92IY2OB2LC2IU2OK2L02JU2L32OJ2L72JA2LP2OM2LC2HF2742OQ2JO2NB2MS2OU2HI2JC2OW');local NewGen_lIIIIlIllIllIIllIlIIllllI=(bit or bit32);local NewGen_IIlIlIIlIIlllll=NewGen_lIIIIlIllIllIIllIlIIllllI and NewGen_lIIIIlIllIllIIllIlIIllllI.bxor or function(NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII)local NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIlIlIIlIIlllll,NewGen_IIIIIIllIlIIllIllIl=1,0,10 while NewGen_lIIIIlIllIllIIllIlIIllllI>0 and NewGen_lllIlIIIlIlllIlIlIlIlIII>0 do local NewGen_lllIllIlIllIIllIIlllII,NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI%2,NewGen_lllIlIIIlIlllIlIlIlIlIII%2 if NewGen_lllIllIlIllIIllIIlllII~=NewGen_IIIIIIllIlIIllIllIl then NewGen_IIlIlIIlIIlllll=NewGen_IIlIlIIlIIlllll+NewGen_IlIlIIIllllIIIIIIIIllllI end NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IlIlIIIllllIIIIIIIIllllI=(NewGen_lIIIIlIllIllIIllIlIIllllI-NewGen_lllIllIlIllIIllIIlllII)/2,(NewGen_lllIlIIIlIlllIlIlIlIlIII-NewGen_IIIIIIllIlIIllIllIl)/2,NewGen_IlIlIIIllllIIIIIIIIllllI*2 end if NewGen_lIIIIlIllIllIIllIlIIllllI<NewGen_lllIlIIIlIlllIlIlIlIlIII then NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lllIlIIIlIlllIlIlIlIlIII end while NewGen_lIIIIlIllIllIIllIlIIllllI>0 do local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI%2 if NewGen_lllIlIIIlIlllIlIlIlIlIII>0 then NewGen_IIlIlIIlIIlllll=NewGen_IIlIlIIlIIlllll+NewGen_IlIlIIIllllIIIIIIIIllllI end NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_IlIlIIIllllIIIIIIIIllllI=(NewGen_lIIIIlIllIllIIllIlIIllllI-NewGen_lllIlIIIlIlllIlIlIlIlIII)/2,NewGen_IlIlIIIllllIIIIIIIIllllI*2 end return NewGen_IIlIlIIlIIlllll end local function NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII)if NewGen_lllIlIIIlIlllIlIlIlIlIII then local NewGen_lIIIIlIllIllIIllIlIIllllI=(NewGen_IlIlIIIllllIIIIIIIIllllI/2^(NewGen_lIIIIlIllIllIIllIlIIllllI-1))%2^((NewGen_lllIlIIIlIlllIlIlIlIlIII-1)-(NewGen_lIIIIlIllIllIIllIlIIllllI-1)+1);return NewGen_lIIIIlIllIllIIllIlIIllllI-NewGen_lIIIIlIllIllIIllIlIIllllI%1;else local NewGen_lIIIIlIllIllIIllIlIIllllI=2^(NewGen_lIIIIlIllIllIIllIlIIllllI-1);return(NewGen_IlIlIIIllllIIIIIIIIllllI%(NewGen_lIIIIlIllIllIIllIlIIllllI+NewGen_lIIIIlIllIllIIllIlIIllllI)>=NewGen_lIIIIlIllIllIIllIlIIllllI)and 1 or 0;end;end;local NewGen_lIIIIlIllIllIIllIlIIllllI=1;local function NewGen_lllIlIIIlIlllIlIlIlIlIII()local NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl,NewGen_lllIllIlIllIIllIIlllII=NewGen_IIIIIlIlIIIlIllIIII(NewGen_llllIIIIIl,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI+3);NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_IIlIlIIlIIlllll(NewGen_lllIlIIIlIlllIlIlIlIlIII,203)NewGen_IlIlIIIllllIIIIIIIIllllI=NewGen_IIlIlIIlIIlllll(NewGen_IlIlIIIllllIIIIIIIIllllI,203)NewGen_IIIIIIllIlIIllIllIl=NewGen_IIlIlIIlIIlllll(NewGen_IIIIIIllIlIIllIllIl,203)NewGen_lllIllIlIllIIllIIlllII=NewGen_IIlIlIIlIIlllll(NewGen_lllIllIlIllIIllIIlllII,203)NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+4;return(NewGen_lllIllIlIllIIllIIlllII*16777216)+(NewGen_IIIIIIllIlIIllIllIl*65536)+(NewGen_IlIlIIIllllIIIIIIIIllllI*256)+NewGen_lllIlIIIlIlllIlIlIlIlIII;end;local function NewGen_llIIIllIIIlIIIlllIIlIlIII()local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_IIlIlIIlIIlllll(NewGen_IIIIIlIlIIIlIllIIII(NewGen_llllIIIIIl,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI),203);NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+1;return NewGen_lllIlIIIlIlllIlIlIlIlIII;end;local function NewGen_IIlIllll()local NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IlIlIIIllllIIIIIIIIllllI=NewGen_IIIIIlIlIIIlIllIIII(NewGen_llllIIIIIl,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI+2);NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_IIlIlIIlIIlllll(NewGen_lllIlIIIlIlllIlIlIlIlIII,203)NewGen_IlIlIIIllllIIIIIIIIllllI=NewGen_IIlIlIIlIIlllll(NewGen_IlIlIIIllllIIIIIIIIllllI,203)NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+2;return(NewGen_IlIlIIIllllIIIIIIIIllllI*256)+NewGen_lllIlIIIlIlllIlIlIlIlIII;end;local function NewGen_llIIIIlIlIIIlIlIIIIIIIlI()local NewGen_IIlIlIIlIIlllll=NewGen_lllIlIIIlIlllIlIlIlIlIII();local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lllIlIIIlIlllIlIlIlIlIII();local NewGen_IIIIIIllIlIIllIllIl=1;local NewGen_IIlIlIIlIIlllll=(NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lIIIIlIllIllIIllIlIIllllI,1,20)*(2^32))+NewGen_IIlIlIIlIIlllll;local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lIIIIlIllIllIIllIlIIllllI,21,31);local NewGen_lIIIIlIllIllIIllIlIIllllI=((-1)^NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lIIIIlIllIllIIllIlIIllllI,32));if(NewGen_lllIlIIIlIlllIlIlIlIlIII==0)then if(NewGen_IIlIlIIlIIlllll==0)then return NewGen_lIIIIlIllIllIIllIlIIllllI*0;else NewGen_lllIlIIIlIlllIlIlIlIlIII=1;NewGen_IIIIIIllIlIIllIllIl=0;end;elseif(NewGen_lllIlIIIlIlllIlIlIlIlIII==2047)then return(NewGen_IIlIlIIlIIlllll==0)and(NewGen_lIIIIlIllIllIIllIlIIllllI*(1/0))or(NewGen_lIIIIlIllIllIIllIlIIllllI*(0/0));end;return NewGen_IllIIIlIllIlIIll(NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII-1023)*(NewGen_IIIIIIllIlIIllIllIl+(NewGen_IIlIlIIlIIlllll/(2^52)));end;local NewGen_IllIllIIlIIlIl=NewGen_lllIlIIIlIlllIlIlIlIlIII;local function NewGen_IllIIIlIllIlIIll(NewGen_lllIlIIIlIlllIlIlIlIlIII)local NewGen_IlIlIIIllllIIIIIIIIllllI;if(not NewGen_lllIlIIIlIlllIlIlIlIlIII)then NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_IllIllIIlIIlIl();if(NewGen_lllIlIIIlIlllIlIlIlIlIII==0)then return'';end;end;NewGen_IlIlIIIllllIIIIIIIIllllI=NewGen_IIIIIIllIlIIllIllIl(NewGen_llllIIIIIl,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI+NewGen_lllIlIIIlIlllIlIlIlIlIII-1);NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+NewGen_lllIlIIIlIlllIlIlIlIlIII;local NewGen_lllIlIIIlIlllIlIlIlIlIII={}for NewGen_lIIIIlIllIllIIllIlIIllllI=1,#NewGen_IlIlIIIllllIIIIIIIIllllI do NewGen_lllIlIIIlIlllIlIlIlIlIII[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_lllIIllllIlIllIIllII(NewGen_IIlIlIIlIIlllll(NewGen_IIIIIlIlIIIlIllIIII(NewGen_IIIIIIllIlIIllIllIl(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI)),203))end return NewGen_IIIllIlIIIlIIIll(NewGen_lllIlIIIlIlllIlIlIlIlIII);end;local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lllIlIIIlIlllIlIlIlIlIII;local function NewGen_IIIllIlIIIlIIIll(...)return{...},NewGen_llIllIIII('#',...)end local function NewGen_llllIIIIIl()local NewGen_lllIIllllIlIllIIllII={};local NewGen_IIIIIIllIlIIllIllIl={};local NewGen_lIIIIlIllIllIIllIlIIllllI={};local NewGen_IIIIIlIlIIIlIllIIII={[#{"1 + 1 = 111";"1 + 1 = 111";}]=NewGen_IIIIIIllIlIIllIllIl,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{948;541;20;20};}]=NewGen_lIIIIlIllIllIIllIlIIllllI,[#{{20;301;741;346};}]=NewGen_lllIIllllIlIllIIllII,};local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lllIlIIIlIlllIlIlIlIlIII()local NewGen_IIlIlIIlIIlllll={}for NewGen_IlIlIIIllllIIIIIIIIllllI=1,NewGen_lIIIIlIllIllIIllIlIIllllI do local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_llIIIllIIIlIIIlllIIlIlIII();local NewGen_lIIIIlIllIllIIllIlIIllllI;if(NewGen_lllIlIIIlIlllIlIlIlIlIII==3)then NewGen_lIIIIlIllIllIIllIlIIllllI=(NewGen_llIIIllIIIlIIIlllIIlIlIII()~=0);elseif(NewGen_lllIlIIIlIlllIlIlIlIlIII==0)then NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_llIIIIlIlIIIlIlIIIIIIIlI();elseif(NewGen_lllIlIIIlIlllIlIlIlIlIII==2)then NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IllIIIlIllIlIIll();end;NewGen_IIlIlIIlIIlllll[NewGen_IlIlIIIllllIIIIIIIIllllI]=NewGen_lIIIIlIllIllIIllIlIIllllI;end;NewGen_IIIIIlIlIIIlIllIIII[3]=NewGen_llIIIllIIIlIIIlllIIlIlIII();for NewGen_lIIIIlIllIllIIllIlIIllllI=1,NewGen_lllIlIIIlIlllIlIlIlIlIII()do NewGen_IIIIIIllIlIIllIllIl[NewGen_lIIIIlIllIllIIllIlIIllllI-1]=NewGen_llllIIIIIl();end;for NewGen_IIIIIlIlIIIlIllIIII=1,NewGen_lllIlIIIlIlllIlIlIlIlIII()do local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_llIIIllIIIlIIIlllIIlIlIII();if(NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lIIIIlIllIllIIllIlIIllllI,1,1)==0)then local NewGen_IIIIIIllIlIIllIllIl=NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lIIIIlIllIllIIllIlIIllllI,2,3);local NewGen_lllIllIlIllIIllIIlllII=NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lIIIIlIllIllIIllIlIIllllI,4,6);local NewGen_lIIIIlIllIllIIllIlIIllllI={NewGen_IIlIllll(),NewGen_IIlIllll(),nil,nil};if(NewGen_IIIIIIllIlIIllIllIl==0)then NewGen_lIIIIlIllIllIIllIlIIllllI[#("tNx")]=NewGen_IIlIllll();NewGen_lIIIIlIllIllIIllIlIIllllI[#("Sshg")]=NewGen_IIlIllll();elseif(NewGen_IIIIIIllIlIIllIllIl==1)then NewGen_lIIIIlIllIllIIllIlIIllllI[#("Ect")]=NewGen_lllIlIIIlIlllIlIlIlIlIII();elseif(NewGen_IIIIIIllIlIIllIllIl==2)then NewGen_lIIIIlIllIllIIllIlIIllllI[#("HU0")]=NewGen_lllIlIIIlIlllIlIlIlIlIII()-(2^16)elseif(NewGen_IIIIIIllIlIIllIllIl==3)then NewGen_lIIIIlIllIllIIllIlIIllllI[#("7ls")]=NewGen_lllIlIIIlIlllIlIlIlIlIII()-(2^16)NewGen_lIIIIlIllIllIIllIlIIllllI[#("JyVH")]=NewGen_IIlIllll();end;if(NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lllIllIlIllIIllIIlllII,1,1)==1)then NewGen_lIIIIlIllIllIIllIlIIllllI[#("4Z")]=NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#("sp")]]end if(NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lllIllIlIllIIllIIlllII,2,2)==1)then NewGen_lIIIIlIllIllIIllIlIIllllI[#("Eud")]=NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#("2Zn")]]end if(NewGen_IlIlIIIllllIIIIIIIIllllI(NewGen_lllIllIlIllIIllIIlllII,3,3)==1)then NewGen_lIIIIlIllIllIIllIlIIllllI[#("xh2x")]=NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#("H8jv")]]end NewGen_lllIIllllIlIllIIllII[NewGen_IIIIIlIlIIIlIllIIII]=NewGen_lIIIIlIllIllIIllIlIIllllI;end end;return NewGen_IIIIIlIlIIIlIllIIII;end;local function NewGen_IllIIIlIllIlIIll(NewGen_lIIIIlIllIllIIllIlIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IIIIIlIlIIIlIllIIII)NewGen_lIIIIlIllIllIIllIlIIllllI=(NewGen_lIIIIlIllIllIIllIlIIllllI==true and NewGen_llllIIIIIl())or NewGen_lIIIIlIllIllIIllIlIIllllI;return(function(...)local NewGen_IIlIlIIlIIlllll=NewGen_lIIIIlIllIllIIllIlIIllllI[1];local NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[3];local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI[2];local NewGen_llIIIllIIIlIIIlllIIlIlIII=NewGen_IIIllIlIIIlIIIll local NewGen_lllIlIIIlIlllIlIlIlIlIII=1;local NewGen_IIlIllll=-1;local NewGen_IIIllIlIIIlIIIll={};local NewGen_llllIIIIIl={...};local NewGen_lllIIllllIlIllIIllII=NewGen_llIllIIII('#',...)-1;local NewGen_lIIIIlIllIllIIllIlIIllllI={};local NewGen_IlIlIIIllllIIIIIIIIllllI={};for NewGen_lIIIIlIllIllIIllIlIIllllI=0,NewGen_lllIIllllIlIllIIllII do if(NewGen_lIIIIlIllIllIIllIlIIllllI>=NewGen_IIIIIIllIlIIllIllIl)then NewGen_IIIllIlIIIlIIIll[NewGen_lIIIIlIllIllIIllIlIIllllI-NewGen_IIIIIIllIlIIllIllIl]=NewGen_llllIIIIIl[NewGen_lIIIIlIllIllIIllIlIIllllI+1];else NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_llllIIIIIl[NewGen_lIIIIlIllIllIIllIlIIllllI+#{{995;83;136;376};}];end;end;local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lllIIllllIlIllIIllII-NewGen_IIIIIIllIlIIllIllIl+1 local NewGen_lIIIIlIllIllIIllIlIIllllI;local NewGen_IIIIIIllIlIIllIllIl;while true do NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("4")];if NewGen_IIIIIIllIlIIllIllIl<=#("aOHU8a6P68gu6k3MDsfN")then if NewGen_IIIIIIllIlIIllIllIl<=#("CzRYF3han")then if NewGen_IIIIIIllIlIIllIllIl<=#("BP99")then if NewGen_IIIIIIllIlIIllIllIl<=#("Q")then if NewGen_IIIIIIllIlIIllIllIl>#("")then NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("y0I")];else local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI[#("WL")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI](NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI+1])end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("UI")then if(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("by")]]~=NewGen_lIIIIlIllIllIIllIlIIllllI[#{{618;151;676;300};"1 + 1 = 111";{30;641;759;333};{37;890;745;794};}])then NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;else NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("kEs")];end;elseif NewGen_IIIIIIllIlIIllIllIl==#("cOs")then local NewGen_IIlIllll;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("dx")]]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("vyG")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("z0fF")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Lt")];NewGen_IIlIllll=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("gdT")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_IIlIllll;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IIlIllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#("4d7n")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("33")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Uaq")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("zB")]]={};NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";"1 + 1 = 111";}]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("QVP")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("uFAm")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("kK")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("2JL")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("TVhU")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Sk")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("p83")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("QUnZ")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("2U")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("zNi")]))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("vz")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("E1Z")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("5b")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";"1 + 1 = 111";{177;947;168;60};}];else NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("ek")]]=(NewGen_lIIIIlIllIllIIllIlIIllllI[#("Qas")]~=0);end;elseif NewGen_IIIIIIllIlIIllIllIl<=#{{126;65;940;892};"1 + 1 = 111";{114;607;817;558};"1 + 1 = 111";{6;834;526;417};"1 + 1 = 111";}then if NewGen_IIIIIIllIlIIllIllIl==#("bFJp0")then do return end;else if(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("uB")]]==NewGen_lIIIIlIllIllIIllIlIIllllI[#("Zqat")])then NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;else NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Lg8")];end;end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("DhZOSVQ")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("XC")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("IDd")]];elseif NewGen_IIIIIIllIlIIllIllIl>#("7lh5eZvf")then local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("hQ")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lllIlIIIlIlllIlIlIlIlIII](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("lzK")]))else if(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";"1 + 1 = 111";}]]~=NewGen_lIIIIlIllIllIIllIlIIllllI[#("CFup")])then NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;else NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("3hp")];end;end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("zUyWLvzFzdKNFA")then if NewGen_IIIIIIllIlIIllIllIl<=#("ZDaMSGu3Mx6")then if NewGen_IIIIIIllIlIIllIllIl==#("LKVuF63jFC")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("IY")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Ea2")];else NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("GM")]]();end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("1VBjsSgcDVMg")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{{712;96;846;506};"1 + 1 = 111";}]]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("4fD")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("Tsqn")]];elseif NewGen_IIIIIIllIlIIllIllIl==#("ZTxfd1WzPbY4N")then local NewGen_llllIIIIIl;local NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll;local NewGen_lllIIllllIlIllIIllII;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("5k")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("kns")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("So")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("8fE")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("q7")];NewGen_lllIIllllIlIllIIllII=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("qkK")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_lllIIllllIlIllIIllII;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_lllIIllllIlIllIIllII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("skOA")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("eu")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("ab6")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("qj")]]=(NewGen_lIIIIlIllIllIIllIlIIllllI[#("KHC")]~=0);NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("0y")]NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll=NewGen_llIIIllIIIlIIIlllIIlIlIII(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}])))NewGen_IIlIllll=NewGen_IIIllIlIIIlIIIll+NewGen_IIIIIIllIlIIllIllIl-1 NewGen_llllIIIIIl=0;for NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIIIIIllIlIIllIllIl,NewGen_IIlIllll do NewGen_llllIIIIIl=NewGen_llllIIIIIl+1;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_llIllIIII[NewGen_llllIIIIIl];end;NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("QK")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_IIlIllll))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("oT")]]();else local NewGen_IIlIllll;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("HY")]]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("eAe")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("cI6z")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("BA")];NewGen_IIlIllll=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("hYG")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_IIlIllll;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IIlIllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#("fidC")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("vl")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("OfS")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("MA")]]={};NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Re")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("kRO")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("ONqn")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("91")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#{{406;150;883;513};{831;170;157;421};"1 + 1 = 111";}]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("OcNR")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("hf")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("Hhx")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("0kkB")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("ir")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("d73")]))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("yQ")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("NxM")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("2m")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("d8r")];end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("fRMqbysi1rvblGuEK")then if NewGen_IIIIIIllIlIIllIllIl<=#("EjGVJXfOQUmUNoP")then do return end;elseif NewGen_IIIIIIllIlIIllIllIl>#("au1FKSsQ2eUbQpek")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("TR")]]={};else NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("xl")]]();end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("YBEluiYkxRI5gPgxlF")then local NewGen_IIlIllll;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("t0")]]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("aYU")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("BF4h")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("DT")];NewGen_IIlIllll=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("PeE")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_IIlIllll;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IIlIllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";{803;482;243;231};{145;607;506;157};"1 + 1 = 111";}]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("zO")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("sMV")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Ci")]]={};NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("5Q")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("2xl")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("qtM8")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Ug")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("4BX")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("tC3d")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("dy")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("cML")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("gbcS")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("7c")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("5h2")]))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("lD")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("EWq")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("g3")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Aee")];elseif NewGen_IIIIIIllIlIIllIllIl==#("NfzV102Ece8BQcsYYlY")then local NewGen_IIlIllll;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Zu")]]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{{712;762;669;813};{684;23;765;908};{985;477;146;346};}]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("qH75")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("WQ")];NewGen_IIlIllll=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("NCk")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_IIlIllll;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IIlIllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#("2yFl")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";"1 + 1 = 111";}]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("laF")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("cU")]]={};NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("46")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("ldb")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Kn6z")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("47")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("luH")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("IZO8")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("a9")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("nJH")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("tBOp")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Yt")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("lmA")]))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("4v")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("uJD")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Xq")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("rfJ")];else local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI[#("jr")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI+1,NewGen_IIlIllll))end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("lcunaUVVANPEUeIvAPMvCPWgzq23Y1")then if NewGen_IIIIIIllIlIIllIllIl<=#("kyYYLVlUhfgezzEQLE7yiKCoH")then if NewGen_IIIIIIllIlIIllIllIl<=#("oYT117IuFg5q6Lo5EquKxR")then if NewGen_IIIIIIllIlIIllIllIl>#("Lrz0EkK5KquHxaqniGe3x")then local NewGen_llllIIIIIl;local NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll;local NewGen_lllIIllllIlIllIIllII;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("aN")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Aj")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Cj9")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#{{550;362;251;572};"1 + 1 = 111";}];NewGen_lllIIllllIlIllIIllII=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("MMf")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_lllIIllllIlIllIIllII;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_lllIIllllIlIllIIllII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("yqgt")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("pb")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("UOa")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("2d")]]=(NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";{976;662;80;12};{640;274;836;912};}]~=0);NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("nr")]NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll=NewGen_llIIIllIIIlIIIlllIIlIlIII(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("tHr")])))NewGen_IIlIllll=NewGen_IIIllIlIIIlIIIll+NewGen_IIIIIIllIlIIllIllIl-1 NewGen_llllIIIIIl=0;for NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIIIIIllIlIIllIllIl,NewGen_IIlIllll do NewGen_llllIIIIIl=NewGen_llllIIIIIl+1;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_llIllIIII[NewGen_llllIIIIIl];end;NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Dg")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_IIlIllll))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("ia")]]();else local NewGen_IIlIllll;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{{649;574;130;562};{2;148;639;420};}]]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("bNg")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("zClh")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("nz")];NewGen_IIlIllll=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("IR8")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_IIlIllll;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IIlIllll[NewGen_lIIIIlIllIllIIllIlIIllllI[#("7j2p")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("g2")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";{551;892;214;426};"1 + 1 = 111";}];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("23")]]={};NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("SE")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("a67")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("3ZAe")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Gr")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";"1 + 1 = 111";{298;602;779;962};}]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("fGEx")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("iI")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("g9W")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("rxeF")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("ic")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("Jxp")]))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("RK")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("mjT")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("VR")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("c3I")];end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("tIvinfl374H2iKDgdk5kvaM")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("12")]]={};elseif NewGen_IIIIIIllIlIIllIllIl>#{{135;282;465;930};{263;286;58;621};"1 + 1 = 111";{268;966;373;14};"1 + 1 = 111";{640;142;503;22};"1 + 1 = 111";{12;790;432;311};"1 + 1 = 111";{242;942;765;637};{93;673;885;517};{371;779;808;692};"1 + 1 = 111";"1 + 1 = 111";{79;390;611;830};"1 + 1 = 111";{890;881;181;557};{481;87;919;266};"1 + 1 = 111";"1 + 1 = 111";{120;804;1;329};"1 + 1 = 111";{109;796;848;678};{900;342;351;987};}then local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Xt")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI](NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI+1])else NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("QF")]]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("cxv")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("Z3RU")]];end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("bC48lzt5rqs2iR3MStrMLMTnBBO")then if NewGen_IIIIIIllIlIIllIllIl==#("lexbHrkMy0xBN6meOMM9BYrkKe")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("cj")]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("N96")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Lqke")];else local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("m9")]local NewGen_IIlIlIIlIIlllll,NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_llIIIllIIIlIIIlllIIlIlIII(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lllIlIIIlIlllIlIlIlIlIII](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("yie")])))NewGen_IIlIllll=NewGen_lIIIIlIllIllIIllIlIIllllI+NewGen_lllIlIIIlIlllIlIlIlIlIII-1 local NewGen_lIIIIlIllIllIIllIlIIllllI=0;for NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IIlIllll do NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+1;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lllIlIIIlIlllIlIlIlIlIII]=NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI];end;end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("zTRHVVOTn4ru1Gro2719PAOJYZOp")then local NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI[#("XF")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lIIIIlIllIllIIllIlIIllllI+1,NewGen_IIlIllll))elseif NewGen_IIIIIIllIlIIllIllIl==#("WmCDhV2QsLQ9n8kvrUEjKzmTfF9fh")then local NewGen_llllIIIIIl;local NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll;local NewGen_lllIIllllIlIllIIllII;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("R7")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("SY0")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("D9")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("MSt")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("S8")];NewGen_lllIIllllIlIllIIllII=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{{971;565;474;778};"1 + 1 = 111";{135;222;78;652};}]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_lllIIllllIlIllIIllII;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_lllIIllllIlIllIIllII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("icYO")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("bH")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Bx3")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Av")]]=(NewGen_lIIIIlIllIllIIllIlIIllllI[#("ozZ")]~=0);NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("qb")]NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll=NewGen_llIIIllIIIlIIIlllIIlIlIII(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("yjb")])))NewGen_IIlIllll=NewGen_IIIllIlIIIlIIIll+NewGen_IIIIIIllIlIIllIllIl-1 NewGen_llllIIIIIl=0;for NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIIIIIllIlIIllIllIl,NewGen_IIlIllll do NewGen_llllIIIIIl=NewGen_llllIIIIIl+1;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_llIllIIII[NewGen_llllIIIIIl];end;NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#{{820;29;421;830};{20;76;699;313};}]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_IIlIllll))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("GZ")]]();else local NewGen_IIlIlIIlIIlllll=NewGen_lIIIIlIllIllIIllIlIIllllI[#("qg")];local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("r96")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIlIlIIlIIlllll+1]=NewGen_lllIlIIIlIlllIlIlIlIlIII;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIlIlIIlIIlllll]=NewGen_lllIlIIIlIlllIlIlIlIlIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("z6zL")]];end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("5gyuBSZ1UVzIKvk9CBEmHekgYy9SyMWXJJP")then if NewGen_IIIIIIllIlIIllIllIl<=#("L2IDHAaSUbZ1JfdIL4m15rHdSgEi9M9a")then if NewGen_IIIIIIllIlIIllIllIl>#("KyJ3bQgdDvWIijsInlPxYPtuEUA62Th")then NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("cat")];else local NewGen_llllIIIIIl;local NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll;local NewGen_lllIIllllIlIllIIllII;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("j5")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("rO3")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";{467;136;537;392};}]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("sco")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#{"1 + 1 = 111";{239;121;496;359};}];NewGen_lllIIllllIlIllIIllII=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("KG7")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_lllIIllllIlIllIIllII;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_lllIIllllIlIllIIllII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("EaKz")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("xy")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("skF")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("if")]]=(NewGen_lIIIIlIllIllIIllIlIIllllI[#("gMI")]~=0);NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("DP")]NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll=NewGen_llIIIllIIIlIIIlllIIlIlIII(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("s7n")])))NewGen_IIlIllll=NewGen_IIIllIlIIIlIIIll+NewGen_IIIIIIllIlIIllIllIl-1 NewGen_llllIIIIIl=0;for NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIIIIIllIlIIllIllIl,NewGen_IIlIllll do NewGen_llllIIIIIl=NewGen_llllIIIIIl+1;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_llIllIIII[NewGen_llllIIIIIl];end;NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("vM")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_IIlIllll))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("66")]]();end;elseif NewGen_IIIIIIllIlIIllIllIl<=#{{236;508;210;459};"1 + 1 = 111";{858;617;420;166};{455;180;124;102};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{334;951;471;599};{792;402;404;747};"1 + 1 = 111";{498;883;391;840};{639;309;481;815};"1 + 1 = 111";"1 + 1 = 111";{342;913;245;629};"1 + 1 = 111";"1 + 1 = 111";{694;156;838;695};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{53;953;181;725};{449;949;55;503};{556;370;426;60};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{782;596;133;583};"1 + 1 = 111";}then local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("if")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lllIlIIIlIlllIlIlIlIlIII](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("WNz")]))elseif NewGen_IIIIIIllIlIIllIllIl==#("T8lLdJNBralyK9jDVr7RSlrcNppr75MTRa")then local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Ok")]local NewGen_IIlIlIIlIIlllll,NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_llIIIllIIIlIIIlllIIlIlIII(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lllIlIIIlIlllIlIlIlIlIII](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_lllIlIIIlIlllIlIlIlIlIII+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("Wl9")])))NewGen_IIlIllll=NewGen_lIIIIlIllIllIIllIlIIllllI+NewGen_lllIlIIIlIlllIlIlIlIlIII-1 local NewGen_lIIIIlIllIllIIllIlIIllllI=0;for NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII,NewGen_IIlIllll do NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_lIIIIlIllIllIIllIlIIllllI+1;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lllIlIIIlIlllIlIlIlIlIII]=NewGen_IIlIlIIlIIlllll[NewGen_lIIIIlIllIllIIllIlIIllllI];end;else NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("bm")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("fO2")]];end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("MVKHmX3v2TQPAhYz3WHbIQi7XsvEvyDRJmIRkV")then if NewGen_IIIIIIllIlIIllIllIl<=#("4YZAs7L0jjHT6k8n5MNT4CA9Eq8fmKgnhcMn")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("eI")]]=(NewGen_lIIIIlIllIllIIllIlIIllllI[#("DEc")]~=0);elseif NewGen_IIIIIIllIlIIllIllIl>#("qZ9mDmtZPGHL8MfHb0Cy06c8GNJdsL4IVGOWO")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#{{47;957;794;617};{526;157;532;980};}]][NewGen_lIIIIlIllIllIIllIlIIllllI[#("jGH")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#{{61;125;812;836};{105;651;426;995};{598;658;925;990};{36;800;201;960};}];else if(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Tp")]]==NewGen_lIIIIlIllIllIIllIlIIllllI[#("bxRC")])then NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;else NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lIIIIlIllIllIIllIlIIllllI[#("ly4")];end;end;elseif NewGen_IIIIIIllIlIIllIllIl<=#("CpfkYUCEn8aRgmjZ2uXaRZNqHeM8ZD7s3FymrPh")then local NewGen_llllIIIIIl;local NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll;local NewGen_lllIIllllIlIllIIllII;local NewGen_IIIIIIllIlIIllIllIl;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("C3")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("FPb")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("iI")]]=NewGen_IIIIIlIlIIIlIllIIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Ctg")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("Yc")];NewGen_lllIIllllIlIllIIllII=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("AuM")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl+1]=NewGen_lllIIllllIlIllIIllII;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_lllIIllllIlIllIIllII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("eCiq")]];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Z4")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("ONH")];NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Kn")]]=(NewGen_lIIIIlIllIllIIllIlIIllllI[#("GhH")]~=0);NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("e9")]NewGen_llIllIIII,NewGen_IIIllIlIIIlIIIll=NewGen_llIIIllIIIlIIIlllIIlIlIII(NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_lIIIIlIllIllIIllIlIIllllI[#("sSX")])))NewGen_IIlIllll=NewGen_IIIllIlIIIlIIIll+NewGen_IIIIIIllIlIIllIllIl-1 NewGen_llllIIIIIl=0;for NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIIIIIllIlIIllIllIl,NewGen_IIlIllll do NewGen_llllIIIIIl=NewGen_llllIIIIIl+1;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI]=NewGen_llIllIIII[NewGen_llllIIIIIl];end;NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IIIIIIllIlIIllIllIl=NewGen_lIIIIlIllIllIIllIlIIllllI[#("FG")]NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl]=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIIIIIllIlIIllIllIl](NewGen_lllIllIlIllIIllIIlllII(NewGen_IlIlIIIllllIIIIIIIIllllI,NewGen_IIIIIIllIlIIllIllIl+1,NewGen_IIlIllll))NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;NewGen_lIIIIlIllIllIIllIlIIllllI=NewGen_IIlIlIIlIIlllll[NewGen_lllIlIIIlIlllIlIlIlIlIII];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Mv")]]();elseif NewGen_IIIIIIllIlIIllIllIl==#("HbzLcLFSy5Ot9NZMMZNUiEPVaSXLY7HmnFEQBco5")then NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("8e")]]=NewGen_lIIIIlIllIllIIllIlIIllllI[#("KxZ")];else local NewGen_IIlIlIIlIIlllll=NewGen_lIIIIlIllIllIIllIlIIllllI[#("sR")];local NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_lIIIIlIllIllIIllIlIIllllI[#("Axy")]];NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIlIlIIlIIlllll+1]=NewGen_lllIlIIIlIlllIlIlIlIlIII;NewGen_IlIlIIIllllIIIIIIIIllllI[NewGen_IIlIlIIlIIlllll]=NewGen_lllIlIIIlIlllIlIlIlIlIII[NewGen_lIIIIlIllIllIIllIlIIllllI[#("NOvJ")]];end;NewGen_lllIlIIIlIlllIlIlIlIlIII=NewGen_lllIlIIIlIlllIlIlIlIlIII+1;end;end);end;return NewGen_IllIIIlIllIlIIll(true,{},NewGen_IlllIllIlIlIIIIllIlIll())();end)(string.byte,table.insert,setmetatable);
	end
})

Tab5:AddButton({
	Name = "Soon",
	Callback = function()
		
	end
})

Tab5:AddButton({
	Name = "Fencing Gui",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/rM0LU2mJ"))()
	end
})

Tab5:AddButton({
	Name = "UTG V3",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))()
	end
})

Tab5:AddButton({
	Name = "CHAOS SCRIPT",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/1111-ssss/Chaos_Script/main/Chaos_script.txt'))()
	end
})

------------------------------------------------------------------------------------------------------------------------------------------------
--HUBs------------------------------------------------------------------------------------------------------------------------------------------

Tab6:AddButton({
	Name = "Rose HUb",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/1BJj0fB4"))()
	end
})

Tab6:AddButton({
	Name = "RemX HUB",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Henry887/RemX-Script-Hub/main/main.lua'),true))()
	end
})

Tab6:AddButton({
	Name = "Simplity Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/s1mplity/main/main"))()
	end
})

Tab6:AddButton({
	Name = "Moon Hub",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Gae7YC84"))();
	end
})

Tab6:AddButton({
	Name = "EZ HUBS",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
	end
})

Tab6:AddButton({
	Name = "Ro-Xploit V6.0",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://364364477")[1].Source)()
	end
})

Tab6:AddButton({
	Name = "Domain X",
	Callback = function()
		loadstring(game:HttpGet('https://shlex.dev/release/domainx/latest.lua',true))()
	end
})


------------------------------------------------------------------------------------------------------------------------------------------------
--credit------------------------------------------------------------------------------------------------------------------------------------------

Tab7:AddLabel("Creator")
Tab7:AddLabel("hanan_0211")
Tab7:AddLabel("Suporter")
Tab7:AddLabel("AyoGladzalt")
Tab7:AddLabel("Check Gui")
Tab7:AddLabel("hanan_0211")
Tab7:AddLabel("AyoGladzalt")
Tab7:AddLabel("TANKS FOR USE THIS GUI")

------------------------------------------------------------------------------------------------------------------------------------------------
--Update------------------------------------------------------------------------------------------------------------------------------------------

Tab8:AddLabel("New UI")
Tab8:AddLabel("Added Hubs")
Tab8:AddLabel("NONE")
Tab8:AddLabel("NONE")
Tab8:AddLabel("NONE")
Tab8:AddLabel("NONE")

------------------------NOtification

OrionLib:MakeNotification({
	Name = "tanks for Using This Gui",
	Content = "Gui Loaded",
	Image = "rbxassetid://4483345998",
	Time = 9
})
