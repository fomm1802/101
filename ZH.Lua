-- สร้างตัวแปรสำหรับเก็บค่าต่างๆ
local health = 100 -- ค่าสุขภาพของผู้เล่น
local ammo = 10 -- จำนวนกระสุนที่ผู้เล่นมี
local zombies = 0 -- จำนวนซอมบี้ที่ผู้เล่นฆ่าได้
local maxZombies = 100 -- จำนวนซอมบี้สูงสุดที่จะปรากฏในเกม
local gameOver = false -- ตัวแปรสำหรับเช็คว่าเกมจบหรือยัง

-- สร้างฟังก์ชันสำหรับแสดงข้อความบนหน้าจอ
local function printMessage(message)
  print(message) -- ใช้ฟังก์ชัน print ของ Lua เพื่อแสดงข้อความ
end

-- สร้างฟังก์ชันสำหรับยิงกระสุน
local function shoot()
  if ammo > 0 then -- เช็คว่ามีกระสุนเหลือหรือไม่
    ammo = ammo - 1 -- ลดจำนวนกระสุนลง 1
    zombies = zombies + 1 -- เพิ่มจำนวนซอมบี้ที่ฆ่าได้ 1
    printMessage("Bang! You killed a zombie.") -- แสดงข้อความว่าฆ่าซอมบี้ได้
    printMessage("You have " .. ammo .. " bullets left.") -- แสดงจำนวนกระสุนที่เหลือ
  else -- ถ้าไม่มีกระสุนเหลือ
    printMessage("Click! You are out of ammo.") -- แสดงข้อความว่าหมดกระสุน
  end
end

-- สร้างฟังก์ชันสำหรับเติมกระสุน
local function reload()
  ammo = 10 -- กำหนดจำนวนกระสุนให้เท่ากับ 10
  printMessage("You reloaded your gun.") -- แสดงข้อความว่าเติมกระสุนแล้ว
  printMessage("You have " .. ammo .. " bullets.") -- แสดงจำนวนกระสุนที่มี
end

-- สร้างฟังก์ชันสำหรับรับความเสียหายจากซอมบี้
local function takeDamage(damage)
  health = health - damage -- ลดค่าสุขภาพลงตามความเสียหายที่รับ
  printMessage("Ouch! You took " .. damage .. " damage.") -- แสดงข้อความว่ารับความเสียหาย
  printMessage("You have " .. health .. " health left.") -- แสดงค่าสุขภาพที่เหลือ
  if health <= 0 then -- เช็คว่าค่าสุขภาพเหลือหรือไม่
    gameOver = true -- กำหนดตัวแปร gameOver เป็น true
    printMessage("You are dead. Game over.") -- แสดงข้อความว่าตายและเกมจบ
  end
end

-- สร้างฟังก์ชันสำหรับเริ่มเกม
local function startGame()
  printMessage("Welcome to Zombie Hunter!") -- แสดงข้อความต้อนรับ
  printMessage("You have a gun with 10 bullets.") -- แสดงข้อความเกี่ยวกับกระสุน
  printMessage("There are " .. maxZombies .. " zombies coming for you.") -- แสดงข้อความเกี่ยวกับซอมบี้
  printMessage("Press S to shoot, R to reload, and Q to quit.") -- แสดงข้อความเกี่ยวกับการควบคุม
end

-- เรียกฟังก์ชัน startGame เพื่อเริ่มเกม
startGame()

-- สร้างลูปสำหรับรับคำสั่งจากผู้เล่น
while not gameOver do -- ทำซ้ำไปเรื่อยๆจนกว่าเกมจะจบ
  local command = io.read() -- รับคำสั่งจากผู้เล่น
  if command == "S" or command == "s" then -- ถ้าคำสั่งเป็น S หรือ s
    shoot() -- เรียกฟังก์ชัน shoot
  elseif command == "R" or command == "r" then -- ถ้าคำสั่งเป็น R หรือ r
    reload() -- เรียกฟังก์ชัน reload
  elseif command == "Q" or command == "q" then -- ถ้าคำสั่งเป็น Q หรือ q
    gameOver = true -- กำหนดตัวแปร gameOver เป็น true
    printMessage("You quit the game.") -- แสดงข้อความว่าออกจากเกม
  else -- ถ้าคำสั่งไม่ใช่ S, R, หรือ Q
    printMessage("Invalid command. Please try again.") -- แสดงข้อความว่าคำสั่งไม่ถูกต้อง
  end
end
