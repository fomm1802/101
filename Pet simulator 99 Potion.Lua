local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("PlantSeed")

local tab1 = win:Tab("Settings")

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

tab1:Toggle("WaterSeed",false, function(t)
_G.WaterSeed = t
_G.ClaimPlant = t
while _G.WaterSeed do
for i = 1, 10 do
  local args = {
    [1] = "FlowerGarden",
    [2] = "WaterSeed",
    [3] = i
  }
  game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_InvokeCustomFromClient"):InvokeServer(unpack(args))
  wait(0.000000000001)
end
end

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
