local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DA HOOD SCRIPT BY hanan_0211", "DarkTheme")

local DH = Window:NewTab("SCRIPT DAHOOD")
local DHSection = DH:NewSection("SCRIPT")

DHSection:NewButton("Dimag X", "NONE", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Dimag16/DimagX_NEW/main/dimagx', true))()
end)

DHSection:NewButton("NovaGui","NONE", function()
	loadstring(game:HttpGet("https://icxy.xyz/NovaGui/NovaGui", true))()
end)
