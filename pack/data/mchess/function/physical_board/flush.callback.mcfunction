# skip if physical piece exists
$execute if entity @e[tag=mchess.piece,nbt={data:{type:"$(type)",color:"$(color)",pos:$(pos)}}] run return 1

# move closest similar wrong piece
$execute as @n[tag=mchess.piece,tag=mchess.piece.wrong,nbt={data:{type:"$(type)",color:"$(color)"}}] run data modify entity @s data.pos set value $(pos)
$tp @e[tag=mchess.piece,nbt={data:{type:"$(type)",color:"$(color)",pos:$(pos)}}] ~ ~ ~
$tag @e[tag=mchess.piece,nbt={data:{type:"$(type)",color:"$(color)",pos:$(pos)}}] remove mchess.piece.wrong
$execute if entity @e[tag=mchess.piece,nbt={data:{type:"$(type)",color:"$(color)",pos:$(pos)}}] run return 1

# promote local piece
$execute as @n[tag=mchess.piece,tag=mchess.piece.wrong,nbt={data:{color:"$(color)",pos:$(pos)}}] run data modify entity @s data.type set value "$(type)"
$tag @e[tag=mchess.piece,nbt={data:{type:"$(type)",color:"$(color)",pos:$(pos)}}] remove mchess.piece.wrong

# spawn piece
$execute unless entity @e[tag=mchess.piece,nbt={data:{type:"$(type)",color:"$(color)",pos:$(pos)}}] run summon text_display ~ ~ ~ {Tags:["mchess","mchess.piece"],data:{type:"$(type)",color:"$(color)",pos:$(pos)},Rotation:[0f,-90f],text:{text:"*",color:"red"},background:0,billboard:"vertical",teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,10f,10f]}}

# update display
$execute as @e[tag=mchess.piece,nbt={data:{type:"$(type)",color:"$(color)",pos:$(pos)}}] run function mchess:physical_board/refresh
