system"p 123456";   /safe port number mod 65536
system"c 500 500";  /to display incoming messages

/username@client-machine
mkid:{[usr;box] string[usr],"@",string box}

/display on server side using 0N! and broadcast to all clients except h 
sendmsg:{[h;msg] (neg key[.z.W] except h)@\:0N!"show\"",string[`time$.z.z]," ",msg,"\"";} 

/client connected, broadcast username and hostname (modify client to point to server)
.z.po:{sendmsg[0N;] mkid[.z.u;.z.h]," connected at ",string[.z.z],"GMT";} 

/client disconnected, broadcast as above
.z.pc:{sendmsg[0N;] mkid[.z.u;.z.h]," disconnected at ",string[.z.z],"GMT";}  

/if alone, notify that messages aren't going to anyone
.z.pg:{$[1=count .z.W; sendmsg[0N;"sorry ",mkid[.z.u;.z.h]," nobody else is connected yet :-("];  

/else check x to avoid broadcasting empty strings sent by client
                        if[count x;sendmsg[.z.w;string[.z.u],": ",x]]];} 
