// XML PARSER PART
ws:{@[x;where x in" \t\n\r";:;" "]} ; /blank from whitespace
rms:{x -1_where|':[not null x," "]} ; /remove extra space
splt:{(where b&1=sums(b&:not e)-(b:"<"=x)&e:1 rotate "/"=x)_ x} ; / split children

cmt:{[a] /remove comments
        l1: ss[a;"<!--"];
        l2: ss[a;"-->"];
        if[not (count l2)~count l1; show "invalid comments in xml,exiting"; exit 0]; /comment tags should pair up
        if[not count l1; :a];
        p1:first l1; p2: first l2;
        a:(p1#a), 3 _ p2 _ a;
        :cmt[a]; /recurse until all comments are done;
        };


atr:{ /returns a list with atribute and value
        if[not count x;:()];
        k:trim (p:x?"=")#x:trim x; /remove useless white spaces front and back
        p2:(r:trim (1+p) _ x)?"=";
        k2:trim p2 # r;
        v:trim (neg (reverse k2)?" ") _ k2;
        if[not count v;v:k2];
        if[p2~count r;v:k2]; /special boundry case....
        d: (enlist `$k)!(enlist v); if[count n:(count v) _ r; :raze (d;atr[n]);];
        :d;
        };

lxml:{[lvl;x] /lvl, just for debugging purposes
      a:(1+m:s?" ")_ s:(n:x?">")#x;
      s:`$1_ m#s;
      b:"<"=first val:x:rms ws(1+n)_(neg 1+(reverse x)?"<")_ x;
      dd:atr[a];
      $[b;dd:(dd;lxml[lvl+1;]'[splt x]);dd:(dd;val)];
      :(enlist s)!enlist dd;
      };
 

tl:{[s;ret]
       if[not (type ret) in (99h;98h);:(enlist s)!(enlist ret)];
       if[98h ~ type ret; :(enlist s)!(enlist tl[s;]'[ret])];
       k:first key ret;
       l:raze ret[key ret]; /to raze or not to
       l1: first l;
       l2: last l;
       rd: tl[k;]'[l2];
       :(enlist s)!enlist (l1;rd); };

rdXML:{[fname]
        a: raze read0 fname;
        if[count a ss "<[?]xml";
        a: ((first a ss "<[?]xml")#a),(2+first a ss "[?]>") _ a]; /remove xml label/dtd tag information
        a: cmt[rms a];
        ret: lxml[0;]'[splt a]; /splt splits remaining xml into nested tags
        r:tl[`;ret]; /ret is a nested list, convert to table and return
        :r[`][`];
     };
