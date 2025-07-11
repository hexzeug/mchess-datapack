data modify storage mchess:chesstools move.square set from storage mchess:chesstools move.piece.pos
execute store result score .chesstools.file mchess run data get storage mchess:chesstools move.square.file
execute store result score .chesstools.rank mchess run data get storage mchess:chesstools move.square.rank

execute if data storage mchess:chesstools move.piece{type:""} run function mchess:chesstools/naive_moves/pawn with storage mchess:chesstools move.piece
execute if data storage mchess:chesstools move.piece{type:"R"} run function mchess:chesstools/naive_moves/rook
execute if data storage mchess:chesstools move.piece{type:"N"} run function mchess:chesstools/naive_moves/knight
execute if data storage mchess:chesstools move.piece{type:"B"} run function mchess:chesstools/naive_moves/bishop
execute if data storage mchess:chesstools move.piece{type:"Q"} run function mchess:chesstools/naive_moves/queen
execute if data storage mchess:chesstools move.piece{type:"K"} run function mchess:chesstools/naive_moves/king