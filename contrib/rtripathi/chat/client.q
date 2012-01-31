h:hopen `::123456;  /add hostname for server on different box
system "c 500 500";
.z.pi:{if[x~"\\\\\n"; exit 0];h@x except "\n";} /if input is \\ exit; send to server everything except "\n" 
