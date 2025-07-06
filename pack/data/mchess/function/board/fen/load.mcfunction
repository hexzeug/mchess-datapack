# reset board
data merge storage mchess:board {pieces:[],castling:{b:{short:false,long:false},w:{short:false,long:false}},en_passant:false}

# split groups
function mchess:stringtools/split {separator:" "}

# parse simple groups (all except piece placement)
data modify storage mchess:board active_color set from storage mchess:stringtools segments[1]

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[2]
function mchess:stringtools/foreach {callback:"function mchess:board/fen/parse_castle"}

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[3]
data remove storage mchess:stringtools square
execute unless data storage mchess:stringtools {string:"-"} run function mchess:board/square_position
data modify storage mchess:board en_passant set from storage mchess:stringtools square

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[4]
function mchess:stringtools/eval
data modify storage mchess:board halfmove_clock set from storage mchess:stringtools value

data modify storage mchess:stringtools string set from storage mchess:stringtools segments[5]
function mchess:stringtools/eval
data modify storage mchess:board move_number set from storage mchess:stringtools value

# parse piece placement
data modify storage mchess:stringtools string set from storage mchess:stringtools segments[0]
function mchess:stringtools/split {separator:"/"}

execute store result storage mchess:stringtools square.rank int 1 run scoreboard players set .stringtools.square.rank mchess 8
function mchess:board/fen/parse_rank_recursive