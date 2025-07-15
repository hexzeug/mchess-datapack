kill @e[tag=mchess.move]
function mchess:itertools/foreach {callback:"function mchess:physical_board/at_square {square:'storage mchess:chesstools move.square',callback:'function mchess:physical_board/display_moves.callback with storage mchess:chesstools move.piece'}",iterable:"storage mchess:chesstools moves",iterator:"storage mchess:chesstools move"}
