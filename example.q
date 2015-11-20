
args:.Q.def[`name`port!("name";8888);].Q.opt .z.x

/ remove this line when using in production
/ name:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/ math:localhost:8888::

\l qlib\util\util.q

.util.l "math.q"

steps:{`float$ x+til[z]*(y-x) % z-1}

c:{parse["select from t",$[count x;" where ",x;""]]. 2 0}
b:{parse["select",$[count x;" by ",x;""]," from t"]3}
a:{parse["select ",x," from t"]4}


reverse string .math.t

/

.math.rseed

.math.rnd `student_t

string .math.cdf

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
