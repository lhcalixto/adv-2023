res1:{
    a:vs[" ";]each read0 `:input7.txt;
    md:a[;0]!value each a[;1];
    v:reverse til count k:"AKQJT98765432";
    d1:k!v;
    comp:{[x;d1]d1?desc d1 x}[;d1];
    tpd:(reverse 1+til count[t])!t:(`5;`41;`32;`311;`221;`2111;`11111);
    tpn:{desc sum each (distinct x)=\:x};
    tps:{`$raze string desc sum each (distinct x)=\:x};
    k:desc key g:group c!tpd?tps each c:a[;0];
    g:g k;
    r:(reverse 1+til count[r])!r:raze comp each g;
    sum key[r]*md value r
 }

res2:{
    a:vs[" ";]each read0 `:input7.txt;
    md:a[;0]!value each a[;1];
    v:reverse til count k:"AKQT98765432J";
    d1:k!v;
    comp:{[x;d1]d1?desc d1 x}[;d1];
    tpd:(reverse 1+til count[t])!t:(`5;`41;`32;`311;`221;`2111;`11111);
    tpn:{desc sum each (distinct x)=\:x};
    tps:{`$raze string desc sum each (distinct x)=\:x};
    jc:{[tps;tpd;x]tn:tpd?ts:tps x;$[(5=s)|0=s:sum "J"=x;ts;$[6=tn;`5;5=tn;`5;4=tn;`41;3=tn;$[s=2;`41;`32];2=tn;`311;1=tn;`2111]]}[tps;tpd;];
    k:desc key g:group c!tpd?jc each c:a[;0];
    g:g k;
    r:(reverse 1+til count[r])!r:raze comp each g;
    sum key[r]*md value r
 }