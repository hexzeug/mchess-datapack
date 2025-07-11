# execute as @a run function mchess:pointer/ray

# execute at @e[tag=mchess.point] run particle crit ~ ~ ~ 0 0 0 0.1 10 force

execute if score .exec_flags.generate_moves mchess matches 1.. run tellraw @a [{text:"Error: failed generating moves (at depth = ",color:"red"},{score:{objective:"mchess",name:".exec_flags.generate_moves"}},{text:"). "},{text:"Please increase the maximum command chain length",underlined:true,click_event:{action:"suggest_command",command:"/gamerule maxCommandChainLength "}}]
execute if score .exec_flags.generate_moves mchess matches 1.. run scoreboard players reset .exec_flags.generate_moves mchess
