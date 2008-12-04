" Vim syntax file
" Language:	q
" Maintainer:	Simon Garland <simon@kx.com>
" Last Change:  2006.02.17 // add 2.3 

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
  let main_syntax = 'q'
endif

" Read the k syntax to start with
source <sfile>:p:h/k.vim
set iskeyword=@,_,48-57,.

syn keyword qFunction abs aj all and any asc asof attr ceiling cols
syn keyword qFunction cor count cov cross csv cut deltas desc dev differ
syn keyword qFunction distinct each enlist except fby fills first flip floor get
syn keyword qFunction group gtime hclose hcount hdel hopen hsym iasc idesc inter inv key
syn keyword qFunction keys lj load lower lsq ltime mavg maxs mcount md5 mdev med meta
syn keyword qFunction mins mmax mmin mmu mod msum neg next not null or peach pj
syn keyword qFunction prds prev rand rank ratios raze reciprocal read0 read1 reverse rload
syn keyword qFunction rotate rsave save set show signum ssr string sublist sums ss ssr
syn keyword qFunction sv system tables til trim txf type uj ungroup union
syn keyword qFunction upper upsert value var view views vs where xasc xcol
syn keyword qFunction xcols xdesc xexp xgroup xkey xlog xprev xrank getenv 
syn keyword qFunction neg
syn keyword qFunction not
syn keyword qFunction null
syn keyword qFunction string
syn keyword qFunction reciprocal
syn keyword qFunction floor
syn keyword qFunction ceiling
syn keyword qFunction signum
syn keyword qFunction mod
syn keyword qFunction xbar
syn keyword qFunction xlog
syn keyword qFunction and
syn keyword qFunction or
syn keyword qFunction each
syn keyword qFunction scan
syn keyword qFunction over
syn keyword qFunction mmu
syn keyword qFunction lsq
syn keyword qFunction inv
syn keyword qFunction md5
syn keyword qFunction ltime
syn keyword qFunction gtime
syn keyword qFunction count
syn keyword qFunction first
syn keyword qFunction var
syn keyword qFunction dev
syn keyword qFunction med
syn keyword qFunction cov
syn keyword qFunction cor
syn keyword qFunction all
syn keyword qFunction any
syn keyword qFunction rand
syn keyword qFunction sums
syn keyword qFunction prds
syn keyword qFunction mins
syn keyword qFunction maxs
syn keyword qFunction fills
syn keyword qFunction deltas
syn keyword qFunction ratios
syn keyword qFunction avgs
syn keyword qFunction differ
syn keyword qFunction prev
syn keyword qFunction next
syn keyword qFunction rank
syn keyword qFunction reverse
syn keyword qFunction iasc
syn keyword qFunction idesc
syn keyword qFunction asc
syn keyword qFunction desc
syn keyword qFunction msum
syn keyword qFunction mcount
syn keyword qFunction mavg
syn keyword qFunction mdev
syn keyword qFunction xrank
syn keyword qFunction mmin
syn keyword qFunction mmax
syn keyword qFunction xprev
syn keyword qFunction rotate
syn keyword qFunction enlist
syn keyword qFunction distinct
syn keyword qFunction group
syn keyword qFunction where
syn keyword qFunction flip
syn keyword qFunction type
syn keyword qFunction key
syn keyword qFunction til
syn keyword qFunction get
syn keyword qFunction value
syn keyword qFunction attr
syn keyword qFunction cut
syn keyword qFunction set
syn keyword qFunction upsert
syn keyword qFunction raze
syn keyword qFunction union
syn keyword qFunction inter
syn keyword qFunction except
syn keyword qFunction cross
syn keyword qFunction sv
syn keyword qFunction vs
syn keyword qFunction sublist
syn keyword qFunction read0
syn keyword qFunction read1
syn keyword qFunction hopen
syn keyword qFunction hclose
syn keyword qFunction hdel
syn keyword qFunction hsym
syn keyword qFunction hcount
syn keyword qFunction peach
syn keyword qFunction system
syn keyword qFunction ltrim
syn keyword qFunction rtrim
syn keyword qFunction trim
syn keyword qFunction lower
syn keyword qFunction upper
syn keyword qFunction ssr
syn keyword qFunction view
syn keyword qFunction tables
syn keyword qFunction views
syn keyword qFunction cols
syn keyword qFunction xcols
syn keyword qFunction keys
syn keyword qFunction xkey
syn keyword qFunction xcol
syn keyword qFunction xasc
syn keyword qFunction xdesc
syn keyword qFunction fkeys
syn keyword qFunction meta
syn keyword qFunction uj
syn keyword qFunction lj
syn keyword qFunction ij
syn keyword qFunction pj
syn keyword qFunction aj
syn keyword qFunction aj0
syn keyword qFunction asof
syn keyword qFunction fby
syn keyword qFunction ungroup
syn keyword qFunction xgroup
syn keyword qFunction plist
syn keyword qFunction txf
syn keyword qFunction save
syn keyword qFunction load
syn keyword qFunction rsave
syn keyword qFunction rload
syn keyword qFunction show
syn keyword qFunction csv
syn keyword qFunction parse
syn keyword qFunction eval
syn keyword qFunction last

