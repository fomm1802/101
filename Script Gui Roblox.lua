local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Tab 1")

tab:Button("Button", function()
lib:Notification("Notification", "Hello!", "Hi!")
end)

tab:Toggle("Toggle",false, function(t)
print(t)
end)

tab:Slider("Slider",0,100,30, function(t)
print(t)
end)

tab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(t)
print(t)
end)

tab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(t)
print(t)
end)

tab:Textbox("Textbox",true, function(t)
print(t)
end)

tab:Label("Label")

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
