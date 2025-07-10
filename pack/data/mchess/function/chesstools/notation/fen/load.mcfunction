# reset board
data modify storage mchess:chesstools board set value {pieces:[],castling:{b:{short:false,long:false},w:{short:false,long:false}},en_passant:false}

# split groups
function mchess:stringtools/split {separator:" "}

# parse simple groups (all except piece placement)
data modify storage mchess:chesstools board.active_color set from storage mchess:stringtools segments[1]

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[2]
function mchess:stringtools/foreach {callback:"function mchess:chesstools/notation/fen/parse_castle"}

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[3]
execute unless data storage mchess:stringtools {string:"-"} run function mchess:chesstools/notation/square_position
execute unless data storage mchess:stringtools {string:"-"} run data modify storage mchess:chesstools board.en_passant set from storage mchess:chesstools square

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[4]
function mchess:stringtools/eval
data modify storage mchess:chesstools board.halfmove_clock set from storage mchess:stringtools value

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[5]
function mchess:stringtools/eval
data modify storage mchess:chesstools board.move_number set from storage mchess:stringtools value

# parse piece placement
data modify storage mchess:stringtools string set from storage mchess:stringtools segments[0]
function mchess:stringtools/split {separator:"/"}

execute store result storage mchess:chesstools square.rank int 1 run scoreboard players set .chesstools.square.rank mchess 8
function mchess:chesstools/notation/fen/parse_rank_recursive