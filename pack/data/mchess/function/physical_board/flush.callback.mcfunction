data modify storage mchess:chesstools square set from storage mchess:chesstools piece.pos

execute if data storage mchess:chesstools piece.entity run function mchess:physical_board/at_square {callback:"function mchess:physical_board/move_piece with storage mchess:chesstools piece"}
execute unless data storage mchess:chesstools piece.entity run function mchess:physical_board/at_square {callback:"function mchess:physical_board/spawn_piece"}