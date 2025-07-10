data modify storage mchess:chesstools move.piece set from storage mchess:chesstools piece
data modify storage mchess:chesstools square set from storage mchess:chesstools piece.pos
execute store result score .chesstoools.square.file mchess run data get storage mchess:chesstools square.file
execute store result score .chesstoools.square.rank mchess run data get storage mchess:chesstools square.rank

execute if data storage mchess:chesstools piece{type:""} run function mchess:chesstools/naive_moves/pawn with storage mchess:chesstools piece
# execute if data storage mchess:chesstools piece{type:"R"} run function mchess:chesstools/naive_moves/rook
execute if data storage mchess:chesstools piece{type:"N"} run function mchess:chesstools/naive_moves/knight
# execute if data storage mchess:chesstools piece{type:"B"} run function mchess:chesstools/naive_moves/bishop
# execute if data storage mchess:chesstools piece{type:"Q"} run function mchess:chesstools/naive_moves/queen
# execute if data storage mchess:chesstools piece{type:"K"} run function mchess:chesstools/naive_moves/king