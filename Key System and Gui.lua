local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionKeySystem"})

OrionLib:MakeNotification({
	Name = "You Loggin In!",
	Content = "You Are Loggin in as"..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "GodxTeam"
_G.KeyInput = 'string'

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hananal12/hananal12/main/HELLPOP%20NEW%20UI%20BY%20hanan_0211"))()
    
end


function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You Have entered Correct Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You Have entered Incorrect Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end


local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "EnterKey",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
        print(KeyInput)
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end    
  	end    
})
