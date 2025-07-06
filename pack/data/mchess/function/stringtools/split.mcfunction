$data merge storage mchess:stringtools {segments:[],start:0,separator:"$(separator)"}
function mchess:stringtools/foreach {callback:"function mchess:stringtools/split.callback with storage mchess:stringtools"}
function mchess:stringtools/split.yield with storage mchess:stringtools
