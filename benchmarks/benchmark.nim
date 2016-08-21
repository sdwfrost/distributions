import nimbench
import random
import rmath
import distributions

bench(norm_rand, m):
  var x = 0.0
  for i in 1..m:
    var x = norm_rand()
  doNotOptimizeAway(x)

bench(rnorm, m):
  var x = 0.0
  for i in 1..m:
    var x = rnorm()
  doNotOptimizeAway(x)

bench(Normal, m):
  var x = 0.0
  var n = Normal(mu:0.0,sig:1.0)
  for i in 1..m:
    var x = rand(n)
  doNotOptimizeAway(x)

bench(normal, m):
  var x = 0.0
  for i in 1..m:
    var x = rand(normal(0.0,1.0))
  doNotOptimizeAway(x)

bench(rand_normal, m):
  var x = 0.0
  for i in 1..m:
    var x = qnorm(random(1.0),0.0,1.0)
  doNotOptimizeAway(x)

bench(unif_rand, m):
  var x = 0.0
  for i in 1..m:
    var x = unif_rand()
  doNotOptimizeAway(x)

bench(runif, m):
  var x = 0.0
  for i in 1..m:
    var x = runif()
  doNotOptimizeAway(x)

bench(Uniform, m):
  var x = 0.0
  var u = Uniform(a:0.0, b:1.0)
  for i in 1..m:
    var x = rand(u)
  doNotOptimizeAway(x)

bench(uniform, m):
  var x = 0.0
  for i in 1..m:
    var x = rand(uniform(0.0,1.0))
  doNotOptimizeAway(x)

bench(runif2, m):
  var x = 0.0
  for i in 1..m:
    var y = unif_rand()
    var x = runif(0.0,y)
  doNotOptimizeAway(x)

bench(Uniform2, m):
  var x = 0.0
  for i in 1..m:
    var y = unif_rand()
    var x = rand(Uniform(a:0.0, b:y))
  doNotOptimizeAway(x)

bench(uniform2, m):
  var x = 0.0
  for i in 1..m:
    var y = unif_rand()
    var x = rand(uniform(0.0,y))
  doNotOptimizeAway(x)

runBenchmarks()
