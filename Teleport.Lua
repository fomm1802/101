local player = game.Players.LocalPlayer
local guiName = "TeleportGUI"

local function createTeleportGUI()
    local gui = Instance.new("ScreenGui")
    gui.Name = guiName
    gui.Parent = player.PlayerGui

    local teleportButton1 = Instance.new("TextButton")
    teleportButton1.Name = "Teleport2PowerButton"
    teleportButton1.Size = UDim2.new(0, 100, 0, 30)
    teleportButton1.Position = UDim2.new(0, 20, 0, 20)
    teleportButton1.Text = "Teleport2Power"
    teleportButton1.Parent = gui

    local teleportButton2 = Instance.new("TextButton")
    teleportButton2.Name = "Rush Mode"
    teleportButton2.Size = UDim2.new(0, 100, 0, 30)
    teleportButton2.Position = UDim2.new(0, 20, 0, 60)
    teleportButton2.Text = "Rush Mode"
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
            humanoidRootPart.CFrame = CFrame.new(-33452.1133, 42.1365967, 6613.29102, -1, 0, 0, 0, 1, 0, 0, 0, -1)
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
    local gui = player.PlayerGui:FindFirstChild(guiName)
    if gui then
        gui:Destroy()
    end
end

deleteTeleportGUI()
createTeleportGUI()
