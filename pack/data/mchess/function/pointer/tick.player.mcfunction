$execute unless entity @e[tag=mchess.pointer,nbt={data:{player:$(UUID)}}] run summon interaction ~ ~ ~ {Tags:["mchess","mchess.pointer"],data:{player:$(UUID)},width:2f,height:2f}
$tp @e[tag=mchess.pointer,nbt={data:{player:$(UUID)}}] ~ ~ ~ ~ ~

execute unless entity @s[tag=!mchess.pointer.l_click,tag=!mchess.pointer.r_click] if function mchess:pointer/ray run function mchess:pointer/click with storage mchess:chesstools

tag @s remove mchess.pointer.l_click
tag @s remove mchess.pointer.r_click