syn match qLib "\.Q\.k"
syn match qLib "\.Q\.host"
syn match qLib "\.Q\.addr"
syn match qLib "\.Q\.res"
syn match qLib "\.Q\.addmonths"
syn match qLib "\.Q\.Cf"
syn match qLib "\.Q\.f"
syn match qLib "\.Q\.fmt"
syn match qLib "\.Q\.ff"
syn match qLib "\.Q\.fl"
syn match qLib "\.Q\.opt"
syn match qLib "\.Q\.def"
syn match qLib "\.Q\.qt"
syn match qLib "\.Q\.v"
syn match qLib "\.Q\.qp"
syn match qLib "\.Q\.V"
syn match qLib "\.Q\.ft"
syn match qLib "\.Q\.ord"
syn match qLib "\.Q\.tx"
syn match qLib "\.Q\.tt"
syn match qLib "\.Q\.fk"
syn match qLib "\.Q\.t"
syn match qLib "\.Q\.ty"
syn match qLib "\.Q\.nct"
syn match qLib "\.Q\.fu"
syn match qLib "\.Q\.A"
syn match qLib "\.Q\.a"
syn match qLib "\.Q\.n"
syn match qLib "\.Q\.nA"
syn match qLib "\.Q\.an"
syn match qLib "\.Q\.b6"
syn match qLib "\.Q\.id"
syn match qLib "\.Q\.j10"
syn match qLib "\.Q\.x10"
syn match qLib "\.Q\.j12"
syn match qLib "\.Q\.x12"
syn match qLib "\.Q\.l"
syn match qLib "\.Q\.D"
syn match qLib "\.Q\.dd"
syn match qLib "\.Q\.d0"
syn match qLib "\.Q\.p1"
syn match qLib "\.Q\.qbp"
syn match qLib "\.Q\.p2"
syn match qLib "\.Q\.P2"
syn match qLib "\.Q\.P3"
syn match qLib "\.Q\.p"
syn match qLib "\.Q\.view"
syn match qLib "\.Q\.L"
syn match qLib "\.Q\.cn"
syn match qLib "\.Q\.pcnt"
syn match qLib "\.Q\.dt"
syn match qLib "\.Q\.ind"
syn match qLib "\.Q\.fp"
syn match qLib "\.Q\.foo"
syn match qLib "\.Q\.a1"
syn match qLib "\.Q\.a0"
syn match qLib "\.Q\.a2"
syn match qLib "\.Q\.qb"
syn match qLib "\.Q\.qd"
syn match qLib "\.Q\.xy"
syn match qLib "\.Q\.IN"
syn match qLib "\.Q\.qa"
syn match qLib "\.Q\.x1"
syn match qLib "\.Q\.x0"
syn match qLib "\.Q\.x2"
syn match qLib "\.Q\.ua"
syn match qLib "\.Q\.q0"
syn match qLib "\.Q\.qe"
syn match qLib "\.Q\.ps"
syn match qLib "\.Q\.en"
syn match qLib "\.Q\.par"
syn match qLib "\.Q\.qm"
syn match qLib "\.Q\.dpt"
syn match qLib "\.Q\.dpft"
syn match qLib "\.Q\.hdpf"
syn match qLib "\.Q\.fs"
syn match qLib "\.Q\.dsftg"
syn match qLib "\.Q\.M"
syn match qLib "\.Q\.chk"
syn match qLib "\.Q\.sw"
syn match qLib "\.Q\.tab"
syn match qLib "\.Q\.t0"
syn match qLib "\.Q\.s1"
syn match qLib "\.Q\.s2"
syn match qLib "\.Q\.S"
syn match qLib "\.Q\.s"
syn match qLib "\.o\.ex"
syn match qLib "\.o\.T"
syn match qLib "\.o\.T0"
syn match qLib "\.o\.B0"
syn match qLib "\.o\.C0"
syn match qLib "\.o\.PS"
syn match qLib "\.o\.t"
syn match qLib "\.o\.Columns"
syn match qLib "\.o\.TI"
syn match qLib "\.o\.TypeInfo"
syn match qLib "\.o\.Special"
syn match qLib "\.o\.o"
syn match qLib "\.o\.Tables"
syn match qLib "\.o\.Ts"
syn match qLib "\.o\.Stats"
syn match qLib "\.o\.Cols"
syn match qLib "\.o\.Key"
syn match qLib "\.o\.FG"
syn match qLib "\.o\.Fkey"
syn match qLib "\.o\.Gkey"
syn match qLib "\.h\.htc"
syn match qLib "\.h\.hta"
syn match qLib "\.h\.htac"
syn match qLib "\.h\.ha"
syn match qLib "\.h\.hb"
syn match qLib "\.h\.pre"
syn match qLib "\.h\.xmp"
syn match qLib "\.h\.cd"
syn match qLib "\.h\.td"
syn match qLib "\.h\.hc"
syn match qLib "\.h\.xd"
syn match qLib "\.h\.eb"
syn match qLib "\.h\.es"
syn match qLib "\.h\.estr"
syn match qLib "\.h\.ec"
syn match qLib "\.h\.ed"
syn match qLib "\.h\.tx"
syn match qLib "\.h\.xt"
syn match qLib "\.h\.c0"
syn match qLib "\.h\.c1"
syn match qLib "\.h\.logo"
syn match qLib "\.h\.sa"
syn match qLib "\.h\.html"
syn match qLib "\.h\.sb"
syn match qLib "\.h\.fram"
syn match qLib "\.h\.jx"
syn match qLib "\.h\.uh"
syn match qLib "\.h\.sc"
syn match qLib "\.h\.hug"
syn match qLib "\.h\.hu"
syn match qLib "\.h\.ty"
syn match qLib "\.h\.hn"
syn match qLib "\.h\.HOME"
syn match qLib "\.h\.hy"
syn match qLib "\.h\.hp"
syn match qLib "\.h\.he"
syn match qLib "\.h\.br"
syn match qLib "\.h\.hr"
syn match qLib "\.h\.nbr"
syn match qLib "\.h\.code"
syn match qLib "\.h\.http"
syn match qLib "\.h\.text"
syn match qLib "\.h\.data"
syn match qLib "\.h\.ht"
syn match qLib "\.z\.a"
syn match qLib "\.z\.b"
syn match qLib "\.z\.exit"
syn match qLib "\.z\.f"
syn match qLib "\.z\.h"
syn match qLib "\.z\.i"
syn match qLib "\.z\.k"
syn match qLib "\.z\.K"
syn match qLib "\.z\.l"
syn match qLib "\.z\.o"
syn match qLib "\.z\.pc"
syn match qLib "\.z\.pg"
syn match qLib "\.z\.ph"
syn match qLib "\.z\.pi"
syn match qLib "\.z\.po"
syn match qLib "\.z\.pp"
syn match qLib "\.z\.ps"
syn match qLib "\.z\.pw"
syn match qLib "\.z\.s"
syn match qLib "\.z\.ts"
syn match qLib "\.z\.u"
syn match qLib "\.z\.vs"
syn match qLib "\.z\.w"
syn match qLib "\.z\.x"
syn match qLib "\.z\.z"
syn match qLib "\.z\.Z"
syn match qLib "\.z\.t"
syn match qLib "\.z\.T"
syn match qLib "\.z\.d"
syn match qLib "\.z\.D"

