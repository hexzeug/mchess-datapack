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
execute store result score .pointer.ray.x mchess run data get entity @n[tag=mchess.ray] Pos[0] 1000000
execute store result score .pointer.ray.y mchess run data get entity @n[tag=mchess.ray] Pos[1] 1000000
execute store result score .pointer.ray.z mchess run data get entity @n[tag=mchess.ray] Pos[2] 1000000

execute at @s positioned 0 0 0 align xyz run tp @n[tag=mchess.ray] ^ ^ ^1
execute store result score .pointer.ray.dx mchess run data get entity @n[tag=mchess.ray] Pos[0] 1000
execute store result score .pointer.ray.dy mchess run data get entity @n[tag=mchess.ray] Pos[1] 1000
execute store result score .pointer.ray.dz mchess run data get entity @n[tag=mchess.ray] Pos[2] 1000

kill @e[tag=mchess.ray]

# calculate ray length

scoreboard players set .pointer.point.y mchess 128000000

scoreboard players operation .pointer.ray mchess = .pointer.point.y mchess
scoreboard players operation .pointer.ray mchess -= .pointer.ray.y mchess
scoreboard players operation .pointer.ray mchess /= .pointer.ray.dy mchess

# no section between ray and plane if

# divide by zero
execute if score .pointer.ray.dy mchess matches 0 run return fail

# negative ray length
execute if score .pointer.ray mchess matches ..0 run return fail

# calculate section of ray and chess plane

scoreboard players operation .pointer.point.x mchess = .pointer.ray.dx mchess
scoreboard players operation .pointer.point.x mchess *= .pointer.ray mchess
scoreboard players operation .pointer.point.x mchess += .pointer.ray.x mchess
scoreboard players operation .pointer.point.z mchess = .pointer.ray.dz mchess
scoreboard players operation .pointer.point.z mchess *= .pointer.ray mchess
scoreboard players operation .pointer.point.z mchess += .pointer.ray.z mchess

# calculate chess square
scoreboard players add .pointer.point.x mchess 2000000
scoreboard players add .pointer.point.z mchess 2000000
execute store result storage mchess:chesstools square.rank int 0.0000005 run scoreboard players get .pointer.point.x mchess
execute store result storage mchess:chesstools square.file int 0.0000005 run scoreboard players get .pointer.point.z mchess
execute unless score .pointer.point.x mchess matches 2000000..17999999 run data remove storage mchess:chesstools square
execute unless score .pointer.point.z mchess matches 2000000..17999999 run data remove storage mchess:chesstools square

return run execute if data storage mchess:chesstools square