import sequtils
import random
import math
import rmath
import distributions

proc sir(beta: float64; gamma: float64; tf: float64; S0: int64; I0: int64; R0: int64) : seq[seq[int64]] =
  var
    t = 0.0
    S = S0
    I = I0
    R = R0
  var ta = @[t]
  var Sa = @[S]
  var Ia = @[I]
  var Ra = @[R]
  while t <= tf and I>0:
    var pf1 = beta*float64(S)*float64(I)
    var pf2 = gamma*float64(I)
    var pf = pf1 + pf2
    var dt = rand(Exponential(s: 1.0/pf))
    t = t + dt
    var v = rand(Uniform(a: 0.0, b: pf))
    if v < pf1:
      S = S-1
      I = I+1
    else:
      I = I-1
      R = R+1
    ta.add(t)
    Sa.add(S)
    Ia.add(I)
    Ra.add(R)
  result = @[Sa,Ia,Ra]

randomize()
set_seed(random(10000),random(10000))
for i in 1..1000:
  var s = sir(0.1/10000, 0.05, 1000.0, 9999, 1, 0)
  echo s

