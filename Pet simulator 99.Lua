loadstring(game:HttpGet("https://pastebin.com/raw/67VHwfHB"))() --DisableEggAnimation


local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("FlowerGarden")

local tab1 = win:Tab("Shop")

local tab2 = win:Tab("Egg")


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

tab2:Toggle("Egg 78", false, function(t)
local Tween = game:GetService("TweenService")
local Tw = Tween:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-8.608195304870605, 47.28281021118164, -214.9239044189453)}):Play()

_G.Frosted = t
while _G.Frosted do
local args = {
    [1] = "Frosted Geode Egg",
    [2] = 41
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_RequestPurchase"):InvokeServer(unpack(args))
end
end)