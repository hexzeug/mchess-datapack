# Calculation:
# 
# ray.x + r * ray.dx = point.x
# ray.y + r * ray.dy = point.y = 128000
# ray.z + r * ray.dz = point.z
# 
# r = (128000 - ray.y) / ray.dy
# 

# grab ray vectors

execute at @s anchored eyes run summon marker ^ ^ ^ {Tags:["chessmc","chessmc.ray"]}
execute store result score @s chessmc.ray.x run data get entity @n[tag=chessmc.ray] Pos[0] 1000000
execute store result score @s chessmc.ray.y run data get entity @n[tag=chessmc.ray] Pos[1] 1000000
execute store result score @s chessmc.ray.z run data get entity @n[tag=chessmc.ray] Pos[2] 1000000

execute at @s positioned 0 0 0 align xyz run tp @n[tag=chessmc.ray] ^ ^ ^1
execute store result score @s chessmc.ray.dx run data get entity @n[tag=chessmc.ray] Pos[0] 1000
execute store result score @s chessmc.ray.dy run data get entity @n[tag=chessmc.ray] Pos[1] 1000
execute store result score @s chessmc.ray.dz run data get entity @n[tag=chessmc.ray] Pos[2] 1000

kill @e[tag=chessmc.ray]

# calculate ray length

scoreboard players set @s chessmc.point.y 128000000

scoreboard players operation @s chessmc.ray = @s chessmc.point.y
scoreboard players operation @s chessmc.ray -= @s chessmc.ray.y
scoreboard players operation @s chessmc.ray /= @s chessmc.ray.dy

# no section between ray and plane if

# divide by zero
execute if score @s chessmc.ray.dy matches 0 run return fail

# negative ray length
execute if score @s chessmc.ray matches ..0 run return fail

# calculate section of ray and chess plane

scoreboard players operation @s chessmc.point.x = @s chessmc.ray.dx
scoreboard players operation @s chessmc.point.x *= @s chessmc.ray
scoreboard players operation @s chessmc.point.x += @s chessmc.ray.x
scoreboard players operation @s chessmc.point.z = @s chessmc.ray.dz
scoreboard players operation @s chessmc.point.z *= @s chessmc.ray
scoreboard players operation @s chessmc.point.z += @s chessmc.ray.z

# debug

kill @e[tag=chessmc.point]
summon marker 0 0 0 {Tags:["chessmc","chessmc.point"]}
execute store result entity @n[tag=chessmc.point] Pos[0] double 0.000001 run scoreboard players get @s chessmc.point.x
execute store result entity @n[tag=chessmc.point] Pos[1] double 0.000001 run scoreboard players get @s chessmc.point.y
execute store result entity @n[tag=chessmc.point] Pos[2] double 0.000001 run scoreboard players get @s chessmc.point.z

return run scoreboard players get @s chessmc.ray