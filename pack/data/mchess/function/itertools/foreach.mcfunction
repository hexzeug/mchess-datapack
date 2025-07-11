$data modify storage mchess:itertools stack append value {callback:"$(callback)",iterable:"$(iterable)",iterator:"$(iterator)",index:0}
scoreboard players set .itertools.index mchess 0

function mchess:itertools/foreach.recursive with storage mchess:itertools stack[-1]

data remove storage mchess:itertools stack[-1]
execute store result score .itertools.index mchess run data get storage mchess:itertools stack[-1].index