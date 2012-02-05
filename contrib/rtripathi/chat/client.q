h:hopen `::123456;  /add hostname for server running on a different box
system "c 500 500";

/if input is \\ exit; send to server everything except "\n" 
.z.pi:{if[x~"\\\\\n"; exit 0];h@x except "\n";} 
