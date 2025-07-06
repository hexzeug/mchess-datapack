$data modify storage mchess:stringtools callback set value "$(callback)"
execute store result storage mchess:stringtools i int 1 run scoreboard players set .stringtools.i mchess 0
function mchess:stringtools/foreach.recursive with storage mchess:stringtools