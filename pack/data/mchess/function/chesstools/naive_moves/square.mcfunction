data remove storage mchess:chesstools move.capture

# cannot move out of bounds
execute unless score .chesstools.file mchess matches 1..8 run return fail
execute unless score .chesstools.rank mchess matches 1..8 run return fail

return run function mchess:chesstools/naive_moves/square.macro with storage mchess:chesstools move