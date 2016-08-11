import random
import rmath
import distributions

# Random numbers

randomize()
set_seed(random(2500),random(2500))

echo norm_rand()
echo unif_rand()
echo exp_rand()

var a=dnorm(0.0)
echo a

var pn=pnorm(1.96,0.0,1.0,true,false)
echo pn

var qn=qnorm(0.5)
echo qn

var dn=Normal(mu:0.0,sig:1.0)
var dx=rand(dn)
echo dx
