local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ShaddowScripts/Main/main/Library"))()

local Main = library:CreateWindow("Main","Crimson")

local tab = Main:CreateTab("Cheats")
local tab2 = Main:CreateTab("Misc")
local tab3 = Main:CreateTab("Error")

tab:CreateButton("Hi",function()
print("clicked")
end)

tab:CreateToggle("Farm",function(a)
print(a)
end)

tab:CreateSlider("Wow",1,16,function(a)
print(a)
end)

tab:CreateCheckbox("Aimbot",function(a)
print(a)
end)

tab:CreateDropdown("Word",{"Sung","Jin","Woo"},function(a)
print(a)
end)

tab2:CreateButton("Hello",function()
print("clicked")
end)

tab3:CreateButton("Lower Player in Sever",function()
loadstring(game:HttpGet("https://github.com/fomm1802/101/raw/main/Lower%20Player%20In%20Sever.lua"))()
end)

tab3:CreateButton("Hopper Sever",function()
loadstring(game:HttpGet("https://github.com/fomm1802/101/raw/main/Hopper%20Server.lua"))()
end)
tab:Show()
