tellraw @a {text:"Loaded MChess (Datapack Edition)!"}

gamerule maxCommandChainLength 1000000

forceload add -1 -1 0 0
place template mchess:board/planks 0 127 0

team add mchess.w
team modify mchess.w displayName {translate:"color.minecraft.white"}
team modify mchess.w color white

team add mchess.b
team modify mchess.b displayName {translate:"color.minecraft.black"}
team modify mchess.b color black

scoreboard objectives add mchess dummy
scoreboard players set #pawn.w mchess 1
scoreboard players set #pawn.b mchess -1


# clear cache
data remove storage mchess:chesstools board.cache