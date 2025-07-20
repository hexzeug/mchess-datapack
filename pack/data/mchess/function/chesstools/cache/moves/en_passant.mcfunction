# set piece (without position)
$data modify storage mchess:chesstools move.piece set value {type:"",color:"$(active_color)"}

# set moves square to en passant square
data modify storage mchess:chesstools move.square set from storage mchess:chesstools board.en_passant
execute store result score .chesstools.file mchess run data get storage mchess:chesstools move.square.file
execute store result score .chesstools.rank mchess run data get storage mchess:chesstools move.square.rank

# 1 up / down (depending on opponents pawn direction)
$execute store result storage mchess:chesstools move.square.rank int 1 run scoreboard players operation .chesstools.rank mchess -= #pawn.$(active_color) mchess

# set capturing piece
execute unless function mchess:chesstools/naive_moves/square run return fail
execute unless data storage mchess:chesstools move.capture{type:""} run return fail

# set pieces position to capturing position and moves square back to en passant square
data modify storage mchess:chesstools move.piece.pos set from storage mchess:chesstools move.square
data modify storage mchess:chesstools move.square set from storage mchess:chesstools board.en_passant

# move 1 left
execute store result storage mchess:chesstools move.piece.pos.file int 1 run scoreboard players remove .chesstools.file mchess 1

# en passant (if same color pawn on the left)
function mchess:chesstools/cache/moves/en_passant.macro with storage mchess:chesstools move

# move 2 right
execute store result storage mchess:chesstools move.piece.pos.file int 1 run scoreboard players add .chesstools.file mchess 2

# en passant (if same color pawn on the right)
function mchess:chesstools/cache/moves/en_passant.macro with storage mchess:chesstools move