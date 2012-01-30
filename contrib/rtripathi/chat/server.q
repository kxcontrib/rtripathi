system"p 123456";
.z.po:{sendmsg[0N;] string[.z.u],"@",string[.z.h]," connected at ",string[.z.z],"GMT. Type exit to quit";}
.z.pc:{sendmsg[0N;] string[.z.u],"@",string[.z.h]," disconnected at ",string[.z.z],"GMT";}
.z.pg:{ $[1=count .z.W; sendmsg[0N;"sorry ",string[.z.u]," nobody else is connected yet :-("]; sendmsg[.z.w;string[.z.u],": ",x]];}  
sendmsg:{[h;msg] (neg key[.z.W] except h)@\:"show\"",string[`time$.z.z]," ",(msg except "\n"),"\";";}
