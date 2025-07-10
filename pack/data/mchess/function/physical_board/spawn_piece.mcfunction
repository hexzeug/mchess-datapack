summon text_display ~1 ~ ~1 {Tags:["mchess","mchess.piece"],text:"",Rotation:[90f,-90f],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,-1.1875f,0f],scale:[10f,10f,10f]},background:0}

execute if data storage mchess:chesstools piece{color:"w",type:"K"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265A",color:"white"}}
execute if data storage mchess:chesstools piece{color:"w",type:"Q"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265B",color:"white"}}
execute if data storage mchess:chesstools piece{color:"w",type:"R"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265C",color:"white"}}
execute if data storage mchess:chesstools piece{color:"w",type:"B"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265D",color:"white"}}
execute if data storage mchess:chesstools piece{color:"w",type:"N"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265E",color:"white"}}
execute if data storage mchess:chesstools piece{color:"w",type:""} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265F",color:"white"},transformation:{translation:[-0.123f,-1f,0f]}}
execute if data storage mchess:chesstools piece{color:"b",type:"K"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265A",color:"black"}}
execute if data storage mchess:chesstools piece{color:"b",type:"Q"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265B",color:"black"}}
execute if data storage mchess:chesstools piece{color:"b",type:"R"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265C",color:"black"}}
execute if data storage mchess:chesstools piece{color:"b",type:"B"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265D",color:"black"}}
execute if data storage mchess:chesstools piece{color:"b",type:"N"} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265E",color:"black"}}
execute if data storage mchess:chesstools piece{color:"b",type:""} run data merge entity @n[tag=mchess.piece,nbt={text:""}] {text:{text:"\u265F",color:"black"},transformation:{translation:[-0.123f,-1f,0f]}}