" Identifier
syn match qIdentifier		"\<\a\w*\>"
syn match qGlobal		"\<\u[A-Z0-9_]*\>"

" Variable name error
syn match  qError		"\<_[a-zA-Z0-9_]\+\>"

" Include
syn match qLang			"^k)"
syn match qError		"^q)"

" symbols
syn match qSymbol		"\(`\<[a-zA-Z0-9\.][a-zA-Z0-9_\.]*\>\)" contains=kType
syn keyword qType		boolean byte short int long real float char symbol month date datetime time minute second contained 

syn match qContext                "\(\.[^zQoh][0-9|a-z|A-Z]*\)"
syn match qCast                   "\`\(text\|bit\|tinyint\|smallint\|int\|bigint\|real\|float\|char\|varchar\|date\|datetime\|time\)\$\s*"

if !exists("did_q_syntax_inits")
  let did_q_syntax_inits = 1
  hi link qFunction		Tag
  hi link qIdentifier	        Identifier
  hi link qLang			DiffChange
  hi link qError		Error
  hi link qSymbol		Special
  hi link qGlobal		Constant
  hi link qContext              Define
  hi link qLib                  DiffText
  hi link qCast                 SpecialKey
  hi link qType                 Boolean
 endif

let b:current_syntax = "q"

if main_syntax == 'q'
  unlet main_syntax
endif

" vim: ts=8
