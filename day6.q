res:{
    v:value each raze trim each 1_'vs[":";]each read0 `input6.txt;
    prd {sum x[1]<prd(reverse l;l:0,1+til x 0)}each flip v
 }

res2:{
    v:value each ssr[;" ";""]each raze each 1_'vs[":";]each read0 `input6.txt;
    prd sum v[1]<prd(reverse l;l:0,1+til v 0)
 }