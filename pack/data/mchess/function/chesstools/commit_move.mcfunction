# pieces
function mchess:chesstools/apply_move

# active color
execute if data storage mchess:chesstools move.piece{color:"w"} run data modify storage mchess:chesstools board.active_color set value "b"
execute if data storage mchess:chesstools move.piece{color:"b"} run data modify storage mchess:chesstools board.active_color set value "w"

# castling rights
execute if data storage mchess:chesstools move.piece{type:"K",color:"w"} run data remove storage mchess:chesstools board.castling.w
execute if data storage mchess:chesstools move.piece{type:"R",color:"w",pos:{file:1,rank:1}} run data remove storage mchess:chesstools board.castling.w.long
execute if data storage mchess:chesstools move.piece{type:"R",color:"w",pos:{file:8,rank:1}} run data remove storage mchess:chesstools board.castling.w.short
execute if data storage mchess:chesstools move.piece{type:"K",color:"b"} run data remove storage mchess:chesstools board.castling.b
execute if data storage mchess:chesstools move.piece{type:"R",color:"b",pos:{file:1,rank:8}} run data remove storage mchess:chesstools board.castling.b.long
execute if data storage mchess:chesstools move.piece{type:"R",color:"b",pos:{file:8,rank:8}} run data remove storage mchess:chesstools board.castling.b.short

# en passant right
data remove storage mchess:chesstools board.en_passant
execute if data storage mchess:chesstools move{piece:{type:"",pos:{rank:2}},square:{rank:4}} run data modify storage mchess:chesstools board.en_passant.rank set value 3
execute if data storage mchess:chesstools move{piece:{type:"",pos:{rank:7}},square:{rank:5}} run data modify storage mchess:chesstools board.en_passant.rank set value 6
execute if data storage mchess:chesstools board.en_passant run data modify storage mchess:chesstools board.en_passant.file set from storage mchess:chesstools move.square.file

# halfmove clock
execute store result score .chesstools.halfmove_clock mchess run data get storage mchess:chesstools board.halfmove_clock
execute store result storage mchess:chesstools board.halfmove_clock int 1 run scoreboard players add .chesstools.halfmove_clock mchess 1

# move number
execute store result score .chesstools.move_number mchess run data get storage mchess:chesstools board.move_number
execute if data storage mchess:chesstools board{active_color:"w"} store result storage mchess:chesstools board.move_number int 1 run scoreboard players add .chesstools.move_number mchess 1

# cache
data modify storage mchess:chesstools board.cache.move set from storage mchess:chesstools move
data modify storage mchess:chesstools board.cache.naive_moves set from storage mchess:chesstools move.followups
data remove storage mchess:chesstools board.cache.moves

# schedule heavy afterwork
schedule function mchess:chesstools/commit_move.heavy 1t replace