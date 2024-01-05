a:read0 `:input3.txt
iNum:2*{in[;.Q.n]each x}each a
iSym:1*not {in[;.Q.n,"."]each x}each a
iStar:1*{in[;"*"]each x}each a
iSymNum:iSym+iNum
iStarNum:iStar+iNum


findGoodNumbs:{
    ni:{(0,1+where 1<1_deltas where x>1) _ where x>1} iSymNum x; / Take number indices
    neighNi:{raze (min[x]-1;x;1+max x)} each ni; / Take neighbor number indices
    {$[any v where not null v:raze (iSymNum[x-1;y];iSymNum[x;y];iSymNum[x+1;y]) mod 2;a[x;-1_1_y];]}[x] each neighNi / Check if there's a simbol as neighbor
 }

Res1:{sum v where -7=type each v:value each raze findGoodNumbs each til count iSym}

findGears:{
    {$[iStar[x;y] in 0;0;
        [ni:(y-1;y;y+1); / Take number indices
        p:(iStarNum[x-1;ni];iStarNum[x;ni];iStarNum[x+1;ni]);
        $[2=sum raze 0<{{[x;p]if[2<>p x;:0];if[(2=p x)&2=p x-1;:0];if[(2=p x)&2<>p x-1;:2]}[;raze x] each 0 1 2}each p;1;0]]]}[x] each til count iStar x
 }

iGears:findGears each til count iStar
iNumGears:iNum+iGears

findGoodNumbs2:{
    ni:{(0,1+where 1<1_deltas where x>1) _ where x>1} iNumGears x; / Take number indices
    neighNi:{raze (min[x]-1;x;1+max x)} each ni; / Take neighbor number indices
    {$[any 1=raze p:(iNumGears[x-1;y];iNumGears[x;y];iNumGears[x+1;y]) mod 2;(a[x;-1_1_y];(x+b-1;y where raze 1=p b:where any each 1=p));]}[x] each neighNi
    }

Res2:{
    r:raze findGoodNumbs2 each til count iGears;
    r where 0=type each r;
    v:value each raze value group (!). flip r where 0=type each r;
    sum prd each 2 cut v}
    