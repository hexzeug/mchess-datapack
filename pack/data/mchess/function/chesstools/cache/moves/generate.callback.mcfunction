data modify storage mchess:chesstools move set from storage mchess:chesstools speculative
function mchess:chesstools/apply_move
function mchess:chesstools/naive_moves/generate
data modify storage mchess:chesstools speculative.followups set from storage mchess:chesstools moves
data modify storage mchess:chesstools board.pieces set from storage mchess:chesstools rollback