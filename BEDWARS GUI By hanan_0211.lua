local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BEDWARS SCRIPT BY hanan_0211", "DarkTheme")

local Tab = Window:NewTab("Bedwars Script")
local TabSection = Tab:NewSection("BEDWARS SCRIPT")

TabSection:NewButton("VAPE V4", "ButtonInfo", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()	
end)

TabSection:NewButton("FUTURE CLIENT", "ButtonInfo", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()	
end)
