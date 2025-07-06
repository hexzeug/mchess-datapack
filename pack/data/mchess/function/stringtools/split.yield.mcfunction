$data modify storage mchess:stringtools segments append string storage mchess:stringtools string $(start) $(i)

execute store result storage mchess:stringtools start int 1 run scoreboard players add .stringtools.i mchess 1
scoreboard players remove .stringtools.i mchess 1