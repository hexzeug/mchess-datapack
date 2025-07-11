# Applies lightweigt move: only updates piece list (use commit_move to update everything)

execute if data storage mchess:chesstools move.capture run function mchess:chesstools/apply_move.take with storage mchess:chesstools move
function mchess:chesstools/apply_move.macro with storage mchess:chesstools move
execute if data storage mchess:chesstools move.castle run function mchess:chesstools/apply_move.macro with storage mchess:chesstools move.castle