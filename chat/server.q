system"p 123456";
system"c 500 500";
.z.po:{sendmsg[0N;] string[.z.u],"@",string[.z.h]," connected at ",string[.z.z],"GMT";}
.z.pc:{sendmsg[0N;] string[.z.u],"@",string[.z.h]," disconnected at ",string[.z.z],"GMT";}
.z.pg:{$[1=count .z.W; sendmsg[0N;"sorry ",string[.z.u]," nobody else is connected yet :-("]; if[count x;sendmsg[.z.w;string[.z.u],": ",x]]];}  
sendmsg:{[h;msg] (neg key[.z.W] except h)@\:0N!"show\"",string[`time$.z.z]," ",msg,"\"";}
