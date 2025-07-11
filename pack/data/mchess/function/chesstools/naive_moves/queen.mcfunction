# Naive Queen Moves

# move like bishop
function mchess:chesstools/naive_moves/rook

# reset
data modify storage mchess:chesstools move.square set from storage mchess:chesstools move.piece.pos
execute store result score .chesstools.file mchess run data get storage mchess:chesstools move.square.file
execute store result score .chesstools.rank mchess run data get storage mchess:chesstools move.square.rank

# move like rook
function mchess:chesstools/naive_moves/bishop