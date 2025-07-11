scoreboard players add .exec_flags.generate_moves mchess 1

data modify storage mchess:chesstools board.cache.moves set value []

function mchess:chesstools/cache/moves/generate.macro with storage mchess:chesstools board

scoreboard players remove .exec_flags.generate_moves mchess 1