$data modify storage mchess:chesstools callback set value "$(callback)"

execute store result storage mchess:chesstools i int 1 run scoreboard players set .chesstools.i mchess 0
function mchess:chesstools/foreach_piece.recursive with storage mchess:chesstools