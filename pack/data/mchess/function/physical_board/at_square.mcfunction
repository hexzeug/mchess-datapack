$data modify storage mchess:physical_board callback set value "$(callback)"

$execute store result storage mchess:physical_board x double 1 run data get $(square).rank 2
$execute store result storage mchess:physical_board y double 1 run data get $(square).file 2

function mchess:physical_board/at_square.macro with storage mchess:physical_board