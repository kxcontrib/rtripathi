/spend a lot of time watching lolcats online and and you get this

gettyp:{ t:(`mixed`short`int`float`char`symbol`table`dict`func`unary_primitive`binary_primitive`projection`composition`f_each`f_over`f_scan`f_each_prior)!(0h; 5h; 6h; 9h; 10h; 11h; 98h; 99h; 100h; 101h; 102h; 104h; 105h; 106h; 107h; 108h; 109h) ;

	typ:first where t=abs x;
	$[0>x;` sv `atomic,typ;99h>abs x;` sv `list,typ;typ]};

t:raze { id:raze ` sv'x,/:key x;  
	tbl:flip  `id`typ`def!($[x~`.q;key x;id];type each value each id;get each id);
	 tbl,raze .z.s'[exec id from tbl where typ=99h]
	 }'[` sv'`,'key `];


 write:{[id;typ;def]

	 id:string id;
	 def:$[typ=98h;" " sv string cols def; typ=99h;" " sv string key def; typ=10h; def; string def];
	 if[0h=type def; def:" " sv def];
	 typ:string gettyp typ;
	 h: hopen hsym `$(getenv `HOME),"/.vim/tags/qtgs.txt";
	 (neg h) " | " sv (id;typ;$[45<count def; (45#def),"..."; def]);
	 hclose h;
	}

write'[t`id;t`typ;t`def];
