
/ meta:`name`uid`fname!(`math;"G"$"e2af8dd2-d91f-42d3-a5b6-3c6d763f25e5";"math.q")

\d .math
meta0:`name`uid`fname!(`math;"G"$"e2af8dd2-d91f-42d3-a5b6-3c6d763f25e5";"math.q")
path: hsym`$$[0=count path:(neg count meta0`fname) _ ((1!.util.lt) meta0`uid)`path;".";path]

data:get .Q.dd[path]`data`data

bml.lib:.Q.dd[.math.path]`lib,.z.o,`bml

t:3!enlist`nsp`dic`name`lib`arg`tipe`default`fn!(`;`;`;`;``;"  ";{};{})

add:{`.math.t insert update fn:{.math[x;`lib] 2: (y;count z) }'[nsp;lib;tipe] from enlist`nsp`dic`name`lib`arg`tipe`default!x}

add(`bml;`seed;`kreutzer1986;`kreutzer1986;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`taus88;`taus88;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`hellekalek1995;`hellekalek1995;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`mt11213b;`mt11213b;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`mt19937;`mt19937;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`mt19937_64;`mt19937_64;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci607;`lagged_fibonacci607;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci1279;`lagged_fibonacci1279;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci2281;`lagged_fibonacci2281;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci3217;`lagged_fibonacci3217;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci4423;`lagged_fibonacci4423;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci9689;`lagged_fibonacci9689;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci19937;`lagged_fibonacci19937;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci23209;`lagged_fibonacci23209;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`lagged_fibonacci44497;`lagged_fibonacci44497;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux3;`ranlux3;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux4;`ranlux4;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux64_3;`ranlux64_3;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux64_4;`ranlux64_4;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux3_01;`ranlux3_01;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux4_01;`ranlux4_01;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux64_3_01;`ranlux64_3_01;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux64_4_01;`ranlux64_4_01;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux24;`ranlux24;enlist`seed;enlist"j";enlist 1234);
add(`bml;`seed;`ranlux48;`ranlux48;enlist`seed;enlist"j";enlist 1234);

seed0:()!()
seed0[-7h]:{x}
seed0[-11h]:{d[`fn] . (d:t [(`bml;`seed;x)] )`default }
seed0[ 99h]:{ d[`fn] . d[`tipe]$'((d[`arg]!d`default),x) (d:t[(`bml;`seed;x`seed)])`arg}
seed:{seed0[type x]x}


rseed: seed `kreutzer1986

add(`bml;`rnd;`uniform_smallint;`runiform_smallint;`min_arg`max_arg;"ii";0 9);
add(`bml;`rnd;`uniform_int;`runiform_int_distribution;`min`max;"jj";1 0W - 1);
add(`bml;`rnd;`uniform_real;`runiform_real_distribution;`min`max;"ff";0 1f);
add(`bml;`rnd;`bernoulli;`rbernoulli_distribution;enlist`p;enlist"f";enlist 0.5);
add(`bml;`rnd;`binomial;`rbinomial_distribution;`t`p;"jf";1 0.5);
add(`bml;`rnd;`geometric;`rgeometric_distribution;enlist`p;enlist"f";enlist 0.5);
add(`bml;`rnd;`negative_binomial;`rnegative_binomial_distribution;`k`p;"jf";1 0.5);
add(`bml;`rnd;`poisson;`rpoisson_distribution;`mean;enlist"f";enlist 1);
add(`bml;`rnd;`exponential;`rexponential_distribution;enlist`lambda;enlist"f";enlist 1);
add(`bml;`rnd;`gamma;`rgamma_distribution;`alpha`beta;"ff";1 1f);
add(`bml;`rnd;`weibull;`rweibull_distribution;`a`b;"ff";1 1);
add(`bml;`rnd;`extreme_value;`rextreme_value_distribution;`a`b;"ff";1 1);
add(`bml;`rnd;`normal;`rnormal_distribution;`mean`sigma;"ff";0 1f);
add(`bml;`rnd;`lognormal;`rlognormal_distribution;`m`s;"ff";0 1f);
add(`bml;`rnd;`chi_squared;`rchi_squared_distribution;enlist`n;enlist"f";enlist 1);
add(`bml;`rnd;`cauchy;`rcauchy_distribution;`median`sigma;"ff";0 1);
add(`bml;`rnd;`fisher_f;`rfisher_f_distribution;`m`n;"ff";1 1f);
add(`bml;`rnd;`student_t;`rstudent_t_distribution;enlist`n;enlist"f";enlist 1f);

