local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Parry")

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

tab2:Button("", function(t)
loadstring(game:HttpGet("", true))()
end)
