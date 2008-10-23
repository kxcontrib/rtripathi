#!/bin/bash
WHOAMI=`whoami`;
bounce() {
        ARCHIVE=`awk '/^__BOUNCER__/ {print NR + 1; exit 0; }' $1`;
        script=$HOME/logs/srvs/$(whoami).$2.$3.$$.q;
        $(tail -n+$ARCHIVE $0 > $script);
        $QHOME/q $script -host $2 -port $3; # 2.4 doesn't need a temp script, we can do "echo $script | ${QHOME}/q -"
}

#payload
exit 0; 
__BOUNCER__
args: .z.x {(2*x;1+2*x)}'[til `int$0.5*count .z.x]; /can use .Q.opt
map:raze{(enlist `$x[0] except "-")!enlist `$x[1]}'[args];
$[not count map;show "no args specified"; $[(null port:map`port) | null host:map`host; [show "null host/port"; exit 0;];[show "opening connection to ", string conn:hsym`$":"sv string (host;port); @[{h:hopen x; h"exit 0";};conn;{show "killed server at ",string conn; show "...";}]]]];
exit 0; 
__SERVR__
next q script..
