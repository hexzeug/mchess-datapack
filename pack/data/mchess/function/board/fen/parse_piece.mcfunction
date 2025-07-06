# switch case piece
data remove storage mchess:stringtools piece
execute if data storage mchess:stringtools {char:'p'} run data modify storage mchess:stringtools piece set value {color:b,type:""}
execute if data storage mchess:stringtools {char:'n'} run data modify storage mchess:stringtools piece set value {color:b,type:"N"}
execute if data storage mchess:stringtools {char:'b'} run data modify storage mchess:stringtools piece set value {color:b,type:"B"}
execute if data storage mchess:stringtools {char:'r'} run data modify storage mchess:stringtools piece set value {color:b,type:"R"}
execute if data storage mchess:stringtools {char:'q'} run data modify storage mchess:stringtools piece set value {color:b,type:"Q"}
execute if data storage mchess:stringtools {char:'k'} run data modify storage mchess:stringtools piece set value {color:b,type:"K"}
execute if data storage mchess:stringtools {char:'P'} run data modify storage mchess:stringtools piece set value {color:w,type:""}
execute if data storage mchess:stringtools {char:'N'} run data modify storage mchess:stringtools piece set value {color:w,type:"N"}
execute if data storage mchess:stringtools {char:'B'} run data modify storage mchess:stringtools piece set value {color:w,type:"B"}
execute if data storage mchess:stringtools {char:'R'} run data modify storage mchess:stringtools piece set value {color:w,type:"R"}
execute if data storage mchess:stringtools {char:'Q'} run data modify storage mchess:stringtools piece set value {color:w,type:"Q"}
execute if data storage mchess:stringtools {char:'K'} run data modify storage mchess:stringtools piece set value {color:w,type:"K"}

# add piece to board
execute if data storage mchess:stringtools piece run data modify storage mchess:stringtools piece.pos set from storage mchess:stringtools square
data modify storage mchess:board pieces append from storage mchess:stringtools piece

# eval piece width for empty square notation
data modify storage mchess:stringtools backup append from storage mchess:stringtools string
data modify storage mchess:stringtools string set from storage mchess:stringtools char
execute unless data storage mchess:stringtools piece run function mchess:stringtools/eval
execute store result score .stringtools.value mchess run data get storage mchess:stringtools value
data modify storage mchess:stringtools string set from storage mchess:stringtools backup[-1]
data remove storage mchess:stringtools backup[-1]

# set piece width for actual piece
execute if data storage mchess:stringtools piece run scoreboard players set .stringtools.value mchess 1

# increment by piece width
execute store result storage mchess:stringtools square.file int 1 run scoreboard players operation .stringtools.square.file mchess += .stringtools.value mchess