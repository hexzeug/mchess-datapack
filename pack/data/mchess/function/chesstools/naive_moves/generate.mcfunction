scoreboard players add .exec_flags.generate_moves mchess 1
data modify storage mchess:chesstools moves set value []
function mchess:itertools/foreach {callback:"function mchess:chesstools/naive_moves/piece",iterable:"storage mchess:chesstools board.pieces",iterator:"storage mchess:chesstools move.piece"}
scoreboard players remove .exec_flags.generate_moves mchess 1