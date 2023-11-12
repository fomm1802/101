local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Tab")

tab:Button("Auto Parry", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
end)

tab:Dropdown("Dropdown",{"Equip Dash","Option 2","Option 3","Option 4","Option 5","Option 6","Option 7"}, function(t)
    if t == 1 then
        loadstring(game:HttpGet("https://pastebin.com/raw/A9ftfwtr", true))()
    elseif t == 2 then
        -- Do something else
    elseif t == 3 then
        -- Do something else
    elseif t == 4 then
        -- Do something else
    elseif t == 5 then
        -- Do something else
    elseif t == 6 then
        -- Add new option functionality
    else
        -- Do something else
    end
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
