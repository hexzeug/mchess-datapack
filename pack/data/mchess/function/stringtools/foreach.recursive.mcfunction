$data modify storage mchess:stringtools char set string storage mchess:stringtools string $(i)
execute if data storage mchess:stringtools {char:""} run return run data remove storage mchess:stringtools char
data modify storage mchess:stringtools char set string storage mchess:stringtools char 0 1

$$(callback)

execute store result storage mchess:stringtools i int 1 run scoreboard players add .stringtools.i mchess 1
return run function mchess:stringtools/foreach.recursive with storage mchess:stringtools