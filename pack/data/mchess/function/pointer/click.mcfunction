data remove storage mchess:chesstools piece
$data modify storage mchess:chesstools piece set from storage mchess:chesstools board.pieces[{pos:$(square)}]

tellraw @a [{storage:"mchess:chesstools",nbt:"square"},{storage:"mchess:chesstools",nbt:"piece"}]

