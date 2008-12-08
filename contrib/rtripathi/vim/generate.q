lib:"syn match qLib \"",/:(string raze{d:get x;` sv'x,'1 _ key d}'[gf:` sv '`,'`,key `]),\:"\"";
op:1 _ raze 1 _ value each get each gf;
op:(op where not w),key raze op where w:99h=type each op;
op:(op where not w),cols raze op where w:98h=type each op;
op:{"syn match qOperator \"",$[10h~abs type x;x;raze string x],"\""}'[op];

qf: "syn keyword qFunction  \"",/:(1 _ string key .q),\:"\"";

h:read0 `:header.txt;
f:read0 `:footer.txt;
nest:read0 `:nested.vim;
`:q.vim 0: h,qf,lib,f; /,op,nest
