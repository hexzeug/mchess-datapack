$execute unless entity @a[nbt={UUID:$(player)}] run return run kill @s

$execute on attacker if data entity @s {UUID:$(player)} run tag @s add mchess.pointer.l_click
$execute on target if data entity @s {UUID:$(player)} run tag @s add mchess.pointer.r_click

data remove entity @s attack
data remove entity @s interaction