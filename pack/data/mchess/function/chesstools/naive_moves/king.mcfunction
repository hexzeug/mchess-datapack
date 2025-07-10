# Naive King Moves

# 1 up
execute store result storage mchess:chesstools square.rank int 1 run scoreboard players add .chesstools.square.rank mchess 1

# moves (up)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 right
execute store result storage mchess:chesstools square.file int 1 run scoreboard players add .chesstools.square.file mchess 1

# moves (up right)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 down
execute store result storage mchess:chesstools square.rank int 1 run scoreboard players remove .chesstools.square.rank mchess 1

# moves (right)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 down
execute store result storage mchess:chesstools square.rank int 1 run scoreboard players remove .chesstools.square.rank mchess 1

# moves (down right)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 left
execute store result storage mchess:chesstools square.file int 1 run scoreboard players remove .chesstools.square.file mchess 1

# moves (down)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 left
execute store result storage mchess:chesstools square.file int 1 run scoreboard players remove .chesstools.square.file mchess 1

# moves (down left)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 up
execute store result storage mchess:chesstools square.rank int 1 run scoreboard players add .chesstools.square.rank mchess 1

# moves (left)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 up
execute store result storage mchess:chesstools square.rank int 1 run scoreboard players add .chesstools.square.rank mchess 1

# moves (up left)
execute if function mchess:chesstools/naive_moves/square run data modify storage mchess:chesstools moves append from storage mchess:chesstools move
