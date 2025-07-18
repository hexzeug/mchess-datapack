data remove storage mchess:chesstools piece
$data modify storage mchess:chesstools piece set from storage mchess:chesstools board.pieces[{pos:$(square)}]

execute if entity @s[tag=mchess.pointer.l_click,team=mchess.w] run function mchess:controls/square_select {color:"w"}
execute if entity @s[tag=mchess.pointer.l_click,team=mchess.b] run function mchess:controls/square_select {color:"b"}
