--Venity Laucher

local ezlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/debug420/Ez-Hub/master/Modules/EzLib.lua"))();
local mainGUI = ezlib.create("Venity Launcher");

local mainTab = mainGUI.newTab("Laucher");
mainGUI.openTab(mainTab);   -- Opens the tab
mainTab.newTitle("Venity laucher");
mainTab.newDiv();
mainTab.newTitle("Premium Status      Free Status      Laucher Status")
mainTab.newTitle("        ONLINE                   ONLINE               ONLINE")
mainTab.newDiv();
mainGUI.openTab(mainGUI.getTab("Laucher"));  -- Also opens the tab but with name

mainTab.newButton("Lauch Venity", function()
    loadstring(game:HttpGet(""))()
end)

--notification
ezlib.newNotif(ezlib.enum.notifType.text, "Venity Launcher").play().delete();

	function no()
		ezlib.newNotif(ezlib.enum.notifType.text, "Oh Ok").play().delete();
		ezlib.newNotif(ezlib.enum.notifType.text, "gui Created By hanan_0211").play().delete();
	end
	
	function yes()
		ezlib.newNotif(ezlib.enum.notifType.text, "discord server link copy to clipboard").play().delete();
		ezlib.newNotif(ezlib.enum.notifType.text, "gui Created By hanan_0211").play().delete();
		setclipboard("")
	end
	
	local notif = ezlib.newNotif(ezlib.enum.notifType.buttons, "Discord link?:",
	"no", "yes", function() no() end,
	function() yes() end);
	notif.show();
