# Naive Pawn Moves (excludes en passant)

# 1 forwards
$execute store result storage mchess:chesstools square.rank int 1 run scoreboard players operation .chesstools.square.rank mchess += #pawn.$(color) mchess

# 1 queenwards
execute store result storage mchess:chesstools square.file int 1 run scoreboard players remove .chesstools.square.file mchess 1

# takes queenside
execute if function mchess:chesstools/naive_moves/square if data storage mchess:chesstools move.capture run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 2 kingwards
execute store result storage mchess:chesstools square.file int 1 run scoreboard players add .chesstools.square.file mchess 2

# takes kingside
execute if function mchess:chesstools/naive_moves/square if data storage mchess:chesstools move.capture run data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# 1 queenwards
execute store result storage mchess:chesstools square.file int 1 run scoreboard players remove .chesstools.square.file mchess 1

# (stop here if no pushing)
execute unless function mchess:chesstools/naive_moves/square run return 1
execute if data storage mchess:chesstools move.capture run return 1

# pushes
data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# (stop here if not on home square = no double push possible)
execute unless data storage mchess:chesstools piece{color:"w",pos:{rank:2}} unless data storage mchess:chesstools piece{color:"b",pos:{rank:7}} run return 1

# 1 forwards
$execute store result storage mchess:chesstools square.rank int 1 run scoreboard players operation .chesstools.square.rank mchess += #pawn.$(color) mchess

# double pushes
execute if function mchess:chesstools/naive_moves/square unless data storage mchess:chesstools move.capture run data modify storage mchess:chesstools moves append from storage mchess:chesstools move
return 1