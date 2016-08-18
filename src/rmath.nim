include
  private/rmathlib

proc set_seed*(a2: int; a3: int) =
  ## Set random number seed.
  set_seed(a2.cuint,a3.cuint)

proc norm_rand*(): float64 =
  ## Generate standard normal random numbers.
  result = Rf_norm_rand().float64

proc unif_rand*(): float64 =
  ## Generate uniform random numbers.
  result = Rf_unif_rand().float64

proc exp_rand*(): float64 =
  ## Generate exponentially distributed random numbers.
  result = Rf_exp_rand().float64

proc dnorm*(x: float64; mean: float64 = 0.0; sd: float64 = 1.0; log: bool = false): float64 =
  ## Density function for the normal distribution with mean equal to `mean` and standard deviation equal to `sd`.
  result = dnorm(x.cdouble, mean.cdouble, sd.cdouble, log.cint).float64

proc pnorm*(q: float64; mean: float64 = 0.0; sd: float64 = 1.0; lower_tail: bool = true;log_p: bool = false): float64 =
  ## Distribution function for the normal distribution with mean equal to `mean` and standard deviation equal to `sd`.
  result = pnorm(q.cdouble, mean.cdouble, sd.cdouble, lower_tail.cint, log_p.cint).float64

proc qnorm*(p: float64; mean: float64 = 0.0; sd: float64 = 0.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the normal distribution with mean equal to `mean` and standard deviation equal to `sd`.
  result = qnorm(p.cdouble,mean.cdouble,sd.cdouble,lower_tail.cint,log_p.cint).float64

proc rnorm*(mean: float64 = 0.0; sd: float64 = 1.0): float64 =
  ## Random number generation for the normal distribution with mean equal to `mean` and standard deviation equal to `sd`.
  result = Rf_rnorm(mean.cdouble,sd.cdouble).float64

proc dunif*(x: float64; min: float64 = 0.0; max: float64 = 1.0; log: bool = false): cdouble =
  ## Density function for the uniform distribution between `min` and `max`.
  result = dunif(x.float64, min.float64, max.float64, log.cint).float64

proc punif*(q: float64; min: float64 = 0.0; max: float64 = 1.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the uniform distribution between `min` and `max`.
  result = punif(q.cdouble, min.cdouble, max.cdouble, lower_tail.cint, log_p.cint).float64

proc qunif*(p: float64; min: float64 = 0.0; max: float64 = 1.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the uniform distribution between `min` and `max`.
  result = qunif(p.cdouble, min.cdouble, max.cdouble, lower_tail.cint, log_p.cint).float64

proc runif*(min: float64 = 0.0; max: float64 = 1.0): float64 =
  ## Random number generation for the uniform distribution between `min` and `max`.
  result = Rf_runif(min.cdouble, max.cdouble).float64

proc dgamma*(x: float64; shape: float64; rate: float64 = 1.0; log_p: bool = false): float64 =
  ## Density function for gamma distribution with shape `shape` and rate `rate`.
  result = dgamma(x.cdouble, shape.cdouble, rate.cdouble, log_p.cint).float64

proc pgamma*(q: float64; shape: float64; rate: float64 = 1.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for gamma distribution with shape `shape` and rate `rate`.
  result = pgamma(q.cdouble, shape.cdouble, rate.cdouble, lower_tail.cint, log_p.cint).float64

proc qgamma*(p: float64; shape: float64; rate: float64 = 1.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for gamma distribution with shape `shape` and rate `rate`.
  result = qgamma(p.cdouble, shape.cdouble, rate.cdouble, lower_tail.cint, log_p.cint).float64

proc rgamma*(shape: float64; rate: float64 = 1.0): float64 =
  ## Random numbers for gamma distribution with shape `shape` and rate `rate`.
  result = Rf_rgamma(shape.cdouble, rate.cdouble).float64

proc dbeta*(x: float64; shape1: float64; shape2: float64; log: bool = false): float64 =
  ## Density function for the Beta distribution with parameters `shape1` and `shape2`.
  result = dbeta(x.cdouble, shape1.cdouble, shape2.cdouble, log.cint).float64

proc pbeta*(q: float64; shape1: float64; shape2: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the Beta distribution with parameters `shape1` and `shape2`.
  result = pbeta(q.cdouble, shape1.cdouble, shape2.cdouble, lower_tail.cint, log_p.cint).float64

proc qbeta*(p: float64; shape1: float64; shape2: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the Beta distribution with parameters `shape1` and `shape2`.
  result = qbeta(p.float64, shape1.float64, shape2.float64, lower_tail.cint, log_p.cint).float64

proc rbeta*(shape1: float64; shape2: float64): float64 =
  ## Random numbers for the Beta distribution with parameters `shape1` and `shape2`.
  result = Rf_rbeta(shape1.cdouble, shape2.cdouble).float64

proc dlnorm*(x: float64; meanlog: float64 = 0.0; sdlog: float64 = 1.0; log: bool = false): float64 =
  ## Density function for the log normal distribution with mean `meanlog` and standard deviation `sdlog`.
  result = dlnorm(x.cdouble, meanlog.cdouble, sdlog.cdouble, log.cint).float64

proc plnorm*(q: float64; meanlog: float64; sdlog: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the log normal distribution with mean `meanlog` and standard deviation `sdlog`.
  result = plnorm(q.cdouble, meanlog.cdouble, sdlog.cdouble, lower_tail.cint, log_p.cint).float64

proc qlnorm*(p: float64; meanlog: float64; sdlog: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the log normal distribution with mean `meanlog` and standard deviation `sdlog`.
  result = qlnorm(p.cdouble, meanlog.cdouble, sdlog.cdouble, lower_tail.cint, log_p.cint).float64

proc rlnorm*(meanlog: float64; sdlog: float64): float64 =
  ## Random numbers for the log normal distribution with mean `meanlog` and standard deviation `sdlog`.
  result = Rf_rlnorm(meanlog.cdouble, sdlog.cdouble).float64

proc dchisq*(x: float64; df: int; log: bool = false): float64 =
  ## Density function for the Chi squared distribution with `df` degrees of freedom.
  result = dchisq(x.cdouble, df.cdouble, log.cint).float64

proc pchisq*(q: float64; df: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the Chi squared distribution with `df` degrees of freedom.
  result = pchisq(q.cdouble, df.cdouble, lower_tail.cint, log_p.cint).float64

proc qchisq*(p: float64, df: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the Chi squared distribution with `df` degrees of freedom.
  result = qchisq(p.cdouble, df.cdouble, lower_tail.cint, log_p.cint).float64

proc rchisq*(df: int): float64 =
  ## Random number generation for the Chi squared distribution with `df` degrees of freedom.
  result = rchisq(df.cdouble).float64

proc dnchisq*(x: float64; df: int; ncp: float64; log: bool = false): float64 =
  ## Density function for the non-central Chi-squared distribution with `df` degrees of freedom
  ## and non-centrality `ncp`.
  result = dnchisq(x.cdouble, df.cdouble, ncp.cdouble, log.cint).float64

proc pnchisq*(q: float64; df: int; ncp: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Density function for the non-central Chi-squared distribution with `df` degrees of freedom
  ## and non-centrality `ncp`.
  result = pnchisq(q.cdouble, df.cdouble, ncp.cdouble, lower_tail.cint, log_p.cint).float64

proc qnchisq*(p: float64; df: int; ncp: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the non-central Chi-squared distribution with `df` degrees of freedom
  ## and non-centrality `ncp`.
  result = qnchisq(p.cdouble, df.cdouble, ncp.cdouble, lower_tail.cint, log_p.cint).float64

proc rnchisq*(df: int; ncp: float64): float64 =
  ## Random number generation for the non-central Chi-squared distribution with `df` degrees of freedom
  ## and non-centrality `ncp`.
  result = rnchisq(df.cdouble, ncp.cdouble).float64

proc df*(x: float64; df1: int; df2: int; log: bool = false): float64 =
  ## Density function for the F distribution with degrees of freedom `df1` and `df2`.
  result = df(x.cdouble, df1.cdouble, df2.cdouble, log.cint).float64

proc pf*(q: float64; df1: int; df2: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the F distribution with degrees of freedom `df1` and `df2`.
  result = pbeta(q.cdouble, df1.cdouble, df2.cdouble, lower_tail.cint, log_p.cint).float64

proc qf*(p: float64; df1: int; df2: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the F distribution with degrees of freedom `df1` and `df2`.
  result = qbeta(p.float64, df1.float64, df2.float64, lower_tail.cint, log_p.cint).float64

proc rf*(df1: int; df2: int): float64 =
  ## Random number generation for the F distribution with degrees of freedom `df1` and `df2`..
  result = Rf_rf(df1.cdouble, df2.cdouble).float64

proc dt*(x: float64; df: int; log: bool = false): float64 =
  ## Density function for the t distribution with `df` degrees of freedom.
  result = dt(x.cdouble, df.cdouble, log.cint).float64

proc pt*(q: float64; df: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the t distribution with `df` degrees of freedom.
  result = pt(q.cdouble, df.cdouble, lower_tail.cint, log_p.cint).float64

proc qt*(p: float64, df: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the t distribution with `df` degrees of freedom.
  result = qt(p.cdouble, df.cdouble, lower_tail.cint, log_p.cint).float64

proc rt*(df: int): float64 =
  ## Random number generation for the t distribution with `df` degrees of freedom.
  result = rt(df.cdouble).float64

proc dbinom*(x: float64; size: int; prob: float64; log: bool = false): float64 =
  ## Density function for the binomial distribution with parameters `size` and `prob`.
  result = dbinom(x.cdouble, size.cdouble, prob.cdouble, log.cint).float64

proc pbinom*(q: float64; size: int; prob: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the binomial distribution with parameters `size` and `prob`.
  result = pbinom(q.cdouble, size.cdouble, prob.cdouble, lower_tail.cint, log_p.cint).float64

proc qbinom*(p: float64; size: float64; prob: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the binomial distribution with parameters `size` and `prob`.
  result = qbinom(p.float64, size.float64, prob.float64, lower_tail.cint, log_p.cint).float64

proc rbinom*(size: int; prob: float64): float64 =
  ## Random numbers for the binomial distribution with parameters `size` and `prob`.
  result = rbinom(size.cdouble, prob.cdouble).float64

proc dcauchy*(x: float64; location: float64; scale: float64; log: bool = false): float64 =
  ## Density function for the Cauchy distribution with
  ## location parameter `location` and scale parameter `scale`.
  result = dcauchy(x.cdouble, location.cdouble, scale.cdouble, log.cint).float64

proc pcauchy*(q: float64; location: float64; scale: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the Cauchy distribution with
  ## location parameter `location` and scale parameter `scale`.
  result = pcauchy(q.cdouble, location.cdouble, scale.cdouble, lower_tail.cint, log_p.cint).float64

proc qcauchy*(p: float64; location: float64; scale: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the Cauchy distribution with
  ## location parameter `location` and scale parameter `scale`.
  result = qcauchy(p.float64, location.float64, scale.float64, lower_tail.cint, log_p.cint).float64

proc rcauchy*(location: float64; scale: float64): float64 =
  ## Random number generation for the Cauchy distribution with
  ## location parameter `location` and scale parameter `scale`.
  result = Rf_rcauchy(location.cdouble, scale.cdouble).float64

proc dexp*(x: float64; rate: float64 = 1.0; log: bool = false): float64 =
  ## Density function for exponential distribution with rate `rate`.
  result = dexp(x.cdouble, rate.cdouble, log.cint).float64

proc pexp*(q: float64; rate: float64 = 1.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for exponential distribution with rate `rate`.
  result = pexp(q.cdouble, rate.cdouble, lower_tail.cint, log_p.cint).float64

proc qexp*(p: float64; rate: float64 = 1.0; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for exponential distribution with rate `rate`.
  result = qexp(p.cdouble, rate.cdouble, lower_tail.cint, log_p.cint)

proc rexp*(rate: float64): float64 =
  ## Random numbers for exponential distribution with rate `rate`.
  result = Rf_rexp(rate.cdouble).float64

proc dgeom*(x: float64; prob: float64; log: bool = false): float64 =
  ## Density function for geometric distribution with parameter `prob`.
  result = dgeom(x.cdouble, prob.cdouble, log.cint).float64

proc pgeom*(q: float64; prob: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for geometric distribution with parameter `prob`.
  result = pgeom(q.cdouble, prob.cdouble, lower_tail.cint, log_p.cint).float64

proc qgeom*(p: float64; prob: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for geometric distribution with parameter `prob`.
  result = qgeom(p.cdouble, prob.cdouble, lower_tail.cint, log_p.cint)

proc rgeom*(prob: float64): float64 =
  ## Random numbers for geometric distribution with paramer `prob`.
  result = Rf_rgeom(prob.cdouble).float64

proc dhyper*(x: float64; m: int; n: int; k: int; log: bool = false): float64 =
  ## Density function for the hypergeometric distribution with parameters `m`, `n`, and `k`.
  result = dhyper(x.cdouble, m.cdouble, n.cdouble, k.cdouble, log.cint).float64

proc phyper*(q: float64; m: int; n: int; k: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the hypergeometric distribution with parameters `m`, `n`, and `k`.
  result = phyper(q.cdouble, m.cdouble, n.cdouble, k.cdouble, lower_tail.cint, log_p.cint).float64

proc qhyper*(p: float64; m: int; n: int; k: int;lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the hypergeometric distribution with parameters `m`, `n`, and `k`.
  result = qhyper(p.float64, m.cdouble, n.cdouble, k.cdouble, lower_tail.cint, log_p.cint).float64

proc rhyper*(m: int; n: int; k: int;): float64 =
  ## Random numbers for the hypergeometric distribution with parameters `m`, `n`, and `k`.
  result = rhyper(m.cdouble, n.cdouble, k.cdouble).float64

proc dnbinom*(x: float64; size: int; prob: float64; log: bool = false): float64 =
  ## Density function for the negative binomial distribution with parameters `size` and `prob`.
  result = dnbinom(x.cdouble, size.cdouble, prob.cdouble, log.cint).float64

proc pnbinom*(q: float64; size: int; prob: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the negative binomial distribution with parameters `size` and `prob`.
  result = pnbinom(q.cdouble, size.cdouble, prob.cdouble, lower_tail.cint, log_p.cint).float64

proc qnbinom*(p: float64; size: float64; prob: float64; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the negative binomial distribution with parameters `size` and `prob`.
  result = qnbinom(p.float64, size.float64, prob.float64, lower_tail.cint, log_p.cint).float64

proc rnbinom*(size: int; prob: float64): float64 =
  ## Random numbers for the negative binomial distribution with parameters `size` and `prob`.
  result = rnbinom(size.cdouble, prob.cdouble).float64
