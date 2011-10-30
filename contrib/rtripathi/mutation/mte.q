value "\\l identifiers.q";

same:string t where 1<count each t:value (::)_ group objs[`id]!objs[`def];

mutation:{[l;t] 
	$[(null indx) | any l[(-1;count t)+\:indx:first ss[l;t]] in .Q.an except "_"; l; /ignore if leading or trailing chars
		ssr[bgn#l;t;c[first 1?count c:raze same where t in/: same]],.z.s[(bgn:indx+count t) _ l;t]] }

mutate0:{[f] {x mutation/raze same}'[read0 f]} 
mutate1:{[f] ("c"$read1 f)mutation/raze same} /complete file
