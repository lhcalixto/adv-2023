func:{
    c:where 1<deltas i:1_where not 0<>deltas ""~/:a:read0 `input5.txt;
    v:value each' a c _i;
    d:{{(-1_x),'x[2]+-1_x}each x} each v;
    {{[dom;x]$[any b:x within' t:dom[;1];[r:raze t i:where b;first dom[;0][i;0]+x-r[0]];x]}[x]} each d
 }

Res:{
    F:func[];
    min {[x;F]F[6] F[5] F[4] F[3] F[2] F[1] F[0] x}[;F] each value last vs[":";read0[`input5.txt] 0]
 }

invFunc:{
    c:where 1<deltas i:1_where not 0<>deltas ""~/:a:read0 `input5.txt;
    v:value each' a c _i;
    d:{{(-1_x),'x[2]+-1_x}each x} each v;
    {{[dom;x]$[any b:x within' t:dom[;0];[r:raze t i:where b;first dom[;1][i;0]+x-r[0]];x]}[x]} each d
 }

Res2:{
    g:reverse invFunc[];
    v:value last vs[":";read0[`input5.txt] 0];
    itvs:sums each 2 cut(value last vs[":";read0[`input5.txt] 0])-count[v]#(0;1);
    ret:0;
    while[not any (g[6] g[5] g[4] g[3] g[2] g[1] g[0] ret) within/: itvs;ret+:1];
    ret
 }