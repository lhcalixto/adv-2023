Res1:{
    v:vs["|"]each raze each 1_'vs[":";]each read0 `:input4.txt;
    r:-1+r where 0<r:count each {(inter/)value each x}each v;
    sum xexp[2;] each r
    }

Res2:{
    r:count each {(inter/)value each x}each vs["|"]each raze each 1_'vs[":";]each read0 `:input4.txt;
    p:(1+til count r),'r;
    c:{x[0],x[0]+1+til x[1]} each p;
    v:flip 1,'p; / Number of cards, card number, number of win
    sum first v {[v;x]s:$[x=0;0;(1+x)#0],v[2;x]#v[0;x];s,:$[c:count[v 0]-count[s];c#0;()];@[v;0;{[x;s]x+s}[s]]}/ til count v 0
    }
