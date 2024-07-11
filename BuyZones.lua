local names = {
    "Spawn",
    "Colorful Forest",
    "Castle",
    "Green Forest",
    "Autumn",
    "Cherry Blossom",
    "Farm",
    "Backyard",
    "Misty Falls",
    "Mine",
    "Chrystal Caverns",
    "Dead Forest",
    "Dark Forest",
    "Mushroom Field",
    "Enchanted Forest",
    "Crimson Forest",
    "Jungle",
    "Jungle Temple",
    "Oasis",
    "Beach",
    "Coral Reef",
    "Shipwreck",
    "Atlantis",
    "Palm Beach",
    "Tiki",
    "Pirate Cove",
    "Pirate Tavern",
    "Shanty Town",
    "Desert Village",
    "Fossil Digsite"
}

while true do
    for _, name in ipairs(names) do
        local args = { [1] = name }
        game:GetService("ReplicatedStorage").Network.Zones_RequestPurchase:InvokeServer(unpack(args))
        wait(0.1)
    end
end
