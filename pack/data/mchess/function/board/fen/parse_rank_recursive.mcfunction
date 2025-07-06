execute store result storage mchess:stringtools square.file int 1 run scoreboard players set .stringtools.square.file mchess 1
data modify storage mchess:stringtools string set from storage mchess:stringtools segments[0]
data remove storage mchess:stringtools segments[0]
function mchess:stringtools/foreach {callback:"function mchess:board/fen/parse_piece"}

execute store result storage mchess:stringtools square.rank int 1 run scoreboard players remove .stringtools.square.rank mchess 1
execute if score .stringtools.square.rank mchess matches 1.. run return run function mchess:board/fen/parse_rank_recursive