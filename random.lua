-- Initialize the random seed using the system time
math.randomseed(os.time())

function generate_minecraft_seed()
    -- Generate two 32-bit halves
    local high = math.random(0, 0xFFFFFFFF)
    local low  = math.random(0, 0xFFFFFFFF)
    
    -- Combine them into a single 64-bit integer
    local seed = (high << 32) | low
    
    return seed
end

print("Your Minecraft Seed: " .. generate_minecraft_seed())
print("Your Seed Map: https://map.jacobsjo.eu/?seed=" ..generate_minecraft_seed())
