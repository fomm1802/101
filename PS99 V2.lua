local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ShaddowScripts/Main/main/Library"))()

local Main = library:CreateWindow("Main", "Crimson")

local tab = Main:CreateTab("Cheats")
local tab2 = Main:CreateTab("Misc")

tab:CreateButton("Hi", function()
    print("clicked")
end)

tab:CreateToggle("Farm", function(a)
    print(a)
end)

tab:CreateDropdown("Word", {"Sung", "Jin", "Woo"}, function(a)
    print(a)
end)

tab2:CreateButton("Hello", function()
    print("clicked")
end)

-- Adding the new toggle for CrystalKey
tab:CreateToggle("Auto Unlock CrystalKey", function(state)
    _G.CrystalKey = state
    while _G.CrystalKey do
        wait(0.1)
        game:GetService("ReplicatedStorage").Network.CrystalKey_Unlock:InvokeServer()
    end
end)

tab:Show()
