tellraw @a {text:"Loaded MChess (Datapack Edition)!"}

gamerule maxCommandChainLength 1000000

forceload add -1 -1 0 0
place template mchess:board/planks 0 127 0

scoreboard objectives add mchess dummy
scoreboard players set #pawn.w mchess 1
scoreboard players set #pawn.b mchess -1

# ray calculation
scoreboard objectives add mchess.ray.x dummy
scoreboard objectives add mchess.ray.y dummy
scoreboard objectives add mchess.ray.z dummy
scoreboard objectives add mchess.ray.dx dummy
scoreboard objectives add mchess.ray.dy dummy
scoreboard objectives add mchess.ray.dz dummy
scoreboard objectives add mchess.ray dummy
scoreboard objectives add mchess.point.x dummy
scoreboard objectives add mchess.point.y dummy
scoreboard objectives add mchess.point.z dummy


# clear cache
data remove storage mchess:chesstools board.cache