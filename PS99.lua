loadstring(game:Http("https://raw.githubusercontent.com/fomm1802/101/main/AFK.lua"))()
wait(5)
while true do
    local args = {
        [1] = "cea0c738815e4f0cb680ad58ddf6a781",
        [2] = 54
    }
    
    game:GetService("ReplicatedStorage").Network.CustomEggs_Hatch:InvokeServer(unpack(args))
    wait(.1)
end