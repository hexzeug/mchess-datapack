summon text_display ~ ~ ~ {Tags:["mchess","mchess.piece"],Rotation:[0f,-90f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,-1.1875f,0f],scale:[10f,10f,10f]},background:0}

execute if data storage mchess:stringtools piece{color:"w",type:"K"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u2654",color:"black"}
execute if data storage mchess:stringtools piece{color:"w",type:"Q"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u2655",color:"black"}
execute if data storage mchess:stringtools piece{color:"w",type:"R"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u2656",color:"black"}
execute if data storage mchess:stringtools piece{color:"w",type:"B"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u2657",color:"black"}
execute if data storage mchess:stringtools piece{color:"w",type:"N"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u2658",color:"black"}
execute if data storage mchess:stringtools piece{color:"w",type:""} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u2659",color:"black"}
execute if data storage mchess:stringtools piece{color:"b",type:"K"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u265A",color:"black"}
execute if data storage mchess:stringtools piece{color:"b",type:"Q"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u265B",color:"black"}
execute if data storage mchess:stringtools piece{color:"b",type:"R"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u265C",color:"black"}
execute if data storage mchess:stringtools piece{color:"b",type:"B"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u265D",color:"black"}
execute if data storage mchess:stringtools piece{color:"b",type:"N"} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u265E",color:"black"}
execute if data storage mchess:stringtools piece{color:"b",type:""} run data modify entity @n[type=text_display,tag=mchess.piece] text set value {text:"\u265F",color:"black"}

execute if data storage mchess:stringtools piece{color:"w"} run data merge entity @n[type=text_display,tag=mchess.piece] {Rotation:[180f, -90f],text:{color:"white"}}
execute if data storage mchess:stringtools piece{type:""} run data modify entity @n[type=text_display,tag=mchess.piece] transformation.translation set value [-0.125f, -1f, 0f]