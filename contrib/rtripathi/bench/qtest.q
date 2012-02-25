system "c 5000 5000"

timeout:40000; /miliseconds cutoff for scripts passed to k4unit
port:"50000";  /port to run tests on
SVNroot:hsym `$"../../.."; /change this to the location where subversion tree is checked out
SVNpath:.Q.dd[SVNroot;]; /create full path for script

/function to load individual scripts
loadfile:{@[system;"l ",0N!1_x;{0N!"unable to load file: ",x," error: ",y}x]}

/suffixMatch from Daniel Nugent's qspec 
/https://raw.github.com/DannoHung/qspec/
suffixMatch:{[suffix;path]; 
 if[path like "*",suffix;:enlist path];
 f: ` sv' path,'f where not (f:(),key path) like ".*";
 d: f where 11h = (type key@) each f;
 f: f where f like "*",suffix;
 raze f, .z.s[suffix] each d
 }

execute:{[scripts;command] /spawn q processes and execute runtest
    system 0N!command; /system(3) so no checks
    system"sleep 1";
    h:@[hopen;hsym `$"::",port;{-2@"unable to open port ",port,": ",x; 0}];
    t:@[h;(`runtest;scripts);{-2@"error in runtest: ", x; :()}]; /call runtest
    @[h;"exit 0";{-2@"finished: ",x," :",y}command]; /catch 'close
    t }

runtest:{[scripts] /executed on spawned q process

    K4UNITpath:  SVNpath `contrib`simon`k4unit`k4unit.q; /simon's k4unit
    loadfile string K4UNITpath; /load k4unit.q 

    /prepare KUT prior to running KUrt[]
    /create table: run, timeout, q, loadfile[filepath]
    nscripts: count scripts;
    check: flip `action`ms`lang`code!(nscripts#`run;nscripts#timeout;nscripts#`q;`$"loadfile[\"",/:string[scripts],\:"\"]"); 

    /modify KUT by merging check table from above
    KUT,:update file:`none,action:lower action,lang:`q^lower lang,ms:0^ms,bytes:0j^bytes,repeat:1|repeat,minver:0^minver 
                from KUT uj check; /improvement possible to display memory usage 

    /run the test, this populates the table KUTR containing execution results
    KUrt[];

    1!raze[`code;`$("msx_";"ok_"),\:string[.z.K],string .z.o] xcol select code,msx,ok from KUTR }

start:{
    a:a where not "#"~/:first each a:trim read0 `:config.nix; /read config file
    version:a,\:" ",string[.z.f]," -p ",port," &";

    /remove interactive or high IO scripts
    exclude:`csvguess.q`d0.q`buildhdb.q`io.q`readspeed.q`throughput.q`svnchk.q; /exclude testing some scripts
    benchmark:`bell.q`greplin.q`nav.q`state.q`book.q`inv.q`mandel.q`poly.q;

    extract:{x{x where not x like "*",string y}/y}[;exclude];

    kxqlib:      SVNpath  (`kx;`$"kdb+");
    cookbook:    SVNpath `cookbook_code;
    contrib:     SVNpath `contrib;

    /search for all q files in SVNroot/kx/kdb+ and remove excluded scripts
    kxqfiles:       extract suffixMatch[".q";kxqlib];
    cookbookqfiles: extract suffixMatch[".q";cookbook];
    contribqfiles:  extract suffixMatch[".q";contrib];
    allqfiles:      kxqfiles,cookbookqfiles,contribqfiles;

    /extract benchmark scripts from allqfiles
    benchmark:allqfiles raze allqfiles{where x like "*",string y}/:benchmark;
    lj/[execute[benchmark;] each version]} /for whole svn tree: "execute[contribqfiles;] each version" etc.
