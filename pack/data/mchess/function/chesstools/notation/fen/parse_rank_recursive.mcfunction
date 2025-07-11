execute store result storage mchess:chesstools square.file int 1 run scoreboard players set .chesstools.file mchess 1
data modify storage mchess:stringtools string set from storage mchess:stringtools segments[0]
data remove storage mchess:stringtools segments[0]
function mchess:stringtools/foreach {callback:"function mchess:chesstools/notation/fen/parse_piece"}

execute store result storage mchess:chesstools square.rank int 1 run scoreboard players remove .chesstools.rank mchess 1
execute if score .chesstools.rank mchess matches 1.. run return run function mchess:chesstools/notation/fen/parse_rank_recursive