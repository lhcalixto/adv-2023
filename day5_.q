v:raze each 1_'deltas each b:value each' vs["~";]each read0 `:input5.txt

d:{til 1+max x} each max each v

p:{d[x]*\:(1*0<v) x}each til count v

cubs:{$[0=type p x;b[x;0]+/:;b[x;0]]p x} each til count p

p:asc {a:$[0=type x;-1_';-1_]x;(x[0;2];a)}each cubs

f:{count each x inter y}

p:p,'til count p

g:{[d;x]if[d[x;0]=1;$[1b~(~/)d[x;1];:.[d;x,0;:;count d[x;1]];:d]];c:count r:reverse x#d;{[n;d;x;r;c]if[n=c;:.[d;x,0;:;1]];$[count f[d[x;1];r[n;1]];.[d;x,0;:;$[1b~(~/)d[x;1];count d[x;1];1]+first r n];.z.s[n+1;d;x;r;c]]}[0;d;x;r;c]}

fp:p g/til count p / Final position


h:{[x;n]if[1>fp[x;0]-n;:(fp[x;2];())];r:t where (t:x#fp)[;0]=fp[x;0]-n;v:v where not null v:r[;2]where 0<>type each$[1=count r;f[fp[x;1];r[0;1]];f[fp[x;1];]each r[;1]];$[count v;(fp[x;2];v where not null v);.z.s[x;n+1]]}[;1]

res:h each (fp where 1<fp[;0])[;2]

count[fp]-count distinct raze res[;1]where 1=count each res[;1] / Count the most top ones