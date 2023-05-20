local player = game.Players.LocalPlayer
local respawnTime = 5 -- เวลาที่ต้องรอก่อนรันสคริปต์ใหม่ (วินาที)

local function respawn()
    -- ส่วนของโค้ดที่ต้องการให้ทำงานเมื่อผู้เล่นตาย
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bunnynwy/games/main/animesmash_mobile"))()
    -- เพิ่มโค้ดเพิ่มเติมที่ต้องการให้ทำงานเมื่อผู้เล่นตายที่นี่
    -- เช่น teleport หรือสร้างการเริ่มต้นใหม่

    wait(respawnTime)
    respawn()
end

local function checkPlayerDeath()
    local character = player.Character
    if character and character.Humanoid.Health <= 0 then
        respawn()
    end
end

while true do
    checkPlayerDeath()
    wait(1)
end

