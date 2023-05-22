local gameScripts = {
    [11542692507] = "https://raw.githubusercontent.com/bunnynwy/games/main/animesouls",
    [11430505281] = "https://raw.githubusercontent.com/bunnynwy/games/main/animeweapon",
    [6777872443] = "https://raw.githubusercontent.com/bunnynwy/games/main/pixelpiece",
    [13120948763] = "https://raw.githubusercontent.com/bunnynwy/games/main/animesmash_mobile",
    [12995840870] = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0strongman",
    [10704789056] = "https://raw.githubusercontent.com/BrickPlayz/Public-Scripts/main/DriveWorld.lua",
    [12985134424] = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0clickerfight",
    [13234745978] = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0PunchaFriend",
    -- เพิ่มเกมอื่นๆ ตามต้องการ
}

-- ตรวจสอบ PlaceId และโหลดสคริปต์เกมเฉพาะ
local currentPlaceId = game.PlaceId
local scriptURL = gameScripts[currentPlaceId]

if scriptURL then
    loadstring(game:HttpGet(scriptURL))()
    print("โหลดสคริปต์เกมสำเร็จ")
else
    print("เกมนี้ไม่ได้ใส่สคริปต์ไว้")
end