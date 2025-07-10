# Naive Queen Moves

# move like bishop
function mchess:chesstools/naive_moves/rook

# reset
data modify storage mchess:chesstools square set from storage mchess:chesstools piece.pos
execute store result score .chesstools.square.file mchess run data get storage mchess:chesstools square.file
execute store result score .chesstools.square.rank mchess run data get storage mchess:chesstools square.rank

# move like rook
function mchess:chesstools/naive_moves/bishop