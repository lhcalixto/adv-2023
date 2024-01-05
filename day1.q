v:("one";"two";"three";"four";"five";"six";"seven";"eight";"nine")
k:string 1+til 9
D:k!v
L:k,v
P:"*",/:(k,v),\:"*"

f:{[str]
    h:{[x;str]$[any b:like[r:x#str;]each P;L where b;.z.s[x+1;str]]}[1;str];
    t:{[x;str]$[any b:like[r:x#str;]each P;L where b;.z.s[x-1;str]]}[-1;str];
    value raze {first $[first x in key D;x;D?x]}each (h;t)
    }

{sum f each read0 x} `:input1.txt