rnd0:()!()
rnd0[0h]:{rnd0[99h](`rnd,t[(`bml;`rnd;x 0)]`arg)!x}
rnd0[-7h]:{x}
rnd0[-11h]:{d[`fn] . (d:t [(`bml;`rnd;x)] )`default }
rnd0[ 99h]:{ d[`fn] . d[`tipe]$'((d[`arg]!d`default),x) (d:t[(`bml;`rnd;x`rnd)])`arg}
rnd:{rnd0[type x]x}

generate0:bml.lib 2:(`generate;3);generate:{r:generate0[rseed;d:rnd x;y];if[type[x] in -11 99 0h;del d];$[0h>type y;first;::] r}

add(`bml;`dist;`bernoulli;`dbernoulli_distribution;enlist`p;enlist"f";enlist 0.5);
add(`bml;`dist;`beta;`dbeta_distribution;`a`b;"ff";2 5f);
add(`bml;`dist;`binomial;`dbinomial_distribution;`n`p;"ff";20 0.5);
add(`bml;`dist;`cauchy;`dcauchy_distribution;`mean`sigma;"ff";0 1);
add(`bml;`dist;`chi_squared;`dchi_squared_distribution;enlist`n;enlist "f";enlist 1);
add(`bml;`dist;`exponential;`dexponential_distribution;`lambda;enlist"f";enlist 1);
add(`bml;`dist;`extreme_value;`dextreme_value_distribution;`a`b;"ff";1 1);
add(`bml;`dist;`fisher_f;`dfisher_f_distribution;`m`n;"ff";1 1f);
add(`bml;`dist;`gamma;`dgamma_distribution;`alpha`beta;"ff";1 1f);
add(`bml;`dist;`geometric;`dgeometric_distribution;enlist`p;enlist"f";enlist 0.5);
add(`bml;`dist;`hypergeometric;`dhypergeometric_distribution;`r`n`N;"jjj";500 250 30);
add(`bml;`dist;`laplace;`dlaplace_distribution;`location`scale;"ff";0 1);
add(`bml;`dist;`logistic;`dlogistic_distribution;`location`scale;"ff";0 1);
add(`bml;`dist;`lognormal;`dlognormal_distribution;`location`scale;"ff";0 1);
add(`bml;`dist;`negative_binomial;`dnegative_binomial_distribution;`r`p;"ff";10 0.5);
add(`bml;`dist;`non_central_t;`dnon_central_t_distribution;`v`delta;"ff";10 5);
add(`bml;`dist;`normal;`dnormal_distribution;`mean`sd;"ff";0 1f);
add(`bml;`dist;`pareto;`dpareto_distribution;`scale`shape;"ff";1 1f);
add(`bml;`dist;`poisson;`dpoisson_distribution;enlist`mean;enlist"f";enlist 1f);
add(`bml;`dist;`rayleigh;`drayleigh_distribution;enlist`sigma;enlist"f";enlist 1f);
add(`bml;`dist;`skew_normal;`dskew_normal_distribution;`location`scale`shape;"fff";0 1 0);
add(`bml;`dist;`students_t;`dstudents_t_distribution;enlist`v;enlist"f";enlist 5f);
add(`bml;`dist;`inverse_gamma;`dinverse_gamma_distribution;`shape`scale;"ff";1 1f);
add(`bml;`dist;`weibull;`dweibull_distribution;`shape`scale;"ff";1 1f);

dist0:()!()
dist0[-7h]:{x}
dist0[0h]:{dist0[99h](`dist,t[(`bml;`dist;x 0)]`arg)!x}
dist0[-11h]:{d[`fn] . (d:t [(`bml;`dist;x)] )`default }
dist0[ 99h]:{ d[`fn] . d[`tipe]$'((d[`arg]!d`default),x) (d:t[(`bml;`dist;x`dist)])`arg}
dist:{dist0[type x]x}

cdf0:bml.lib 2:(`cdf;2);cdf:{r:cdf0[d:dist x;y];if[type[x] in -11 99 0h;del d];$[0h>type y;first;::] r }
cdf_comp0:bml.lib 2:(`cdf_comp;2);cdf_comp:{r:cdf_comp0[d:dist x;y];if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r }
pdf0:bml.lib 2:(`pdf;2);pdf:{r:pdf0[d:dist x;y];if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r }
quantile0:bml.lib 2:(`quantile;2);quantile:{r:quantile0[d:dist x;y];if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r }
quantile_comp0:bml.lib 2:(`quantile_comp;2);quantile_comp:{r:quantile_comp0[d:dist x;y];if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r }
hazard0:bml.lib 2:(`hazard;2);hazard:{r:hazard0[d:dist x;y];if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r }
chf0:bml.lib 2:(`chf;2);chf:{r:chf0[d:dist x;y];if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r }
mean0:bml.lib 2:(`mean_;1);mean:{r:mean0 d:dist x;if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r}
median0:bml.lib 2:(`median_;1);median:{r:median0 d:dist x;if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r}
mode0:bml.lib 2:(`mode_;1);mode:{r:mode0 d:dist x;if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r}
standard_deviation0:bml.lib 2:(`standard_deviation_;1);standard_deviation:{r:standard_deviation0 d:dist x;if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r}
variance0:bml.lib 2:(`variance_;1);variance:{r:variance0 d:dist x;if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r}
skewness0:bml.lib 2:(`skewness_;1);skewness:{r:skewness0 d:dist x;if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r}
kurtosis0:bml.lib 2:(`kurtosis_;1);kurtosis:{r:kurtosis0 d:dist x;if[type[x] in -11 99 0h;del d]; $[0h>type y;first;::] r}


del: bml.lib 2: (`delete_;1)

/ qml

qml.lib: .Q.dd[.math.path]`lib,.z.o,`qml

select lib:{[x;y] .Q.dd[`.math.qml;x] set .math.qml.lib 2: (`$"qml_",string x;y) }'[fn;ar] from ungroup flip`fn`ar!((`sin`cos`tan`asin`acos`atan`sinh`cosh`tanh`asinh`acosh`atanh`exp`expm1`log`log10`logb`log1p`sqrt`cbrt`floor`ceil`fabs`erf`erfc`lgamma`gamma`j0`j1`y0`y1`ncdf`nicdf`kcdf`kicdf`mdet`minv`mevu`mchol`mqr`mqrp`mlup`msvd`poly`const;`atan2`pow`hypot`fmod`beta`pgammar`pgammarc`ipgammarc`c2cdf`c2icdf`stcdf`sticdf`pscdf`psicdf`smcdf`smicdf`solve`min`root;`pbetar`ipbetar`fcdf`ficdf`gcdf`gicdf`bncdf`bnicdf`solvex`minx`rootx`conmin`line;`conminx`linex);1 2 3 4);

qml.version:qml.const 0;qml.pi:qml.const 1;qml.e:qml.const 2;qml.eps:qml.const 3;
qml.pgamma:{qml.gamma[x]*qml.pgammar[x;y]};
qml.pgammac:{qml.gamma[x]*qml.pgammarc[x;y]};
qml.pbeta:{qml.beta[x;y]*qml.pbetar[x;y;z]};
qml.diag:{{@[x#abs[type y]$0;z;:;y]}[count x]'[x;til count x]};
qml.mdiag:{(n#x)@'til n:count[x]&count x 0};
qml.mrank:{sum not(d<qml.eps*d[0]*count[x]|count x 0)|0=d:qml.mdiag qml.msvd[x]1};
qml.mpinv:{flip x[0]mmu{?[(y<x)|y=0;y;1%y]}[qml.eps*x[1;0;0]*count[x 0]|count x 2]'[x 1]
    mmu flip(x:qml.msvd x)2};
qml.mev:{x@\:idesc{$[0>type x;x*x;sum x*x]}'[(x:qml.mevu x)0]};

/// Util

attached:{ key[r]set'value r:$[98h=type x;flip x;x]}
detached:{ ![`.;();0b;] key $[98h=type x;flip x;x]}

c:{parse["select from t",$[count x;" where ",x;""]]. 2 0}
b:{parse["select",$[count x;" by ",x;""]," from t"]3}
a:{parse["select ",x," from t"]4}


