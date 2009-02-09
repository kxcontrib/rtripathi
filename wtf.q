g:{n[];};
m:{};
n:{m[];f[];};
h:{meep[];};
meep:{};
f:{g[];h[];};

wtf:{(raze{(!). flip{(enlist(x;y)),raze .z.s[` sv x,`lambda]each
 (get y)where 100=type each get y}[x]y}.'{flip(key x;get x)}raze
 {f!get each f:` sv'x,'where 100=type each get x:` sv`,x}each`,key`)?x};

  /aaron's original callGraph
callGraph:{
 d:p!c@'where each 100={@[type get@;x;0h]}each'c:(get each get each p:system"f")[;3];
 d:{[x;y;z](enlist(-1+count y;z;f)),raze .z.s[x;y]each(f:x z)except y,:z}[d;0#`]x;
 {-1(x#" "),(string y),"->",","sv string z;}.'d;} / where 0<>count each d[;2];}

  / install graphviz and run: neato -Tps -o output.ps
graphs:{
 h:neg hopen hsym `$(string x),".m";
 h"graph G {";
 d:p!c@'where each 100={@[type get@;x;0h]}each'c:(get each get each p:system"f")[;3];
 d:{[x;y;z](enlist(z;f)),raze .z.s[x;y]each(f:x z)except y,:z}[d;0#`]x;
 {x (string y),/:"--",/: (string z),\:";";}[h;].'d;
  h"}"; } / where 0<>count each d[;2];}
