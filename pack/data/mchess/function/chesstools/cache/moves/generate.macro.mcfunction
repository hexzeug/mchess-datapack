# prepare naive moves
execute unless data storage mchess:chesstools board.cache.naive_moves run function mchess:chesstools/naive_moves/generate
execute unless data storage mchess:chesstools board.cache.naive_moves run data modify storage mchess:chesstools board.cache.naive_moves set from storage mchess:chesstools moves

# append naive moves of active color
$data modify storage mchess:chesstools board.cache.moves append from storage mchess:chesstools board.cache.naive_moves[{piece:{color:"$(active_color)"}}]

# TODO: en passant
# TODO: castleing

# generate followups
data modify storage mchess:chesstools rollback set from storage mchess:chesstools board.pieces
function mchess:itertools/foreach {callback:"function mchess:chesstools/cache/moves/generate.callback",iterable:"storage mchess:chesstools board.cache.moves",iterator:"storage mchess:chesstools speculative"}

# remove illegal moves
$data remove storage mchess:chesstools board.cache.moves[{followups:[{capture:{type:"K",color:"$(active_color)"}}]}]