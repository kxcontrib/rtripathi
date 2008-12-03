k:"syn keyword qFunction \"",/:string key .q;
l:"syn match qLib \".Q.",/: string key .Q;
m:"syn match qLib \".o.",/: string key .o;
n:"syn match qLib \".h.",/: string key .h;
op:"syn match qOperator \"",/:string op where not null {if[0~sum "{"=string x;:x]}'[op:value .q];
