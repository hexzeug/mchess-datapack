# Naive Rook Moves

# move up
scoreboard players set .chesstools.delta.file mchess 0
scoreboard players set .chesstools.delta.rank mchess 1
function mchess:chesstools/naive_moves/line

# reset
data modify storage mchess:chesstools move.square set from storage mchess:chesstools move.piece.pos
execute store result score .chesstools.file mchess run data get storage mchess:chesstools move.square.file
execute store result score .chesstools.rank mchess run data get storage mchess:chesstools move.square.rank

# move down
scoreboard players set .chesstools.delta.rank mchess -1
function mchess:chesstools/naive_moves/line

# reset
data modify storage mchess:chesstools move.square set from storage mchess:chesstools move.piece.pos
execute store result score .chesstools.file mchess run data get storage mchess:chesstools move.square.file
execute store result score .chesstools.rank mchess run data get storage mchess:chesstools move.square.rank

# move left
scoreboard players set .chesstools.delta.file mchess -1
scoreboard players set .chesstools.delta.rank mchess 0
function mchess:chesstools/naive_moves/line

# reset
data modify storage mchess:chesstools move.square set from storage mchess:chesstools move.piece.pos
execute store result score .chesstools.file mchess run data get storage mchess:chesstools move.square.file
execute store result score .chesstools.rank mchess run data get storage mchess:chesstools move.square.rank

# move right
scoreboard players set .chesstools.delta.file mchess 1
function mchess:chesstools/naive_moves/line