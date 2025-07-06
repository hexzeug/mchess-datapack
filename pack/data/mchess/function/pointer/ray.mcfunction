# Calculation:
# 
# ray.x + r * ray.dx = point.x
# ray.y + r * ray.dy = point.y = 128000
# ray.z + r * ray.dz = point.z
# 
# r = (128000 - ray.y) / ray.dy
# 

# grab ray vectors

execute at @s anchored eyes run summon marker ^ ^ ^ {Tags:["mchess","mchess.ray"]}
execute store result score @s mchess.ray.x run data get entity @n[tag=mchess.ray] Pos[0] 1000000
execute store result score @s mchess.ray.y run data get entity @n[tag=mchess.ray] Pos[1] 1000000
execute store result score @s mchess.ray.z run data get entity @n[tag=mchess.ray] Pos[2] 1000000

execute at @s positioned 0 0 0 align xyz run tp @n[tag=mchess.ray] ^ ^ ^1
execute store result score @s mchess.ray.dx run data get entity @n[tag=mchess.ray] Pos[0] 1000
execute store result score @s mchess.ray.dy run data get entity @n[tag=mchess.ray] Pos[1] 1000
execute store result score @s mchess.ray.dz run data get entity @n[tag=mchess.ray] Pos[2] 1000

kill @e[tag=mchess.ray]

# calculate ray length

scoreboard players set @s mchess.point.y 128000000

scoreboard players operation @s mchess.ray = @s mchess.point.y
scoreboard players operation @s mchess.ray -= @s mchess.ray.y
scoreboard players operation @s mchess.ray /= @s mchess.ray.dy

# no section between ray and plane if

# divide by zero
execute if score @s mchess.ray.dy matches 0 run return fail

# negative ray length
execute if score @s mchess.ray matches ..0 run return fail

# calculate section of ray and chess plane

scoreboard players operation @s mchess.point.x = @s mchess.ray.dx
scoreboard players operation @s mchess.point.x *= @s mchess.ray
scoreboard players operation @s mchess.point.x += @s mchess.ray.x
scoreboard players operation @s mchess.point.z = @s mchess.ray.dz
scoreboard players operation @s mchess.point.z *= @s mchess.ray
scoreboard players operation @s mchess.point.z += @s mchess.ray.z

# debug

kill @e[tag=mchess.point]
summon marker 0 0 0 {Tags:["mchess","mchess.point"]}
execute store result entity @n[tag=mchess.point] Pos[0] double 0.000001 run scoreboard players get @s mchess.point.x
execute store result entity @n[tag=mchess.point] Pos[1] double 0.000001 run scoreboard players get @s mchess.point.y
execute store result entity @n[tag=mchess.point] Pos[2] double 0.000001 run scoreboard players get @s mchess.point.z

return run scoreboard players get @s mchess.ray