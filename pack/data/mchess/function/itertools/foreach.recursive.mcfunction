$execute unless data $(iterable)[$(index)] run return 1

$data modify $(iterator) set from $(iterable)[$(index)]
$$(callback)
$data modify $(iterable)[$(index)] set from $(iterator)

execute store result storage mchess:itertools stack[-1].index int 1 run scoreboard players add .itertools.index mchess 1
return run function mchess:itertools/foreach.recursive with storage mchess:itertools stack[-1]