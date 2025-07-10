$execute unless data storage mchess:chesstools board.pieces[$(i)] run return 1

$data modify storage mchess:chesstools piece set from storage mchess:chesstools board.pieces[$(i)]
$$(callback)
$data modify storage mchess:chesstools board.pieces[$(i)] set from storage mchess:chesstools piece

execute store result storage mchess:chesstools i int 1 run scoreboard players add .chesstoools.i mchess 1
return run function mchess:chesstools/foreach_piece.recursive with storage mchess:chesstools