loadstring(game:HttpGet("https://pastebin.com/raw/67VHwfHB"))() --DisableEggAnimation


local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("FlowerGarden")

local tab1 = win:Tab("Shop")

local tab2 = win:Tab("Egg and Farm")


tab:Toggle("Coin Seed",false, function(t)
_G.Coin = t
while _G.Coin do
for i = 1, 10 do
  local args = {
    [1] = "FlowerGarden",
    [2] = "PlantSeed",
    [3] = i,
    [4] = "Coin"
  }
  game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_InvokeCustomFromClient"):InvokeServer(unpack(args))
  wait(0.01)
end
end
end)

tab:Toggle("Diamond Seed",false, function(t)
_G.Coin = t
while _G.Coin do
for i = 1, 10 do
  local args = {
    [1] = "FlowerGarden",
    [2] = "PlantSeed",
    [3] = i,
    [4] = "Diamond"
  }
  game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_InvokeCustomFromClient"):InvokeServer(unpack(args))
  wait(0.01)
end
end
end)

tab:Toggle("Potion Seed",false, function(t)
_G.Coin = t
while _G.Coin do
for i = 1, 10 do
  local args = {
    [1] = "FlowerGarden",
    [2] = "PlantSeed",
    [3] = i,
    [4] = "Potion"
  }
  game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_InvokeCustomFromClient"):InvokeServer(unpack(args))
  wait(0.01)
end
end
end)

tab:Toggle("Gift Seed",false, function(t)
_G.Coin = t
while _G.Coin do
for i = 1, 10 do
  local args = {
    [1] = "FlowerGarden",
    [2] = "PlantSeed",
    [3] = i,
    [4] = "Gift"
  }
  game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_InvokeCustomFromClient"):InvokeServer(unpack(args))
  wait(0.01)
end
end
end)

tab:Toggle("WaterSeed",false, function(t)
_G.WaterSeed = t

while _G.WaterSeed do
for i = 1, 10 do
  local args = {
    [1] = "FlowerGarden",
    [2] = "WaterSeed",
    [3] = i
  }
  game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_InvokeCustomFromClient"):InvokeServer(unpack(args))
  wait(0.001)
end
end
end)

tab:Toggle("ClaimPlant",false, function(t)
_G.ClaimPlant = t

while _G.ClaimPlant do
for i = 1, 10 do
  local args = {
    [1] = "FlowerGarden",
    [2] = "ClaimPlant",
    [3] = i
  }
  game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_InvokeCustomFromClient"):InvokeServer(unpack(args))
  wait(0.01)
end
end
end)

tab1:Toggle("GardenMerchant",false, function(t)
_G.GardenMerchant = t
while _G.GardenMerchant do
for i = 1, 10 do
local args = {
    [1] = "GardenMerchant",
    [2] = i
}

game:GetService("ReplicatedStorage").Network.Merchant_RequestPurchase:InvokeServer(unpack(args))
end
end
end)

tab2:Toggle("Egg 78",false, function(t)
local Tween = game:GetService("TweenService")
local Tw = Tween:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-8.608195304870605, 47.28281021118164, -214.9239044189453)}):Play()

for i = 1,4 do 
wait(0.01)
local args = {
    [1] = i
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_ClearSlot"):FireServer(unpack(args))
end
wait(0.01)
local args = {
    [1] = "b8521b6f8fe34771ae941de818d3c57c"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))
wait(0.01)
local args = {
    [1] = "87c7cba1e6924c408f8b3d750430ecb1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))
wait(0.01)
local args = {
    [1] = "87c7cba1e6924c408f8b3d750430ecb1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))
wait(0.01)
local args = {
    [1] = "87c7cba1e6924c408f8b3d750430ecb1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))
end

_G.Frosted = t
while _G.Frosted do
local args = {
    [1] = "Frosted Geode Egg",
    [2] = 41
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_RequestPurchase"):InvokeServer(unpack(args))
end
end)

tab2:Button("Farm Area 63", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1209.9130859375, 15.937521934509277, 2688.33251953125)

for i = 1,4 do 
wait(0.01)
local args = {
    [1] = i
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_ClearSlot"):FireServer(unpack(args))
end
wait(0.01)
local args = {
    [1] = "3673663754a240c79f30e0a8698b96f4"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))
wait(0.01)
local args = {
    [1] = "3673663754a240c79f30e0a8698b96f4"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))
wait(0.01)
local args = {
    [1] = "3673663754a240c79f30e0a8698b96f4"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))
wait(0.01)
end

local args = {
    [1] = "855b612607d34766be1101816e8afefe"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Enchants_Equip"):FireServer(unpack(args))

end)
