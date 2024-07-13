local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

-- Tab --

local tab = win:Tab("Key")

tab:Toggle("Change SecretKey to CrystalKey",false, function(t)
   _G.SecretKey_of_CrystalKey = t
   while _G.SecretKey_of_CrystalKey do wait(.1)
      local args = {
         [1] = "Crystal Key Castle"
      }
      game:GetService("ReplicatedStorage").Network.SecretRoom_Unlock:InvokeServer(unpack(args))
      wait(1)
      local args = {
         [1] = "CrystalKeyWheel"
      }
      game:GetService("ReplicatedStorage").Network:FindFirstChild("Spinny Wheel: Request Spin"):InvokeServer(unpack(args))      
   end
end)

tab:Toggle("Use CrystalKey",false, function(t)
   _G.CrystalKey = t
   while _G.CrystalKey do wait(.1)
      game:GetService("ReplicatedStorage").Network.CrystalKey_Unlock:InvokeServer()
   end
end)

tab:Toggle("Use TechKey",false, function(t)
   _G.TechKey = t
   while _G.TechKey do wait(.1)
      game:GetService("ReplicatedStorage").Network.TechKey_Unlock:InvokeServer()
   end
end)

tab:Toggle("Use VoidKey",false, function(t)
   _G.VoidKey = t
   while _G.VoidKey do wait(.1)
      game:GetService("ReplicatedStorage").Network.VoidKey_Unlock:InvokeServer()
   end
end)

-- Tab2 --

local tab2 = win:Tab("Wheel")

tab2:Toggle("Use StarterWheel",false, function(t)
   _G.StarterWheel = t
   while _G.StarterWheel do wait(.1)
      local args = {
      [1] = "StarterWheel"
      }
      game:GetService("ReplicatedStorage").Network:FindFirstChild("Spinny Wheel: Request Spin"):InvokeServer(unpack(args))
   end
end)

tab2:Toggle("Use TechWheel",false, function(t)
   _G.TechWheel = t
   while _G.TechWheel do wait(.1)
      local args = {
      [1] = "TechWheel"
      }
      game:GetService("ReplicatedStorage").Network:FindFirstChild("Spinny Wheel: Request Spin"):InvokeServer(unpack(args))
   end
end)

tab2:Toggle("Use VoidWheel",false, function(t)
   _G.VoidWheel = t
   while _G.VoidWheel do wait(.1)
      local args = {
      [1] = "VoidWheel"
      }
      game:GetService("ReplicatedStorage").Network:FindFirstChild("Spinny Wheel: Request Spin"):InvokeServer(unpack(args))
   end
end)

------------------------------------------------------------------------------------------

local sethumanoid = win:Tab("Set")

sethumanoid:Textbox("Walk Speed",true, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

sethumanoid:Textbox("Jump Power",true, function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
end)

sethumanoid:Button("Inf Jump", function()
  local InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)


local teleport = win:Tab("Teleport")

teleport:Button("Lower Player In Sever", function()
      loadstring(game:HttpGet("https://github.com/fomm1802/101/raw/main/Lower%20Player%20In%20Sever.lua"))()
end)

teleport:Button("Hopper Sever", function()
  loadstring(game:HttpGet("https://github.com/fomm1802/101/raw/main/Hopper%20Server.lua"))()
end)

local change = win:Tab("Change UI Color")

change:Bind("Bind",Enum.KeyCode.K, function()
print("Pressed!")
end)

change:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)
