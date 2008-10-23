    * From: "Rohit Tripathi" <rohit.trip@gmail.com>
    * To: k4@listbox.com
    * Subject: generating permutations
    * Date: Sat, 7 Jun 2008 20:43:57 -0400

(when experimenting with the possibility of solving the
'wolf-goat-cabbage' type problems in q)

"when in doubt, use brute force"

Define:

fx:{[l;x] x,/:l except x}

And

gx[N] = raze fx[l;]'[gx[N-1]]

Where the base case would be:

gx[1] = raze l

Write a q version of gx as follows:

gx:{[N;fx;l] raze $[N~1;l;fx[l;]'[gx[N-1;fx;l]]]}

And then maybe: gx[count l; fx; l]

I'm sure a better/faster code exists.....clues?

    * From: "arthur" <a@kx.com>
    * To: <k4@listbox.com>
    * Subject: Re: [k4] generating permutations
    * Date: Sun, 8 Jun 2008 10:09:10 -0700

 > fx:{[l;x] x,/:l except x}
 > gx:{[N;fx;l] raze $[N~1;l;fx[l;]'[gx[N-1;fx;l]]]}


this is nice. maybe combine the two:

g:{[N;l]$[N=1;l;raze g[N-1;l]{x,/:y except x}\:l]}


g[3;`a`b`c]


