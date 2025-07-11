# cannot capture same color pieces
$execute if data storage mchess:chesstools move.piece{color:"w"} if data storage mchess:chesstools board.pieces[{color:"w",pos:$(square)}] run return fail
$execute if data storage mchess:chesstools move.piece{color:"b"} if data storage mchess:chesstools board.pieces[{color:"b",pos:$(square)}] run return fail

# set capture
$data modify storage mchess:chesstools move.capture set from storage mchess:chesstools board.pieces[{pos:$(square)}]

return 1