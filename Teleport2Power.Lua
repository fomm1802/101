local player = game.Players.LocalPlayer
local guiName = "TeleportGUI"

local function createTeleportGUI()
    local gui = Instance.new("ScreenGui")
    gui.Name = guiName
    gui.Parent = player.PlayerGui

    local teleportButton = Instance.new("TextButton")
    teleportButton.Name = "Teleport2PowerButton"
    teleportButton.Size = UDim2.new(0, 100, 0, 30)
    teleportButton.Position = UDim2.new(0, 20, 0, 20)
    teleportButton.Text = "Teleport2Power"
    teleportButton.Parent = gui

    local function teleportToPower()
        local character = player.Character

        if character then
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(7222.16113, 105.724327, 8253.28613, 0.995737731, 1.08461746e-08, -0.0922302008, -1.6936017e-08, 1, -6.52460486e-08, 0.0922302008, 6.65299567e-08, 0.995737731)
        end
    end

    teleportButton.MouseButton1Click:Connect(function()
        teleportToPower()
    end)
end

local function deleteTeleportGUI()
    local gui = player.PlayerGui:FindFirstChild(guiName)
    if gui then
        gui:Destroy()
    end
end

deleteTeleportGUI() -- ลบ GUI เมื่อรันโค้ดอีกครั้ง
createTeleportGUI() -- สร้าง GUI ใหม่



loadstring(game:HttpGet("https://raw.githubusercontent.com/bunnynwy/games/main/animesmash_mobile"))()
