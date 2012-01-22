types:flip `typname`typ!flip 2 cut (
    `internal;              0Wh; /placeholder for entities in .Q.res
    `mixed;                 0h;
    `boolean;               1h;
    `byte;                  4h;
    `short;                 5h;
    `int;                   6h;
    `long;                  7h;
    `real;                  8h;
    `float;                 9h;
    `char;                  10h;
    `symbol;                11h;
    `timestamp;             12h;
    `month;                 13h;
    `date;                  14h;
    `datetime;              15h;
    `timespan;              16h;
    `minute;                17h;
    `second;                18h;
    `time;                  19h;
    `enum;                  20h;
    `nested_offset;         78h;
    `table;                 98h;
    `dict;                  99h;
    `lambda;                100h;
    `unary_primitive;       101h;
    `binary_primitive;      102h;
    `ternary;               103h;
    `projection;            104h;
    `composition;           105h;
    `f_each;                106h;
    `f_over;                107h;
    `f_scan;                108h;
    `f_each_prior;          109h;
    `f_each_right;          110h;
    `f_each_left;           111h;
    `dynamic_load;          112h);

objs:lj[update abs typ from flip[`id`typ`def!(r,`$'b@i;(count[r]#0Wh),type each v i;(r:.Q.res),v i:where not null v:@[value;;0N]each b:("c"$32+til 95)except"\\",.Q.an except"_")],raze{flip[`id`typ`def!($[x~`.q;k;n];t;value v)],raze .z.s each (n:x .Q.dd/:k:key v) where 99h=t:value type each v:.Q.v x}each` .Q.dd'key`;`typ xkey types];
/TODO: (11h=type each k)&(not type each v) /ref adavies patch for help.q 2011.11.07
/TODO: namespace ids should show up as 99h instead of 101h
