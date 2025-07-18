# select square
$data modify storage mchess:controls state.$(color).square set from storage mchess:chesstools square

# clicked on piece -> select it
$execute if data storage mchess:chesstools piece{color:$(color)} store success storage mchess:controls changed byte 1 run data modify storage mchess:controls state.$(color).piece set from storage mchess:chesstools piece
# piece was already selected -> unselect it
$execute if data storage mchess:chesstools piece{color:$(color)} if data storage mchess:controls {changed:false} run data remove storage mchess:controls state.$(color).piece

# select pieces moves / move of selected piece
data remove storage mchess:chesstools moves
data remove storage mchess:chesstools move
$function mchess:controls/square_select.macro with storage mchess:controls state.$(color)
execute store success storage mchess:controls moved byte 1 if data storage mchess:chesstools move

# did not click on piece -> unselect piece
$execute unless data storage mchess:chesstools piece{color:$(color)} run data remove storage mchess:controls state.$(color).piece
$execute unless data storage mchess:chesstools piece{color:$(color)} run data remove storage mchess:chesstools moves

# update moves display
function mchess:physical_board/display_moves

# did click on move square of selected piece -> move
execute if data storage mchess:controls {moved:true} run function mchess:controls/move
