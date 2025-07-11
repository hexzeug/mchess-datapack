# Naive Knight Moves
# directions are given from whites perspective

# 2 up 1 left
execute store result storage mchess:chesstools move.square.rank int 1 run scoreboard players add .chesstools.rank mchess 2
execute store result storage mchess:chesstools move.square.file int 1 run scoreboard players remove .chesstools.file mchess 1

# moves (top left)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 2 right
execute store result storage mchess:chesstools move.square.file int 1 run scoreboard players add .chesstools.file mchess 2

# moves (top right)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 4 down
execute store result storage mchess:chesstools move.square.rank int 1 run scoreboard players remove .chesstools.rank mchess 4

# moves (down right)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 2 left
execute store result storage mchess:chesstools move.square.file int 1 run scoreboard players remove .chesstools.file mchess 2

# moves (down left)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 up 1 left
execute store result storage mchess:chesstools move.square.rank int 1 run scoreboard players add .chesstools.rank mchess 1
execute store result storage mchess:chesstools move.square.file int 1 run scoreboard players remove .chesstools.file mchess 1

# moves (left down)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 2 up
execute store result storage mchess:chesstools move.square.rank int 1 run scoreboard players add .chesstools.rank mchess 2

# moves (left up)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 4 right
execute store result storage mchess:chesstools move.square.file int 1 run scoreboard players add .chesstools.file mchess 4

# moves (right up)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 2 down
execute store result storage mchess:chesstools move.square.rank int 1 run scoreboard players remove .chesstools.rank mchess 2

# moves (right down)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move
