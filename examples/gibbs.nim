import sequtils
import math
import rmath

proc gibbs(N: int; thin: int): seq[seq[float64]] =
  var xa = newSeq[float64](N)
  var ya = newSeq[float64](N)
  var x = 0.0
  var y = 0.0
  for i in 0..(N-1):
    for j in 1..thin:
      x = rgamma(3.0,y*y+4)
      y = rnorm(1.0/(x+1.0),1.0/sqrt(2.0*x+2.0))
    xa[i] = x
    ya[i] = x
  result = @[xa,ya]

var xy = gibbs(50000,1000)
