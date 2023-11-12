local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Tab")

tab:Button("Auto Parry", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
end)

tab:Toggle("Spam Parry",false, function(t)
_G.Block = t
while _G.Block do
local A_1 = 0
local A_2 = CFrame.new(-0, 0, 0, -0, 0, -0, -0, 0, 0, 0, 0, -0)
local A_3 = 
{ 
	["fomm1702"] = Vector3.new(0, 0, 0),
}
local A_4 = 
{
	[1] = 1101, 
	[2] = 584
}
local Event = game:GetService("ReplicatedStorage").Remotes.ParryAttempt
Event:FireServer(A_1, A_2, A_3, A_4)
wait()
    end
end)

local tab2 = win:Tab("skill")

tab2:Button("Dash", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/A9ftfwtr", true))()
end)

tab2:Button("Blink", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/8rAdJFuf", true))()
end)

tab2:Button("Forcefield", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/JNRdbRu9", true))()
end)

tab2:Button("Swap", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/R6gaEL88", true))()
end)

tab2:Button("Reaper", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/y1DTzqy9", true))()
end)

tab2:Button("Telekinesis", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/cDvfVQ50", true))()
end)

tab2:Button("Super Jump", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/ZrCHPCP1", true))()
end)

tab2:Button("Platform", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/B8PNLVEn", true))()
end)

tab2:Button("Quad Jump", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/nfUgFE6d", true))()
end)

tab2:Button("Shadow Step", function(t)
loadstring(game:HttpGet("https://pastebin.com/raw/i5RKJK5p", true))()
end)

tab2:Button("Thunder Dash", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/a364ea56", true))()
end)

tab2:Button("Wind Cloak", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/8af89f19", true))()
end)

tab2:Button("Pull", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/2f60c842", true))()
end)

tab2:Button("Phase Bypass", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/70430175", true))()
end)

tab2:Button("Phantom", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/446af167", true))()
end)

tab2:Button("Pulse", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/6a9b8a2c", true))()
end)

tab2:Button("Infinity", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/7daf0563", true))()
end)

tab2:Button("Rapture", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/a7032a64", true))()
end)

tab2:Button("WAYPOINT", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/fa579ee2", true))()
end)

tab2:Button("Force", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/1d08ba82", true))()
end)

tab2:Button("Raging Deflect", function(t)
loadstring(game:HttpGet("https://pastebin.pl/view/8849b367", true))()
end)
