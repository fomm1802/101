local gameScripts = {
    [14491001128] = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Paragon",
    [13772394625] = "https://api.luarmor.net/files/v3/loaders/8555f27454c952fb960ba00a4cd3f8f6.lua"
}

-- ตรวจสอบ PlaceId และโหลดสคริปต์เกมเฉพาะ
local currentPlaceId = game.PlaceId
local scriptURL = gameScripts[currentPlaceId]

if scriptURL then
    local success, result = pcall(function()
        return game:HttpGet(scriptURL)
    end)

    if success then
        local scriptFunction = loadstring(result)
        if scriptFunction then
            scriptFunction()
            print("โหลดสคริปต์เกมสำเร็จ")
        else
            print("เกิดข้อผิดพลาดในการโหลดสคริปต์เกม")
        end
    else
        print("เกิดข้อผิดพลาดในการดาวน์โหลดสคริปต์เกม")
    end
else
    print("เกมนี้ไม่ได้ใส่สคริปต์ไว้")
end
