local player = game.Players.LocalPlayer
local guiName = "TeleportGUI"
local gui = nil

local function createTeleportGUI()
    gui = Instance.new("ScreenGui")
    gui.Name = guiName
    gui.Parent = player.PlayerGui

    local teleportButton1 = Instance.new("TextButton")
    teleportButton1.Name = "Teleport2PowerButton"
    teleportButton1.Size = UDim2.new(0, 100, 0, 30)
    teleportButton1.Position = UDim2.new(0, 20, 0, 20)
    teleportButton1.Text = "Teleport2Power"
    teleportButton1.Parent = gui

    local teleportButton2 = Instance.new("TextButton")
    teleportButton2.Name = "Teleport4Power"
    teleportButton2.Size = UDim2.new(0, 100, 0, 30)
    teleportButton2.Position = UDim2.new(0, 20, 0, 60)
    teleportButton2.Text = "Teleport4Power"
    teleportButton2.Parent = gui

    local function teleportToPower()
        local character = player.Character

        if character then
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(7222.16113, 105.724327, 8253.28613, 0.995737731, 1.08461746e-08, -0.0922302008, -1.6936017e-08, 1, -6.52460486e-08, 0.0922302008, 6.65299567e-08, 0.995737731)
        end
    end

    local function teleportToLocation()
        local character = player.Character

        if character then
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(52096.6953, 14.2700634, 8540.89551, -0.754095137, -6.27458547e-08, -0.656765163, -2.58641322e-08, 1, -6.58406449e-08, 0.656765163, -3.26634471e-08, -0.754095137)
        end
    end

    teleportButton1.MouseButton1Click:Connect(function()
        teleportToPower()
    end)

    teleportButton2.MouseButton1Click:Connect(function()
        teleportToLocation()
    end)
end

local function deleteTeleportGUI()
    if gui then
        gui:Destroy()
        gui = nil
    end
end

deleteTeleportGUI()
createTeleportGUI()
