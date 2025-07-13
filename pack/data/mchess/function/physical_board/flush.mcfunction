tag @e[tag=mchess.piece] add mchess.piece.wrong
execute as @e[tag=mchess.piece] run function mchess:physical_board/verify with entity @s

function mchess:itertools/foreach {callback:"function mchess:physical_board/at_square {callback:'function mchess:physical_board/flush.callback with storage mchess:chesstools piece'}",iterable:"storage mchess:chesstools board.pieces",iterator:"storage mchess:chesstools piece"}

kill @e[tag=mchess.piece.wrong]
