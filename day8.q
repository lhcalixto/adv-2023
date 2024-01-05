res:{
    a:read0 `input8.txt;
    b:2_a;
    v:`$vs[" ";]each ssr[;"  ";" "]each ssr[;"=";""]each ssr[;",";""]each ssr[;")";""]each ssr[;"(";""] each b;
    d:v[;0]!v[;1 2];
    mvs:"R"=a 0;
    B:`AAA;
    E:`ZZZ;
    {[b;e;d;mvs]i:0;while[e<>b:d[b] $[i>=count[mvs];((i+1)#mvs) i;mvs i];i+:1];i+1}[B;E;d;mvs]
    }


res2:{
    a:read0 `input8.txt;
    b:2_a;
    v:vs[" ";]each ssr[;"  ";" "]each ssr[;"=";""]each ssr[;",";""]each ssr[;")";""]each ssr[;"(";""] each b;
    d:v[;0]!v[;1 2];
    mvs:"R"=a 0;
    B:k where like[k:key d;"*A"];
    {[b;d;mvs]R:()!();i:0;R[i]:b;while[not all "Z"=raze -1#'b:d[b][;$[i>=count[mvs];((i+1)#mvs) i;mvs i]];R[i]:b;i+:1];i+1}[B;d;mvs]
    }



wait:{system"sleep 0.2"}
{[b;d;mvs]R:()!();i:0;R[i]:b;while[not all "Z"=raze -1#'0N!b:d[b][;$[i>=count[mvs];((i+1)#mvs) i;mvs i]];i+:1;R[i]:b;wait[]];i+1}