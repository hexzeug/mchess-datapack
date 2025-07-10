# Naive Move to Square

# cannot move out of bounds
execute unless score .chesstoools.square.file mchess matches 1..8 unless score .chesstoools.square.rank mchess matches 1..8 run return fail

# cannot capture same color pieces
$execute if data storage mchess:chesstools piece{color:"w"} if data storage mchess:chesstools board.pieces[{color:"w",pos:$(square)}] run return fail
$execute if data storage mchess:chesstools piece{color:"b"} if data storage mchess:chesstools board.pieces[{color:"b",pos:$(square)}] run return fail

# set square
data modify storage mchess:chesstools move.square set from storage mchess:chesstools square

# set capture
data remove storage mchess:chesstools move.capture
$data modify storage mchess:chesstools move.capture set from storage mchess:chesstools board.pieces[{pos:$(square)}]

return 1