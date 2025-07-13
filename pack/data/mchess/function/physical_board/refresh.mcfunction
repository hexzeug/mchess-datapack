execute if data entity @s data{color:"w"} run data modify entity @s text.color set value "white"
execute if data entity @s data{color:"b"} run data modify entity @s text.color set value "black"

execute if data entity @s data{type:""} run data modify entity @s transformation.translation set value [-0.123f,-1f,0f]
execute unless data entity @s data{type:""} run data modify entity @s transformation.translation set value [-0.1875f,-1.1875f,0f]

execute if data entity @s data{type:"K"} run data modify entity @s text.text set value "\u265A"
execute if data entity @s data{type:"Q"} run data modify entity @s text.text set value "\u265B"
execute if data entity @s data{type:"R"} run data modify entity @s text.text set value "\u265C"
execute if data entity @s data{type:"B"} run data modify entity @s text.text set value "\u265D"
execute if data entity @s data{type:"N"} run data modify entity @s text.text set value "\u265E"
execute if data entity @s data{type:""} run data modify entity @s text.text set value "\u265F"