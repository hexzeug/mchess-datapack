execute as @e[tag=mchess.piece] run function mchess:physical_board/gc_entity with entity @s
function mchess:chesstools/foreach_piece {callback:"function mchess:physical_board/flush.callback"}