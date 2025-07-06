data modify storage mchess:stringtools char set string storage mchess:stringtools string 0 1
execute if data storage mchess:stringtools {char:"a"} run data modify storage mchess:stringtools square.file set value 1
execute if data storage mchess:stringtools {char:"b"} run data modify storage mchess:stringtools square.file set value 2
execute if data storage mchess:stringtools {char:"c"} run data modify storage mchess:stringtools square.file set value 3
execute if data storage mchess:stringtools {char:"d"} run data modify storage mchess:stringtools square.file set value 4
execute if data storage mchess:stringtools {char:"e"} run data modify storage mchess:stringtools square.file set value 5
execute if data storage mchess:stringtools {char:"f"} run data modify storage mchess:stringtools square.file set value 6
execute if data storage mchess:stringtools {char:"g"} run data modify storage mchess:stringtools square.file set value 7
execute if data storage mchess:stringtools {char:"h"} run data modify storage mchess:stringtools square.file set value 8

data modify storage mchess:stringtools string set string storage mchess:stringtools string 1 2
function mchess:stringtools/eval
data modify storage mchess:stringtools square.rank set from storage mchess:stringtools value