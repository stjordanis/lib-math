
args:.Q.def[`name`port!("name";8888);].Q.opt .z.x

/ remove this line when using in production
/ name:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/ math:localhost:8888::

\l qlib\util\util.q

.util.l "math.q"

.math.attached .math.data

r) library(ggplot2)

p) ggplot(`elec.temp,aes(temp,usage)) + geom_point()

c:{parse["select from t",$[count x;" where ",x;""]]. 2 0}
b:{parse["select",$[count x;" by ",x;""]," from t"]3}
a:{parse["select ",x," from t"]4}

diag:{x@'a:til count x}

d2t:{flip`sym`val!(key;value)@\:x}

/ lm:{[data;formula]
/  r:"~~" vs formula;
/  X:"f"$value flip?[data;();0b;]xa:?[;X!X:cols data;X]()~X:a r 1;
/  Y:$[1=count Y;first;::]Y:"f"$value flip?[data;();0b;]ya:?[;Y!Y:cols data;Y]()~Y:a r 0;
/  b:((h:inv[X mmu flip X])mmu X)mmu Y;
/  `formula`data`X`Y`beta`h`n`p`variable`xa`ya!(formula;data;X;Y;b;h;count data;count X;key xa;xa;ya)
/  }

lm0:{[data;xa;ya]
 X:"f"$value flip?[data;();0b;]xa;
 Y:$[1=count Y;first;::]Y:"f"$value flip?[data;();0b;]ya;
 b:((h:inv[X mmu flip X])mmu X)mmu Y;
 `data`X`Y`beta`h`n`p`variable`xa`ya!(data;X;Y;b;h;count data;count X;key xa;xa;ya)
 }

lm:{[data;formula]
 r:"~~" vs formula;
 xa:?[;X!X:cols data;X]()~X:a r 1;
 ya:?[;Y!Y:cols data;Y]()~Y:a r 0;
 lm0[data;xa;ya],(enlist`formula)!enlist formula
 }

/ regression diagnostics
d0:{
 H:flip[X] mmu x[`h] mmu X:x`X ;
 e:Y - yhat:H mmu Y:x`Y;
 se:e%dev[e]*sqrt 1 - diag H;
 Hi:diag H;
 D:se*se*Hi % (p:x`p) * 1 - Hi;
 sigma:sqrt(e mmu e) % x[`n] - p ;
 x,`H`e`se`Hi`D`yhat`sigma!(H;e;se;Hi;D;yhat;sigma)
 }

d2t d0 lm[elec.temp]"usage ~~ temp,intercept:1"

d2t r:d0 lm[salinity]"salinity  ~~ discharge,intercept:1"

/ .math.attached r

/ p) plot(`Hi)
/ p) plot(`D)

/ (::)stud:1_update dt:abs deltas t from update t:{.math.quantile[`students_t,x;1-0.5*0.05]}@'num from ([]num:100+til 1000)

/ p) ggplot(`stud,aes(x=num,y=dt )) + geom_point()

/ Inference
d1:{
 sbeta:x[`sigma] * sqrt diag x`h;
 alpha:0.05;
 ci:flip ((-;+)@\:x`beta)@\:sbeta*ci:.math.quantile[d:`students_t,x[`n]-x`p;1 - 0.5*alpha];
 tbeta:x[`beta] % sbeta;
 pval:2*.math.cdf_comp[d;abs tbeta];
 sigcode:{first (`$("***";"**";"*";".";"")) where x within/:flip -1 1 _\:(0 0.001 0.01 0.05 0.1 0wf)}@'pval;
 x,`sbeta`alpha`ci`tbeta`pval`sigcode!(sbeta;alpha;ci;tbeta;pval;sigcode)
 }

flp:{[x;y]flip x#y}

d2t r:d1 d0 lm[salinity]"salinity  ~~ discharge,intercept:1"

flp[`variable`beta`sbeta`tbeta`ci`pval`sigcode]r

.math.attached r

/ predic


k:{max(0;x-y)}

predic:{[data;r]d,'flip (`$"h",/:string key r`ya)!$[0h = type y:r[`beta]mmu"f"$value flip d:?[data;();0b;]r[`xa];y;enlist y]}


(::)res:lidar,'predic[lidar] r:lm[lidar;"logratio ~~ intercept:1,range,k0:k[575]range,k1:k[600]range"]

p) ggplot(`res,aes(x=range,y=logratio)) + geom_point()+ geom_point(aes(y=hlogratio))


del:{![y;();1b;$[0>type x;enlist;(::)] x]}
/ melt:{raze{flip (`var_,x,`val)!enlist[z],y x,z}[x;y] each cols[y] except x}
/ melt:{r:flip raze{ flip enlist[z],y x,z}[x;z] each cols[z] except x;
/      flip(y[`var],x,y[`val])!r}

melt:{(x,`variable`val) xcols ungroup flip(`variable,x,`val)!flip c,'y each x,/:c:cols[y] except x}

cast:{x:?[0>type x;enlist x;x];m:(first 1#0#)each group(y`val)!y`variable;?[y;();x!x;({z,x!y};`variable;`val;m)]}

res1:melt[`row_names`range`intercept`k0`k1;res]

p) ggplot(`res1,aes(x=range,y=val,color=variable)) + geom_point()

(::)res:lidar,'predic[lidar] r:lm0[lidar;;(enlist`logratio)!(enlist`logratio)](`intercept`range!(1j;`range)),(`$"k",/:string til count[l])!{(k;x;`range)}@/:l:500 550 600 650

res1:melt[`row_names`range`intercept`k0`k1`k2`k3;res]

p) ggplot(`res1,aes(x=range,y=val,color=variable)) + geom_point()


/ Penalized Regression Spline

K:10

D:((2 cut 4#0f),'K cut (2*K)#0f),(2 cut (2*K)#0f),'-1_ 0^prev\["f"$1,1_(K#0)]





/
d2t r:d1 d0 l

d2t lm[salinity]"salinity  ~~ discharge,intercept:1"

r[`beta] $ (1 2f;1 1f)

predic:{

 }




/ scatterplot smoothing


p) ggplot(`lidar,aes(range,logratio)) + geom_point()

/
diagnostic[`regression`influence`autocorrelation`inference`tstat`pVal]


/
plot.spm
lines.spm
predict.spm
print.spm
residuals.spm
fitted.spm
summary.spm
spm

.math.attached enlist `a`b!1 2

.math.detached `a`b!1 2

steps:{`float$ x+til[z]*(y-x) % z-1}

c:{parse["select from t",$[count x;" where ",x;""]]. 2 0}
b:{parse["select",$[count x;" by ",x;""]," from t"]3}
a:{parse["select ",x," from t"]4}

(::)mto:-1 _ 1 _ steps[-1;1;100]
(::)zto:-1 _ 1 _ steps[0;1;100]
(::)tto:-1 _ 1 _ steps[-10;10;100]

([]mto;.math.pdf[`normal] mto)
([]tto;.math.pdf[`normal] tto)

([]mto;.math.cdf[`normal] mto)
([]tto;.math.cdf[`normal] tto)

([]zto;.math.quantile[`normal] zto)




/

(::)S:"j"$.z.p

(::)s:.math.bml.seed[`kreutzer1986;S]
(::)r:.math.bml.rnd[`normal;0f;1f]

.math.bml.generate[s;r;100]

/

`dist`mean`var!(`normal;01;1f)

.math.g:{g0[x`dist;x;y] }

/ .math.g0:()!()
/ .math.g0[`normal]:{r ;.math.bml.generate[s;r;y] }
