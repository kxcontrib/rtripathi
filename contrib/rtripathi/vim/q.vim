" Vim syntax file
" Language:     q
" Maintainer:   Simon Garland <simon@kx.com>
" Last Change:  2006.02.17 // add 2.3

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
  let main_syntax = 'q'
endif

" Read the k syntax to start with
source <sfile>:p:h/k.vim
" source <sfile>:p:h/ijs.vim
"source <sfile>:p:h/ksql.vim

" brace yourself
source <sfile>:p:h/nested.vim
set iskeyword=@,_,48-57,.

syn keyword qFunction  neg
syn keyword qFunction  not
syn keyword qFunction  null
syn keyword qFunction  string
syn keyword qFunction  reciprocal
syn keyword qFunction  floor
syn keyword qFunction  ceiling
syn keyword qFunction  signum
syn keyword qFunction  mod
syn keyword qFunction  xbar
syn keyword qFunction  xlog
syn keyword qFunction  and
syn keyword qFunction  or
syn keyword qFunction  each
syn keyword qFunction  scan
syn keyword qFunction  over
syn keyword qFunction  mmu
syn keyword qFunction  lsq
syn keyword qFunction  inv
syn keyword qFunction  md5
syn keyword qFunction  ltime
syn keyword qFunction  gtime
syn keyword qFunction  count
syn keyword qFunction  first
syn keyword qFunction  var
syn keyword qFunction  dev
syn keyword qFunction  med
syn keyword qFunction  cov
syn keyword qFunction  cor
syn keyword qFunction  all
syn keyword qFunction  any
syn keyword qFunction  rand
syn keyword qFunction  sums
syn keyword qFunction  prds
syn keyword qFunction  mins
syn keyword qFunction  maxs
syn keyword qFunction  fills
syn keyword qFunction  deltas
syn keyword qFunction  ratios
syn keyword qFunction  avgs
syn keyword qFunction  differ
syn keyword qFunction  prev
syn keyword qFunction  next
syn keyword qFunction  rank
syn keyword qFunction  reverse
syn keyword qFunction  iasc
syn keyword qFunction  idesc
syn keyword qFunction  asc
syn keyword qFunction  desc
syn keyword qFunction  msum
syn keyword qFunction  mcount
syn keyword qFunction  mavg
syn keyword qFunction  mdev
syn keyword qFunction  xrank
syn keyword qFunction  mmin
syn keyword qFunction  mmax
syn keyword qFunction  xprev
syn keyword qFunction  rotate
syn keyword qFunction  enlist
syn keyword qFunction  distinct
syn keyword qFunction  group
syn keyword qFunction  where
syn keyword qFunction  flip
syn keyword qFunction  type
syn keyword qFunction  key
syn keyword qFunction  til
syn keyword qFunction  get
syn keyword qFunction  value
syn keyword qFunction  attr
syn keyword qFunction  cut
syn keyword qFunction  set
syn keyword qFunction  upsert
syn keyword qFunction  raze
syn keyword qFunction  union
syn keyword qFunction  inter
syn keyword qFunction  except
syn keyword qFunction  cross
syn keyword qFunction  sv
syn keyword qFunction  vs
syn keyword qFunction  sublist
syn keyword qFunction  read0
syn keyword qFunction  read1
syn keyword qFunction  hopen
syn keyword qFunction  hclose
syn keyword qFunction  hdel
syn keyword qFunction  hsym
syn keyword qFunction  hcount
syn keyword qFunction  peach
syn keyword qFunction  system
syn keyword qFunction  ltrim
syn keyword qFunction  rtrim
syn keyword qFunction  trim
syn keyword qFunction  lower
syn keyword qFunction  upper
syn keyword qFunction  ssr
syn keyword qFunction  view
syn keyword qFunction  tables
syn keyword qFunction  views
syn keyword qFunction  cols
syn keyword qFunction  xcols
syn keyword qFunction  keys
syn keyword qFunction  xkey
syn keyword qFunction  xcol
syn keyword qFunction  xasc
syn keyword qFunction  xdesc
syn keyword qFunction  fkeys
syn keyword qFunction  meta
syn keyword qFunction  uj
syn keyword qFunction  lj
syn keyword qFunction  ij
syn keyword qFunction  pj
syn keyword qFunction  aj
syn keyword qFunction  aj0
syn keyword qFunction  asof
syn keyword qFunction  fby
syn keyword qFunction  ungroup
syn keyword qFunction  xgroup
syn keyword qFunction  plist
syn keyword qFunction  txf
syn keyword qFunction  save
syn keyword qFunction  load
syn keyword qFunction  rsave
syn keyword qFunction  rload
syn keyword qFunction  show
syn keyword qFunction  csv
syn keyword qFunction  parse
syn keyword qFunction  eval
syn match qLib "..lib"
syn match qLib "..op"
syn match qLib "..w"
syn match qLib ".q.neg"
syn match qLib ".q.not"
syn match qLib ".q.null"
syn match qLib ".q.string"
syn match qLib ".q.reciprocal"
syn match qLib ".q.floor"
syn match qLib ".q.ceiling"
syn match qLib ".q.signum"
syn match qLib ".q.mod"
syn match qLib ".q.xbar"
syn match qLib ".q.xlog"
syn match qLib ".q.and"
syn match qLib ".q.or"
syn match qLib ".q.each"
syn match qLib ".q.scan"
syn match qLib ".q.over"
syn match qLib ".q.mmu"
syn match qLib ".q.lsq"
syn match qLib ".q.inv"
syn match qLib ".q.md5"
syn match qLib ".q.ltime"
syn match qLib ".q.gtime"
syn match qLib ".q.count"
syn match qLib ".q.first"
syn match qLib ".q.var"
syn match qLib ".q.dev"
syn match qLib ".q.med"
syn match qLib ".q.cov"
syn match qLib ".q.cor"
syn match qLib ".q.all"
syn match qLib ".q.any"
syn match qLib ".q.rand"
syn match qLib ".q.sums"
syn match qLib ".q.prds"
syn match qLib ".q.mins"
syn match qLib ".q.maxs"
syn match qLib ".q.fills"
syn match qLib ".q.deltas"
syn match qLib ".q.ratios"
syn match qLib ".q.avgs"
syn match qLib ".q.differ"
syn match qLib ".q.prev"
syn match qLib ".q.next"
syn match qLib ".q.rank"
syn match qLib ".q.reverse"
syn match qLib ".q.iasc"
syn match qLib ".q.idesc"
syn match qLib ".q.asc"
syn match qLib ".q.desc"
syn match qLib ".q.msum"
syn match qLib ".q.mcount"
syn match qLib ".q.mavg"
syn match qLib ".q.mdev"
syn match qLib ".q.xrank"
syn match qLib ".q.mmin"
syn match qLib ".q.mmax"
syn match qLib ".q.xprev"
syn match qLib ".q.rotate"
syn match qLib ".q.enlist"
syn match qLib ".q.distinct"
syn match qLib ".q.group"
syn match qLib ".q.where"
syn match qLib ".q.flip"
syn match qLib ".q.type"
syn match qLib ".q.key"
syn match qLib ".q.til"
syn match qLib ".q.get"
syn match qLib ".q.value"
syn match qLib ".q.attr"
syn match qLib ".q.cut"
syn match qLib ".q.set"
syn match qLib ".q.upsert"
syn match qLib ".q.raze"
syn match qLib ".q.union"
syn match qLib ".q.inter"
syn match qLib ".q.except"
syn match qLib ".q.cross"
syn match qLib ".q.sv"
syn match qLib ".q.vs"
syn match qLib ".q.sublist"
syn match qLib ".q.read0"
syn match qLib ".q.read1"
syn match qLib ".q.hopen"
syn match qLib ".q.hclose"
syn match qLib ".q.hdel"
syn match qLib ".q.hsym"
syn match qLib ".q.hcount"
syn match qLib ".q.peach"
syn match qLib ".q.system"
syn match qLib ".q.ltrim"
syn match qLib ".q.rtrim"
syn match qLib ".q.trim"
syn match qLib ".q.lower"
syn match qLib ".q.upper"
syn match qLib ".q.ssr"
syn match qLib ".q.view"
syn match qLib ".q.tables"
syn match qLib ".q.views"
syn match qLib ".q.cols"
syn match qLib ".q.xcols"
syn match qLib ".q.keys"
syn match qLib ".q.xkey"
syn match qLib ".q.xcol"
syn match qLib ".q.xasc"
syn match qLib ".q.xdesc"
syn match qLib ".q.fkeys"
syn match qLib ".q.meta"
syn match qLib ".q.uj"
syn match qLib ".q.lj"
syn match qLib ".q.ij"
syn match qLib ".q.pj"
syn match qLib ".q.aj"
syn match qLib ".q.aj0"
syn match qLib ".q.asof"
syn match qLib ".q.fby"
syn match qLib ".q.ungroup"
syn match qLib ".q.xgroup"
syn match qLib ".q.plist"
syn match qLib ".q.txf"
syn match qLib ".q.save"
syn match qLib ".q.load"
syn match qLib ".q.rsave"
syn match qLib ".q.rload"
syn match qLib ".q.show"
syn match qLib ".q.csv"
syn match qLib ".q.parse"
syn match qLib ".q.eval"
syn match qLib ".Q.k"
syn match qLib ".Q.host"
syn match qLib ".Q.addr"
syn match qLib ".Q.res"
syn match qLib ".Q.addmonths"
syn match qLib ".Q.Cf"
syn match qLib ".Q.f"
syn match qLib ".Q.fmt"
syn match qLib ".Q.ff"
syn match qLib ".Q.fl"
syn match qLib ".Q.opt"
syn match qLib ".Q.def"
syn match qLib ".Q.qt"
syn match qLib ".Q.v"
syn match qLib ".Q.qp"
syn match qLib ".Q.V"
syn match qLib ".Q.ft"
syn match qLib ".Q.ord"
syn match qLib ".Q.tx"
syn match qLib ".Q.tt"
syn match qLib ".Q.fk"
syn match qLib ".Q.t"
syn match qLib ".Q.ty"
syn match qLib ".Q.nct"
syn match qLib ".Q.fu"
syn match qLib ".Q.A"
syn match qLib ".Q.a"
syn match qLib ".Q.n"
syn match qLib ".Q.nA"
syn match qLib ".Q.an"
syn match qLib ".Q.b6"
syn match qLib ".Q.id"
syn match qLib ".Q.j10"
syn match qLib ".Q.x10"
syn match qLib ".Q.j12"
syn match qLib ".Q.x12"
syn match qLib ".Q.l"
syn match qLib ".Q.D"
syn match qLib ".Q.dd"
syn match qLib ".Q.d0"
syn match qLib ".Q.p1"
syn match qLib ".Q.qbp"
syn match qLib ".Q.p2"
syn match qLib ".Q.P2"
syn match qLib ".Q.P3"
syn match qLib ".Q.p"
syn match qLib ".Q.view"
syn match qLib ".Q.L"
syn match qLib ".Q.cn"
syn match qLib ".Q.pcnt"
syn match qLib ".Q.dt"
syn match qLib ".Q.ind"
syn match qLib ".Q.fp"
syn match qLib ".Q.foo"
syn match qLib ".Q.a1"
syn match qLib ".Q.a0"
syn match qLib ".Q.a2"
syn match qLib ".Q.qb"
syn match qLib ".Q.qd"
syn match qLib ".Q.xy"
syn match qLib ".Q.IN"
syn match qLib ".Q.qa"
syn match qLib ".Q.x1"
syn match qLib ".Q.x0"
syn match qLib ".Q.x2"
syn match qLib ".Q.ua"
syn match qLib ".Q.q0"
syn match qLib ".Q.qe"
syn match qLib ".Q.ps"
syn match qLib ".Q.en"
syn match qLib ".Q.par"
syn match qLib ".Q.qm"
syn match qLib ".Q.dpt"
syn match qLib ".Q.dpft"
syn match qLib ".Q.hdpf"
syn match qLib ".Q.fs"
syn match qLib ".Q.dsftg"
syn match qLib ".Q.M"
syn match qLib ".Q.chk"
syn match qLib ".Q.sw"
syn match qLib ".Q.tab"
syn match qLib ".Q.t0"
syn match qLib ".Q.s1"
syn match qLib ".Q.s2"
syn match qLib ".Q.S"
syn match qLib ".Q.s"
syn match qLib ".o.ex"
syn match qLib ".o.T"
syn match qLib ".o.T0"
syn match qLib ".o.B0"
syn match qLib ".o.C0"
syn match qLib ".o.PS"
syn match qLib ".o.t"
syn match qLib ".o.Columns"
syn match qLib ".o.TI"
syn match qLib ".o.TypeInfo"
syn match qLib ".o.Special"
syn match qLib ".o.o"
syn match qLib ".o.Tables"
syn match qLib ".o.Ts"
syn match qLib ".o.Stats"
syn match qLib ".o.Cols"
syn match qLib ".o.Key"
syn match qLib ".o.FG"
syn match qLib ".o.Fkey"
syn match qLib ".o.Gkey"
syn match qLib ".h.htc"
syn match qLib ".h.hta"
syn match qLib ".h.htac"
syn match qLib ".h.ha"
syn match qLib ".h.hb"
syn match qLib ".h.pre"
syn match qLib ".h.xmp"
syn match qLib ".h.cd"
syn match qLib ".h.td"
syn match qLib ".h.hc"
syn match qLib ".h.xd"
syn match qLib ".h.eb"
syn match qLib ".h.es"
syn match qLib ".h.estr"
syn match qLib ".h.ec"
syn match qLib ".h.ed"
syn match qLib ".h.tx"
syn match qLib ".h.xt"
syn match qLib ".h.c0"
syn match qLib ".h.c1"
syn match qLib ".h.logo"
syn match qLib ".h.sa"
syn match qLib ".h.html"
syn match qLib ".h.sb"
syn match qLib ".h.fram"
syn match qLib ".h.jx"
syn match qLib ".h.uh"
syn match qLib ".h.sc"
syn match qLib ".h.hug"
syn match qLib ".h.hu"
syn match qLib ".h.ty"
syn match qLib ".h.hn"
syn match qLib ".h.HOME"
syn match qLib ".h.hy"
syn match qLib ".h.hp"
syn match qLib ".h.he"
syn match qLib ".h.br"
syn match qLib ".h.hr"
syn match qLib ".h.nbr"
syn match qLib ".h.code"
syn match qLib ".h.http"
syn match qLib ".h.text"
syn match qLib ".h.data"
syn match qLib ".h.ht"
syn match qOperator "-:"
syn match qOperator "~:"
syn match qOperator "^:"
syn match qOperator "$:"
syn match qOperator "%:"
syn match qOperator "_:"
syn match qOperator "-_-:"
syn match qOperator "k){(x>0)-x<0}"
syn match qOperator "k){x-y*x div y}"
syn match qOperator "k){x*y div x}"
syn match qOperator "k){log[y]%log x}"
syn match qOperator "&"
syn match qOperator "|"
syn match qOperator "k){x'y}"
syn match qOperator "k){x\y}"
syn match qOperator "k){x/y}"
syn match qOperator "$"
syn match qOperator "!"
syn match qOperator "!:"
syn match qOperator "![-15]"
syn match qOperator "%:"
syn match qOperator "k){t+x-%t:x+x-%x}"
syn match qOperator "#:"
syn match qOperator "*:"
syn match qOperator "k){avg[x*x]-a*a:avg x:"f"$x}"
syn match qOperator "k){sqrt var x}"
syn match qOperator "k){avg x(<x)@_.5*-1 0+#x}"
syn match qOperator "k){avg[x*y]-avg[x]*avg y:"f"$y}"
syn match qOperator "k){cov[x;y]%dev[x]*dev y}"
syn match qOperator "min$["b"]"
syn match qOperator "max$["b"]"
syn match qOperator "k){$[0>@x;?x;x@?#x]}"
syn match qOperator "+\"
syn match qOperator "*\"
syn match qOperator "&\"
syn match qOperator "|\"
syn match qOperator "^\"
syn match qOperator "-':"
syn match qOperator "%':"
syn match qOperator "k){(+\x)%+\~^x}"
syn match qOperator "~~':"
syn match qOperator ":':"
syn match qOperator "k){1_x,,x 0N}"
syn match qOperator "<<:"
syn match qOperator "|:"
syn match qOperator "k){$[0>@x;'`rank;<x]}"
syn match qOperator "k){$[0>@x;'`rank;>x]}"
syn match qOperator "k){$[99h=@x;(!x)[i]!`s#r i:<r:. x;`s=-2!x;x;0>@x;'`rank;`s#x@<x]}"
syn match qOperator "k){$[99h=@x;(!x)[i]!r i:>r:. x;0>@x;'`rank;x@>x]}"
syn match qOperator "k){y-(-x)_(0*x#y),y:+\y}"
syn match qOperator "k){msum[x;~^y]}"
syn match qOperator "k){msum[x;0.0^y]%mcount[x;y]}"
syn match qOperator "k){sqrt mavg[x;y*y]-m*m:mavg[x;y]}"
syn match qOperator "k){_y*x%#y:<<y}"
syn match qOperator "k){(x-1)&':/y}"
syn match qOperator "k){(x-1)|':/y}"
syn match qOperator "k){y(!#y)-x}"
syn match qOperator "k){$[0>@y;'`rank;98<@y;'`type;#y;,/|(0;mod[x;#y])_y;y]}"
syn match qOperator "plist"
syn match qOperator "?:"
syn match qOperator "=:"
syn match qOperator "&:"
syn match qOperator "+:"
syn match qOperator "@:"
syn match qOperator "!:"
syn match qOperator "k){$[-6=@x;!x;'`type]}"
syn match qOperator ".:"
syn match qOperator ".:"
syn match qOperator "![-2]"
syn match qOperator "k){$[0>@x;x*!-_-(#y)%x;x]_y}"
syn match qOperator ".[;();:;]"
syn match qOperator ".[;();,;]"
syn match qOperator ",/"
syn match qOperator "?,"
syn match qOperator "k){x@&x in y}"
syn match qOperator "k){x@&~x in y}"
syn match qOperator "k){n:#m:&(#x)##y;$[99=@x;((!x)[m],'n#!y)!(. x)[m],'n#. y;((),x)[m],'n#y]}"
syn match qOperator "k){x/:y}"
syn match qOperator "k){x\:y}"
syn match qOperator "k){$[99h=@y;sublist[x;!y]!sublist[x;. y];~0>@x;$[.Q.qp y;.Q.ind[y];y]i+!"i"$x[1]&(#y)-i:*x;abs[x]<#y;x#y;y]}"
syn match qOperator "0::"
syn match qOperator "1::"
syn match qOperator "<:"
syn match qOperator ">:"
syn match qOperator "~:"
syn match qOperator "![-1]"
syn match qOperator "![-7]"
syn match qOperator "k){x':y}"
syn match qOperator ".,["\\"]"
syn match qOperator "k){$[~@x;.z.s'x;" "=*x;(+/&\" "=x)_x;x]}"
syn match qOperator "k){$[~@x;.z.s'x;" "=last x;|ltrim@|x;x]}"
syn match qOperator "k){ltrim rtrim x}"
syn match qOperator "_:"
syn match qOperator "k){$[(@y)in 11 -11h;`$.z.s[x]@$y;x y]}["\000\001\002\003\004\005\006\007\010\t\n\013\014\r\016\017\020\021\022\023\0..]"
syn match qOperator "k){,/@[x;1+2*!_.5*#x:(0,/(0,{n:x?"[";$[n=#x;n;n+.z.s(x?"]")_x:(n+2+"^"=x n+1)_x]}y,"")+/:x ss y)_x;$[100>@z;:[;z];z]]}"
syn match qOperator "k){*|.`. .`\:x}"
syn match qOperator "k){."\\a ",$$[^x;`;x]}"
syn match qOperator "k){."\\b ",$$[^x;`;x]}"
syn match qOperator "k){$[.Q.qp x:.Q.v x;.Q.pf,!+x;98h=@x;!+x;11h=@!x;!x;!+0!x]}"
syn match qOperator "k){(x,f@&~(f:cols y)in x)#y}"
syn match qOperator "k){$[98h=@x:.Q.v x;0#`;!+!x]}"
syn match qOperator "k){(#x)!.[0!y;();xcols x]}"
syn match qOperator "k){.Q.ft[{+(x,(#x)_!y)!. y:+y}x]y}"
syn match qOperator "k){.Q.ft[@[;*x;`s#]].Q.ord[<:;x]y}"
syn match qOperator "k){.Q.ord[>:;x]y}"
syn match qOperator "k){(&~^x)#x:.Q.fk'.Q.V x}"
syn match qOperator "k){([!c].Q.ty't;f:.Q.fk't;a:-2!'t:. c:.Q.V x)}"
syn match qOperator "k){$[()~x;y;98h=@x;x,(!+x:.Q.ff[x;y])#.Q.ff[y;x];(a,b c)!+.[x;i;:;((x:+uj[. x;d c:&~c]). i:(!+d;i j)).Q.fl'.+(d:. y)j:&c:(#a)>i:(a:!x)?b:!y]]}"
syn match qOperator "k){$[`s=-2!y;aj[!+!y;x;0!y];.Q.ft[{$[&/j:(#y:. y)>i?:(!+i:!y)#x;x,'y i;@[.Q.ff[x]y;j;:;y i j:&j]]}[;y]]x]}"
syn match qOperator "k){.Q.ft[{.Q.fl[x j]y i j:&(#y:. y)>i?:(!+i:!y)#x}[;y]]x}"
syn match qOperator "k){.Q.ft[{x+0^y(!+!y)#x}[;y]]x}"
syn match qOperator "k){.Q.ft[{.Q.fl[y]z 2:(x,())#y}[x;;z]]y}"
syn match qOperator "k){.Q.ft[{z(x#z)bin(x,:())#y}[x;;z]]y}"
syn match qOperator "2:"
syn match qOperator "k){$[#y;(x[0]'x[1]@=y)y;0#x[0]x 1]}"
syn match qOperator "k){$[#x:0!x;,/+:'x;x]}"
syn match qOperator "k){x:x,();a:x#y;$[#x_:y;+:'x@=a;a!+f!(#f:!+x)#()]}"
syn match qOperator "plist"
syn match qOperator "k){x[$[|/0>@:'y;::;+:]k!y:$[1=#k:!+!x;,y;y];z]}"
syn match qOperator "k){$[1=#p:`\:*|`\:x:-1!x;set[x;. *p];   x 0:.h.tx[p 1]@.*p]}'"
syn match qOperator "k){$[1=#p:`\:*|`\:x:-1!x;set[*p;. x];set[*p].h.xt[p 1]@0:x]}'"
syn match qOperator "k){x:-1!x;.[`/:x,`;();:;.*|`\:x]}'"
syn match qOperator "k){x:-1!x;.[*|`\:x;();:;.`/:x,`]}'"
syn match qOperator "k){1 .Q.s x;}"
syn match qOperator ","
syn match qOperator "k){$["\\"=*x;(system;1_x);-5!x]}"
syn match qOperator "![-6]"
syn match qOperator "::"
syn match qOperator "2.4"
syn match qOperator "![-12]"
syn match qOperator "![-13]"
syn match qOperator "inwithinlikebinssifdowhileexecselectinsertupdatedeleteavglastsumprdminmaxwsumwavgdivxexpabssqrtlogexpsinasincosacostanatanexitgetenvsetenv"
syn match qOperator "k){("d"$m+y)+x-"d"$m:"m"$x}"
syn match qOperator "k){x 1:0xff200000000000005700000000000000;(`$($x),"#")1:0x}"
syn match qOperator "k){$[^y;"";y<0;"-",f[x;-y];y<1;1_f[x;10+y];1e13>j:"j"$y*/x#10;(x_j),".",(x:-x)#j:$j;$y]}"
syn match qOperator "k){$[x<#y:f[y;z];x#"*";(-x)$y]}"
syn match qOperator "k){$[&/(!+y)in f:!+x;x;x,'(f_y)(#x)#0N]}"
syn match qOperator "k){$[98=t:@x;+fl[+x;+y];99=t;@[x,y;f;:;x[f]fl'y f@:&(f:!x)in!y];t;x^y;@[y;i;:;x i:&(#:'x)&~#:'y]]}"
syn match qOperator "k){[o]x::$[#i:&o like"-[^0-9]*";i[0]#o;o];((`$1_*:)'o)!1_'o:i_o}"
syn match qOperator "k){x,((!y)#x){$[0>@x;*:;::](@*x)$y}'y}"
syn match qOperator "k){$[99h=@x;(98h=@!x)|98h=@. x;98h=@x]}"
syn match qOperator "k){$[-11h=@x;.$[":"=*t:$x;`$t,"/";x];x]}"
syn match qOperator "k){$[~98h=@x;0;@x:.+x;~":"=*$x;0]}"
syn match qOperator "k){$[qp x:v x;((,pf)!,. pf),+d0[]@.+x;0>@*x:+0!x;x@'!x;x]}"
syn match qOperator "k){$[$[99h=@t:v y;98h=@. t;0];[n:#+!y;n!x 0!y];x y]}"
syn match qOperator "k){if[~&/b:(y,:())in f:.q.cols z;'y b?0b];ft[@[;!+t;@[;x@+y!(t:0!v z)y:y,()]]]z}"
syn match qOperator "k){$[(77<t)|~t:@x;$[0<t:@*x;-t;0];20>t;t;11=t:@x:.!x;t;98=t;6h;1=#x:+!x;tx@*x;6h]}"
syn match qOperator "|[0]k){$[(77<t)|~t:@x;$[0<t:@*x;-t;0];20>t;t;11=t:@x:.!x;t;98=t;6h;1=#x:+!x;tx@*x.."
syn match qOperator "k){$[(20>t)|77<t:@x;`;98>@. t:!x;`;t]}"
syn match qOperator " b  xhijefcs mdz uvt"
syn match qOperator "k){$[0>x:tx x;.q.upper t@-x;t x]}"
syn match qOperator "k){$[`~x;,/nct'.q.tables`.;([]n:x;c:.q.cols x;t:tt x)]}"
syn match qOperator "k){[f;x]$[0>@x;f x;f[u](u:?x)?x]}"
syn match qOperator "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
syn match qOperator "abcdefghijklmnopqrstuvwxyz"
syn match qOperator "0123456789"
syn match qOperator "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
syn match qOperator "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789"
syn match qOperator "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
syn match qOperator "k){$[0>@x;`$x@&(x:$x)in an;ft[{s[i]:`$($s i:&(s in`i,!`.q)|~(s?s)=!#s:id'!x:+x),'"1";+s!. x}]x]}"
syn match qOperator "0x40/:$["x"]?["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"]"
syn match qOperator "@["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"]0x40\:"
syn match qOperator "0x24/:$["x"]?["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"]"
syn match qOperator "@["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"]0x24\:"
syn match qOperator "k){if[$[1>@d:!f:-1!x;1;`.d~*d];:.[$[qt d;*|`\:f;`.];();:;d:. f]];p:(d=`par.txt)|d like"[0-9]*";
 ."\\cd ",$x;f .q.set'{$[0>@!x:-1!x;. x;x`]}'f:d@&~(d=`html)|p|s:"."in'$d;if[|/p;L d@&p];if[~`.=x;(."\\l ",$:)'d@&s&~p];}"
syn match qOperator ""
syn match qOperator "k){`/:x,`$$y}"
syn match qOperator "k){dd[*pd;*pv]}"
syn match qOperator "k){+(!+. x)!`/:dd[y;z],x}"
syn match qOperator "k){(0>."\\p")|."\\_"}"
syn match qOperator "k){0!(?).@[x;0;p1[;y;P0::z]]}"
syn match qOperator "k){p2 . x}"
syn match qOperator "k){p2[x 0;x 1]'x 2}"
syn match qOperator "k){$[~#D;P2':(x;`:.;)'y;(,/P3':P[i](x;;)'y)@<,/y@:i:&0<#:'y:D{x@&x in y}\:y]}"
syn match qOperator "k){pd::PD x:$[(::)~x;x;&PV in x];u~:?u::..[pf;();:;pv::PV x];x{.[y;();:;+(x . y,`.d)!y]}'pt::!x:d0[];pn::pt!(#pt)#()}"
syn match qOperator "k){if[x~,`par.txt;if[~#x:,/D::!:'P::`$":",'0:*x;'`empty]];if[^*PV::x@:<x:(t:"DMII"i:10 7 4?#$*x)$$x;'`part]
 PD::$[#D::t$'$D;,/{P@&x in'D}'?PV;(#PV)#`:.];pf::`date`month`year`int i;view[];if[qbp[];cn'.:'pt];}"
syn match qOperator "k){$[#n:pn x:.+x;n;pn[x]:{#p1[x;y;z]}'[x;pd;pv]]}"
syn match qOperator "k){+/"j"$cn x}"
syn match qOperator "k){cn[y]@&pv in x}"
syn match qOperator "k){,/i[j]{fp[pf;p]p1[x;pd y;p:pv y]z}[.+x]'(j:&~=':i)_y-n i:(n:+\0j,cn x)bin y}"
syn match qOperator "k){+((,*x)!,(#z)#$[-6=@y;y;(*|x)$y]),+z}"
syn match qOperator "k){[t;c;b;a;v;d],/$[v|~#a;d fp[$[v;(*!b;*|`\:*. b);pf]]';::]p[(.+t;c;$[0>@b;b;v_b];a)]d}"
syn match qOperator "avgwsumwavgk){avg[x*x]-a*a:avg x:"f"$x}k){sqrt var x}k){avg[x*y]-avg[x]*avg y:"f"$y}k){cov[x;y]%dev[x]*dev y}"
syn match qOperator "#:*:lastsumprdminmaxk){avg x(<x)@_.5*-1 0+#x}avgwsumwavgk){avg[x*x]-a*a:avg x:"f"$x}k){sqrt var x}k){avg[x*y]-avg[x]*avg y:"f"$y}k){cov[x;y]%dev[x]*dev y}"
syn match qOperator "k){(%;(sum;("f"$;x));(#:;`i))}k){(sum;(*;("f"$;x);y))}k){(%;(wsum;x;y);(sum;("f"$;x)))}k){(.q.cov;x;x)}k){(sqrt;(.q.var;x))}k){(-;(avg;(*;("f"$;x);y));(*;(avg;x);(avg;y)))}k){(%;(.q.cov;x;y);(*;(.q.dev;x);(.q.dev;y)))}"
syn match qOperator "k){$[@x;1;2>#x]}"
syn match qOperator "k){$[(#:)~*x;(?:)~*x 1;0]}"
syn match qOperator "k){`$$*&x~/:y}"
syn match qOperator "k){$[99<@x;x in y;0]}"
syn match qOperator "k){$[qb x;0;IN[*x;a0];1;|/qa'1_x]}"
syn match qOperator "k){$[qb x;();IN[*x;a0];$[qd x;1_x;,x];,/x1'1_x]}"
syn match qOperator "k){$[qb x;x;IN[*x;a1];x0 a2[a1?*x]. 1_x;x0'x]}"
syn match qOperator "k){$[qb x; x;IN[*x;a0];$[qd x;(#:;(?:;(,/;xy[x 1]y)));((*x;sum)(#:)~*x;xy[x]y)];x2[;y]'x]}"
syn match qOperator "k){((`$$!#u)!u;x2[;u:?,/x1'x]'x:x0'x)}"
syn match qOperator "k){$[~qb x;,/q0'1_x;-11h=@x;*`\:x;()]}"
syn match qOperator "k){$[#x;99=@x;1]}"
syn match qOperator "k){[t;c;b;a]if[~qe[a]&qe[b]|-1=@b;'`nyi];d:pv;v:$[q:0>@b;0;~#b;0;-11h=@v:*. b;pf~*`\:v;0]
 if[$[~#c;0;-11h=@x:c[0]1;pf~*`\:x;0];d@:&-6!*c;c:1_c;if[~#d;d:pv@&pv=*pv;c:,()]]
 if[$[#c;0;((b~1b)&(. a)~,pf)|(. a)~,(#:;`i)];f:!a;j:dt[d]t;if[q;:+f!,$[b;?d@&0<j;,+/"j"$j]];if[v&1=#b;:?[+(pf,f)!(d;j)[;&0<j];();b;f!,(sum;*f)]]]
 f:$[q;0#`;!b];g:$[#a;qa@*a;0]
 $[(1=#d)|$[q;~g;u&pf~*. b];$[~q;.q.xkey[f];b;?:;::]foo[t;c;b;a;v]d
  (?).(foo[t;c;$[q;()!();b];*a;v]d;();$[q;0b;f!f];*|a:$[g;ua a;(a;$[#a;(,/;)'k!k:!a;()])])]}"
syn match qOperator "k){[d;x]@[x;f@&11h=@:'x f:!+x;(`/:d,`sym)?]}"
syn match qOperator "k){[d;p;t]`/:($[@!h:`/:d,`par.txt;`$":",h .q.mod[p;#h:0:h];d];`$$p;t)}"
syn match qOperator "k){$[(@x)|~#x;1;t:@*x;&/t=@:'x;0]}"
syn match qOperator "k){[d;p;t]@[par[d;p;t];`;:;en[d]`. t]}"
syn match qOperator "k){[d;p;f;t]if[~&/qm'r:+en[d]`. t;'`unmappable];{[d;t;i;x]@[d;x;:;t[x]i]}[d:par[d;p;t];r;<r f]'!r;@[;f;`p#]@[d;`.d;:;f,r@&~f=r:!r];t}"
syn match qOperator "k){[h;d;p;f](@[`.;;0#]dpft[d;p;f]@)'t@>(#.:)'t:.q.tables`.;if[h:@[<:;h;0];h"\\l .";>h]}"
syn match qOperator "k){[f;s]((-7!s)>){[f;s;x]i:1+last@&"\n"=r:1:(s;x;131000);f@`\:i#r;x+i}[f;s]/0j}"
syn match qOperator "k){[dpt;xom;f;tw;g]d:*dpt;dpt:par . dpt;x:*xom;if[~0<m:xom 2;m+:-7!x]  
 if[a>m:_a:(m-:o:xom 1)%b:"j"$+/tw 10=@*tw;'`length];0N!($dpt),": ",$m&:M;i::0;n::1000000&_1e8%b
 do[-_-m%n;@[dpt;`;$[i;,;:];en[d]@+g f!tw 1:(x;o+b*i;b*n&:m-i)];0N!i+:n];dpt}"
syn match qOperator "0W"
syn match qOperator "k){f:{`/:'x,'d@&(d:!x)like"[0-9]*"};d:$[`par.txt in!x;,/f'-1!'`$0:`/:x,`par.txt;f x]
 {[e;u;d]u[i]{.[x;(y;`);:;z]}[d]'e i:&~u in!d}[0#'d[(+u in/:t)?'1b]@'u;u:?,/t:!:'d]'d}"
syn match qOperator "k){.q.sublist[_.5**|."\\C"]x}"
syn match qOperator "k){" "/:'(x*|/#:''y)$/:y}"
syn match qOperator "k){$[x>#y;((#*y)#'" -"),y;y]}"
syn match qOperator "![-3]"
syn match qOperator "k){$[99=t:@x;((|/#:'x)$x:t0[#d;x]),'"| ",/:t0[#x:s2@!x]d:s2@. x;98=t;(1#x),(,(#*x)#"-"),1_x:tab[1](,$!x),$[#*r:s2'. x:sw@+x;+r;()]
 ~#x;();t>77;s1'x;t;$x;|/(97<t)|0>t:?@:'x;s1'x;(1<#?#:'x)|$[1=#t;(*t)in 1 4 10h;0];s1'x;tab[1]@s2'sw'x]}"
syn match qOperator "k){x[1]{$[x<#y;((x-2)#y),"..";y]}'$[t&77>t:@z;,s1 z;99<t;"\n"\:$z;$[s;,[;,".."];::]s2 .q.sublist[(y;n-s:(y+n:x[0]-2*.Q.qt z)<#z)]z]}"
syn match qOperator "k){$[(::)~x;"";`/:S[(."\\c")-2 1;0j]x]}"
syn match qOperator "::"
syn match qOperator "k){$[.Q.qt x:."s)",x;0!x;x]}"
syn match qOperator "textbittinyintsmallintintbigintrealfloatcharvarchardatedatedatetimetimetimetime"
syn match qOperator "-1-700-654-578112099110101010"
syn match qOperator "40961001248481255066160666"
syn match qOperator "4096100351019715125501010230888"
syn match qOperator "12002222223302220222"
syn match qOperator "014567891011141519"
syn match qOperator "k){$[#x;Cols`$x;,/Cols'.q.tables`.]}"
syn match qOperator "{$[count x;select from TI where DATA_TYPE="H"$x;TI]}"
syn match qOperator "{([]SCOPE:2h;COLUMN_NAME:(0&0<count x)#`i;DATA_TYPE:4h;TYPE_NAME:`int;COLUMN_SIZE:10;BUFFER_LENGTH:4;DECIMAL_DIGITS:0h;PSEUDO_COLUMN:2h)}"
syn match qOperator "{flip(`TABLE_CAT`TABLE_SCHEM!``),flip x}"
syn match qOperator "{Ts[x 0;$[count t:1_x:`$","vs x except"'";t;enlist`TABLE]]}"
syn match qOperator "{y:raze{([]TABLE_NAME:(tables`.;views`.)`TABLE`VIEW?x;TABLE_TYPE:x;REMARKS:`)}each y;o$[`~x;y;y where x=y`TABLE_NAME]}"
syn match qOperator "{o([]TABLE_NAME:1#`$x;NON_UNIQUE:0Nh;INDEX_QUALIFIER:`;INDEX_NAME:`;TYPE:0h;ORDINAL_POSITION:0h;COLUMN_NAME:`;ASC_OR_DESC:`;CARDINALITY:count value x;PAGES:0N;FILTER_CONDITION:`)}"
syn match qOperator "{o([]TABLE_NAME:x;COLUMN_NAME:cols x;DATA_TYPE:T0 t;TYPE_NAME:T t;COLUMN_SIZE:C0 t;BUFFER_LENGTH:B0 t:.Q.tt x;DECIMAL_DIGITS:0h;NUM_PREC_RADIX:10h;NULLABLE:1h;REMARKS:`)}"
syn match qOperator "{o([]TABLE_NAME:x;COLUMN_NAME:r;KEY_SEQ:"h"$1+til count r:keys x:`$x;PK_NAME:`)}"
syn match qOperator "{o([]PKTABLE_NAME:x;PKCOLUMN_NAME:"s"$(first keys@)each x;FKTABLE_CAT:`;FKTABLE_SCHEM:`;FKTABLE_NAME:y;FKCOLUMN_NAME:z;KEY_SEQ:1h;UPDATE_RULE:0h;DELETE_RULE:0h;FK_NAME:`;PK_NAME:`)}"
syn match qOperator "k){FG[. r;x;!r:.q.fkeys x:`$x]}"
syn match qOperator "k){FG[x;"s"$*r;"s"$*|r:+,/(x:`$x){y,'&x=.q.fkeys y}'.q.tables`.]}"
syn match qOperator "::"
syn match qOperator "k){,/("<";x;y;"</";x:($x),">")}"
syn match qOperator "k){,/("<";$x;,/" ",'($!y),'"=",'{$[10=@x;"\"",x,"\"";$x]}'. y;">")}"
syn match qOperator "k){,/(hta[x]y;z;"</";$x;">")}"
syn match qOperator "k){htac[`a;(,`href)!,x]y}"
syn match qOperator "k){htac[`a;`target`href!`v,,x]y}"
syn match qOperator "k){htc[`pre]@`/:x}"
syn match qOperator "k){htc[`xmp]@`/:x}"
syn match qOperator "k){.q.csv 0:x}"
syn match qOperator "k){"\t"0:x}"
syn match qOperator "k){"&lt;"/:"<"\:x}"
syn match qOperator "k){g:{(#*y)#'(,,"<",x),y,,,"</",x:($x),">"};(,"<R>"),(,/'+g[`r]@,/(!x)g'{,$[@x;$x;x]}'x:+0!x),,"</R>"}"
syn match qOperator "k){,/(hta[x]y;z;"</";$x;">")}[`Workbook;`xmlns`xmlns:o`xmlns:x`xmlns:ss`xmlns:html!("urn:schemas-microsoft-com:office..]"
syn match qOperator "k){,/(hta[x]y;z;"</";$x;">")}[`Worksheet;(,`ss:Name)!,"Sheet1"]"
syn match qOperator "k){$[15=t:-@x;[r:$x;r[4 7]:"-";r];14=t;.z.s`datetime$x;13=t;.z.s`datetime$`date$x;t in 17 18h;.z.s`time$x;19=t;"1899-12-31T",$x;-10=t;x;(t<1)|t>19;-3!x;$x]}"
syn match qOperator "k){htc[`Cell]htac[`Data;(,`ss:Type)!,($5#`String`Number`String`DateTime)[-120 0 10 13 20h bin -@x];estr x]}"
syn match qOperator "k){("<?xml version=\"1.0\"?><?mso-application progid=\"Excel.Sheet\"?>";eb es htc[`Table]@,/(htc[`Row]@,/ec')'(,!+x),+.+x:0!x)}"
syn match qOperator "k){'`nyi;+(`$*y)!`$+1_y:"\t"\:'y}"
syn match qOperator "024C7E"
syn match qOperator "958600"
syn match qOperator "<font color=024C7E><b>kx</b></font><font color=958600><b>.com</b></font>"
syn match qOperator "a{text-decoration:none}a:link{color:024C7E}a:visited{color:024C7E}a:active{color:958600}"
syn match qOperator "k){htc[`html]htc[`head;htc[`style]sa,sb],htc[`body]x}"
syn match qOperator "body{font:10pt verdana;text-align:justify}"
syn match qOperator "k){htc[`html]htc[`head]htc[`title;x],htac[`frameset;(,`cols)!,($116|316&43+(7+"?"~*z)*|/#:'y),",*"]@,/hta[`frame]'((,`src)!,*z;`name`src!`v,,*|z)}"
syn match qOperator "k){[j;x]$[$[.Q.qt[x];(N:(*."\\C")-4)<n:#x;0];(" "/:ha'["?[",/:$(0;0|j-N),|&\(n-N;j+N);$`home`up`down`end],,($n),"[",($j),"]";"");()],.Q.S[."\\C";j]x}"
syn match qOperator "k){(*x),/{("c"$"X"$2#x),2_x}'1_x:"%"\:x}"
syn match qOperator "$-.+!*'(),abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789"
syn match qOperator "k){,/@["%",'$"x"$!256;x;:;x]@}"
syn match qOperator ",/@[("%00";"%01";"%02";"%03";"%04";"%05";"%06";"%07";"%08";"%09";"%0a";"%0b";"%.."
syn match qOperator "k){"HTTP/1.1 ",x,"\r\nContent-Type: ",$[#t:ty y;t;"application/octet-stream"],"\r\nConnection: close\r\nContent-Length: ",($#z),"\r\n\r\n",z}"
syn match qOperator "html"
syn match qOperator "k){"HTTP/1.1 ",x,"\r\nContent-Type: ",$[#t:ty y;t;"application/octet-stream"],"\r\nConnection: close\r\nContent-Length: ",($#z),"\r\n\r\n",z}["200 OK"]"
syn match qOperator "k){"HTTP/1.1 ",x,"\r\nContent-Type: ",$[#t:ty y;t;"application/octet-stream"]..k){htc[`html]htc[`head;htc[`style]sa,sb],htc[`body]x}@[k){htc[`pre]@`/:x}]"
syn match qOperator "k){"HTTP/1.1 ",x,"\r\nContent-Type: ",$[#t:ty y;t;"application/octet-stream"]..,["'"]"
syn match qOperator "<br>"
syn match qOperator "k){(#x)#"-"}"
syn match qOperator "k){,/("<";x;y;"</";x:($x),">")}[`nobr]"
syn match qOperator "k){" "/:@[x;1+2*!_.5*#x:"\t"\:x;{htc[`code]nbr hc x}]}"
syn match qOperator "k){$[#i:ss[x]"http://";(i[0]#x),/{ha[x;x:i#x],(i:&/x?") ")_x}'i_x;x]}"
syn match qOperator "k){`/:{htc[`p]http code x}'x@&0<#:'x}"
syn match qOperator "k){if[100<#*x:.Q.tab[1]n#'x,\:(n:|/#:'x:"\t"\:'x:1_'x)#,"";0N!#*x;0N!'x];xmp$["- "~2#x 1;@[x;1;hr];x]}"
syn match qOperator "k){[t]x:0:`$"src/",(T:t:$t),".txt";if[~"."=**x;T:*x;x:1_x];h:.q.trim(n@:i)_'x i:&0<n:("."=x)?'0b
 x[i]:h{htac[`h5;(,`id)!,x;y]}'H:("."/:'$(){$[y>#x;x,1;(y#x),1+x y-:1]}\n),'" ",/:h
 x:`/:("Copyright &copy; ",logo;htc[`h5]T),((#x)#(text;data))@'x:(&~=':~(0<#:'x)&" "=*:'x)_x
 c:h{hb[x,"#",y;z],br}[a:t,".htm"]'H;c:nbr@`/:$[&/n=:1;c;1_,/(,br),/:(&n)_c]
 (`$a)1:fram[T;H]b:"a/",/:("_",a;a);(`$b)1:'html'(($.z.D),htc[`h5;"Contents"],c;x);}"
syn match qOperator "csv"
syn match qOperator "txt"
syn match qOperator "xml"
syn match qOperator "xls"
syn match qOperator "htm"
syn match qOperator "html"
syn match qOperator "gif"
syn match qOperator "jpg"
syn match qOperator "png"
syn match qOperator "bmp"
syn match qOperator "ico"
syn match qOperator "svg"
syn match qOperator "pdf"
syn match qOperator "css"
syn match qOperator "zip"
syn match qOperator "js"
syn match qOperator "doc"
syn match qOperator "swf"
syn match qOperator "TYPE_NAME"
syn match qOperator "DATA_TYPE"
syn match qOperator "COLUMN_SIZE"
syn match qOperator "LITERAL_PREFIX"
syn match qOperator "LITERAL_SUFFIX"
syn match qOperator "CREATE_PARAMS"
syn match qOperator "NULLABLE"
syn match qOperator "CASE_SENSITIVE"
syn match qOperator "SEARCHABLE"
syn match qOperator "UNSIGNED_ATTRIBUTE"
syn match qOperator "FIXED_PREC_SCALE"
syn match qOperator "AUTO_INCREMENT"
syn match qOperator "LOCAL_TYPE_NAME"
syn match qOperator "MINIMUM_SCALE"
syn match qOperator "MAXIMUM_SCALE"
" Identifier
syn match qIdentifier           "\<\a\w*\>"
syn match qGlobal               "\<\u[A-Z0-9_]*\>"

" Variable name error
syn match  qError               "\<_[a-zA-Z0-9_]\+\>"

" Include
syn match qLang                 "^k)"
syn match qError                "^q)"

" symbols
syn match qSymbol               "\(`\<[a-zA-Z0-9\.][a-zA-Z0-9_\.]*\>\)" contains=kType
syn keyword qType               boolean byte short int long real float char symbol month date datetime time minute second contained

syn match qContext                "\(\.[^zQoh\[][0-9|a-z|A-Z]*\)"
syn match qCast                   "\`\(text\|bit\|tinyint\|smallint\|int\|bigint\|real\|float\|char\|varchar\|date\|datetime\|time\|long\)\
$\s*"

if !exists("did_q_syntax_inits")
  let did_q_syntax_inits = 1
  hi link qFunction             Tag
  hi link qIdentifier           Identifier
  hi link qLang                 DiffChange
  hi link qError                Error
  hi link qSymbol               Special
  hi link qGlobal               Constant
  hi link qContext              Define
  hi link qLib                  Label
  hi link qOperator             Label
  hi link qCast                 SpecialKey
  hi link qType                 Boolean
 endif

let b:current_syntax = "q"

if main_syntax == 'q'
  unlet main_syntax
endif
" modified from John Gilmore's original script
" http://www.vim.org/scripts/script.php?script_id=1230
hi level1c ctermfg=brown
hi level2c ctermfg=Darkblue
hi level3c ctermfg=darkgray
hi level4c ctermfg=darkgreen
hi level5c ctermfg=darkcyan
hi level6c ctermfg=darkred
hi level7c ctermfg=darkmagenta
hi level8c ctermfg=brown
hi level9c ctermfg=gray
hi level10c ctermfg=black
hi level11c ctermfg=darkmagenta
hi level12c ctermfg=Darkblue
hi level13c ctermfg=darkgreen
hi level14c ctermfg=darkcyan
hi level15c ctermfg=darkred
hi level16c ctermfg=red

syn region level1 matchgroup=level1c start=/\[/ end=/\]/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level2 matchgroup=level2c start=/\[/ end=/\]/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level3 matchgroup=level3c start=/\[/ end=/\]/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level4 matchgroup=level4c start=/\[/ end=/\]/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level5 matchgroup=level5c start=/\[/ end=/\]/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level6 matchgroup=level6c start=/\[/ end=/\]/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level7 matchgroup=level7c start=/\[/ end=/\]/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level8 matchgroup=level8c start=/\[/ end=/\]/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level9 matchgroup=level9c start=/\[/ end=/\]/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level10 matchgroup=level10c start=/\[/ end=/\]/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level11 matchgroup=level11c start=/\[/ end=/\]/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
syn region level12 matchgroup=level12c start=/\[/ end=/\]/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
syn region level13 matchgroup=level13c start=/\[/ end=/\]/ contains=TOP,level13,level14,level15, level16,NoInParens
syn region level14 matchgroup=level14c start=/\[/ end=/\]/ contains=TOP,level14,level15, level16,NoInParens
syn region level15 matchgroup=level15c start=/\[/ end=/\]/ contains=TOP,level15, level16,NoInParens
syn region level16 matchgroup=level16c start=/\[/ end=/\]/ contains=TOP,level16,NoInParens
" modified from John Gilmore's original script
" http://www.vim.org/scripts/script.php?script_id=1230
hi levelp1c ctermfg=brown
hi levelp2c ctermfg=Darkblue
hi levelp3c ctermfg=darkgray
hi levelp4c ctermfg=darkgreen
hi levelp5c ctermfg=darkcyan
hi levelp6c ctermfg=darkred
hi levelp7c ctermfg=darkmagenta
hi levelp8c ctermfg=brown
hi levelp9c ctermfg=gray
hi levelp10c ctermfg=black
hi levelp11c ctermfg=darkmagenta
hi levelp12c ctermfg=Darkblue
hi levelp13c ctermfg=darkgreen
hi levelp14c ctermfg=darkcyan
hi levelp15c ctermfg=darkred
hi levelp16c ctermfg=red

syn region levelp1 matchgroup=levelp1c start=/(/ end=/)/ contains=TOP,levelp1,levelp2,levelp3,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp2 matchgroup=levelp2c start=/(/ end=/)/ contains=TOP,levelp2,levelp3,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp3 matchgroup=levelp3c start=/(/ end=/)/ contains=TOP,levelp3,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp4 matchgroup=levelp4c start=/(/ end=/)/ contains=TOP,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp5 matchgroup=levelp5c start=/(/ end=/)/ contains=TOP,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp6 matchgroup=levelp6c start=/(/ end=/)/ contains=TOP,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp7 matchgroup=levelp7c start=/(/ end=/)/ contains=TOP,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp8 matchgroup=levelp8c start=/(/ end=/)/ contains=TOP,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp9 matchgroup=levelp9c start=/(/ end=/)/ contains=TOP,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp10 matchgroup=levelp10c start=/(/ end=/)/ contains=TOP,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp11 matchgroup=levelp11c start=/(/ end=/)/ contains=TOP,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp12 matchgroup=levelp12c start=/(/ end=/)/ contains=TOP,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp13 matchgroup=levelp13c start=/(/ end=/)/ contains=TOP,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp14 matchgroup=levelp14c start=/(/ end=/)/ contains=TOP,levelp14,levelp15, levelp16,NoInParens
syn region levelp15 matchgroup=levelp15c start=/(/ end=/)/ contains=TOP,levelp15, levelp16,NoInParens
syn region levelp16 matchgroup=levelp16c start=/(/ end=/)/ contains=TOP,levelp16,NoInParens
" modified from John Gilmore's original script
" http://www.vim.org/scripts/script.php?script_id=1230
hi crly1c ctermfg=brown
hi crly2c ctermfg=Darkblue
hi crly3c ctermfg=darkgray
hi crly4c ctermfg=darkgreen
hi crly5c ctermfg=darkcyan
hi crly6c ctermfg=darkred
hi crly7c ctermfg=darkmagenta
hi crly8c ctermfg=brown
hi crly9c ctermfg=gray
hi crly10c ctermfg=black
hi crly11c ctermfg=darkmagenta
hi crly12c ctermfg=Darkblue
hi crly13c ctermfg=darkgreen
hi crly14c ctermfg=darkcyan
hi crly15c ctermfg=darkred
hi crly16c ctermfg=red

syn region crly1 matchgroup=crly1c start=/{/ end=/}/ contains=TOP,crly1,crly2,crly3,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly2 matchgroup=crly2c start=/{/ end=/}/ contains=TOP,crly2,crly3,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly3 matchgroup=crly3c start=/{/ end=/}/ contains=TOP,crly3,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly4 matchgroup=crly4c start=/{/ end=/}/ contains=TOP,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly5 matchgroup=crly5c start=/{/ end=/}/ contains=TOP,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly6 matchgroup=crly6c start=/{/ end=/}/ contains=TOP,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly7 matchgroup=crly7c start=/{/ end=/}/ contains=TOP,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly8 matchgroup=crly8c start=/{/ end=/}/ contains=TOP,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly9 matchgroup=crly9c start=/{/ end=/}/ contains=TOP,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly10 matchgroup=crly10c start=/{/ end=/}/ contains=TOP,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly11 matchgroup=crly11c start=/{/ end=/}/ contains=TOP,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly12 matchgroup=crly12c start=/{/ end=/}/ contains=TOP,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly13 matchgroup=crly13c start=/{/ end=/}/ contains=TOP,crly13,crly14,crly15, crly16,NoInParens
syn region crly14 matchgroup=crly14c start=/{/ end=/}/ contains=TOP,crly14,crly15, crly16,NoInParens
syn region crly15 matchgroup=crly15c start=/{/ end=/}/ contains=TOP,crly15, crly16,NoInParens
syn region crly16 matchgroup=crly16c start=/{/ end=/}/ contains=TOP,crly16,NoInParens
