# Naive Pawn Moves (excludes en passant)

# 1 forwards
$execute store result storage mchess:chesstools square.rank int 1 run scoreboard players operation .chesstoools.square.rank mchess += #pawn.$(color) mchess

# 1 queenwards
execute store result storage mchess:chesstools square.file int 1 run scoreboard players remove .chesstoools.square.file mchess 1

# takes queenside
execute store success storage mchess:chesstools success byte 1 run function mchess:chesstools/naive_moves/square with storage mchess:chesstools
execute if data storage mchess:chesstools {success:true} if data storage mchess:chesstools move.takes run data modify storage mchess:chesstools moves append from storage mchess:chesstools move
data remove storage mchess:chesstools move.takes

# 2 kingwards
execute store result storage mchess:chesstools square.file int 1 run scoreboard players add .chesstoools.square.file mchess 2

# takes kingside
execute store success storage mchess:chesstools success byte 1 run function mchess:chesstools/naive_moves/square with storage mchess:chesstools
execute if data storage mchess:chesstools {success:true} if data storage mchess:chesstools move.takes run data modify storage mchess:chesstools moves append from storage mchess:chesstools move
data remove storage mchess:chesstools move.takes

# 1 queenwards
execute store result storage mchess:chesstools square.file int 1 run scoreboard players remove .chesstoools.square.file mchess 1

# pushes
execute store success storage mchess:chesstools success byte 1 run function mchess:chesstools/naive_moves/square with storage mchess:chesstools
# (stop here if no pushing)
execute if data storage mchess:chesstools {success:false} run return 1
execute if data storage mchess:chesstools move.takes run return 1
data modify storage mchess:chesstools moves append from storage mchess:chesstools move

# if on homesquare continue with double push
execute unless data storage mchess:chesstools piece{color:"w",pos:{rank:2}} unless data storage mchess:chesstools piece{color:"b",pos:{rank:7}} run return 1

# 1 forwards
$execute store result storage mchess:chesstools square.rank int 1 run scoreboard players operation .chesstoools.square.rank mchess += #pawn.$(color) mchess

# double pushes
execute store success storage mchess:chesstools success byte 1 run function mchess:chesstools/naive_moves/square with storage mchess:chesstools
execute if data storage mchess:chesstools {success:true} unless data storage mchess:chesstools move.takes run data modify storage mchess:chesstools moves append from storage mchess:chesstools move
return 1