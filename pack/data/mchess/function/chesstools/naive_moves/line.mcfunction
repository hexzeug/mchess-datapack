# apply delta to square
execute store result storage mchess:chesstools move.square.file int 1 run scoreboard players operation .chesstools.file mchess += .chesstools.delta.file mchess
execute store result storage mchess:chesstools move.square.rank int 1 run scoreboard players operation .chesstools.rank mchess += .chesstools.delta.rank mchess

# return if move not possible
execute unless function mchess:chesstools/naive_moves/square run return 1

# moves
data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# recurse unless capture
execute unless data storage mchess:chesstools move.capture run function mchess:chesstools/naive_moves/line