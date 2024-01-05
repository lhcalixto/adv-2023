f1:{
    D:`r`g`b!(12;13;14);
    d:aux[];
    sum (inter/) {[x;d;D] a[;0]where not any each (1_'a:d[x])>D x}[;d;D]each `r`g`b
    }

f2:{
    d:aux[];
    sum prd {[x;d]max each 1_'d x}[;d]each `r`g`b
 }

aux:{
    r:vs[";";]each ssr[;"; ";";"]each ssr[;", ";";"]each ssr[;(" green");("G")]each ssr[;(" red");("R")]each ssr[;(" blue");("B")]each raze each 1_'vs[":";]each read0 `:input2.txt;
    a:{[r;x]r@'where each x in'/: r}[r;]each "RGB";
    v:{value@'/:-1_'/: x} each a;
    rid:(1+til count r),'/:v;
    `r`g`b!(rid 0;rid 1;rid 2)
 }