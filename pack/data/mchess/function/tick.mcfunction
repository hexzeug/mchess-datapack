execute if score .exec_flags.generate_moves mchess matches 1.. run tellraw @a [{text:"Error: failed generating moves (at depth = ",color:"red"},{score:{objective:"mchess",name:".exec_flags.generate_moves"}},{text:"). "},{text:"Please increase the maximum command chain length",underlined:true,click_event:{action:"suggest_command",command:"/gamerule maxCommandChainLength "}}]
execute if score .exec_flags.generate_moves mchess matches 1.. run scoreboard players reset .exec_flags.generate_moves mchess

execute as @e[tag=mchess.move.w] at @s run particle happy_villager ~ ~ ~ 1 1 1 0 0 normal @a[team=mchess.w]
execute as @e[tag=mchess.move.b] at @s run particle happy_villager ~ ~ ~ 1 1 1 0 0 normal @a[team=mchess.b]

function mchess:pointer/tick

function mchess:controls/godmode with storage mchess:chesstools board