import
  rmath

type Distribution = ref object of RootObj
  ## Base distribution type.

type UnivariateDistribution = ref object of Distribution
  ## Univariate distribution type.

type ContinuousUnivariateDistribution = ref object of UnivariateDistribution
  ## Continuous univariate distribution type.

type DiscreteUnivariateDistribution = ref object of UnivariateDistribution
  ## Discrete univariate distribution type.

type Normal* = ref object of ContinuousUnivariateDistribution
  ## Normal distribution.
  mu*: float64 ## `mu` is the mean.
  sig*: float64 ## `sigma` is the standard deviation.

proc pdf*(d: Normal; x: float64): float64 =
  ## Probability density of Normal distribution at `x`.
  result = dnorm(x, d.mu, d.sig, false)

proc logpdf*(d: Normal; x: float64): float64 =
  ## Log probability density of Normal distribution at `x`.
  result = dnorm(x, d.mu, d.sig, true)

proc cdf*(d: Normal; q: float64): float64 =
  ## Cumulative density of Normal distribution at `q`.
  result = pnorm(q, d.mu, d.sig, true, false)

proc quantile*(d: Normal; p: float64): float64 =
  ## Quantile of Normal distribution at `p`.
  result = qnorm(p, d.mu, d.sig, true)

proc rand*(d: Normal): float64 =
  ## Random number from a normal distribution.
  result = rnorm(d.mu, d.sig)

type Uniform* = ref object of ContinuousUnivariateDistribution
  ## Uniform distribution.
  a*: float64 ## `a` is the lower bound.
  b*: float64 ## `b` is the upper bound.

proc pdf*(d: Uniform; x: float64): float64 =
  ## Probability density of uniform distribution over [a, b] at x.
  result = dunif(x, d.a, d.b, false)

proc logpdf*(d: Uniform; x: float64): float64 =
  ## Log probability density of uniform distribution over [a, b] at x.
  result = dunif(x, d.a, d.b, true)

proc cdf*(d: Uniform; q: float64): float64 =
  ## Cumulative density of uniform distribution over [a, b] at q.
  result = punif(q, d.a, d.b, true, false)

proc quantile*(d: Uniform; p: float64): float64 =
  ## Quantile of uniform distribution over [a, b] at `p`.
  result = qnorm(p, d.a, d.b, true)

proc rand*(d: Uniform): float64 =
  ## Random number from a normal distribution.
  result = runif(d.a, d.b)

type Exponential* = ref object of ContinuousUnivariateDistribution
  ## Exponential distribution.
  s*: float64 ## `s` is the scale.

proc pdf*(d: Exponential; x: float64): float64 =
  ## Probability density of exponential distribution at `x`.
  result = dexp(x, 1.0/d.s, false)

proc logpdf*(d: Exponential; x: float64): float64 =
  ## Log probability density of exponential distribution at `x`.
  result = dexp(x, 1.0/d.s, true)

proc cdf*(d: Exponential; q: float64): float64 =
  ## Cumulative density of exponential distribution at `q`.
  result = pexp(q, 1.0/d.s, true, false)

proc quantile*(d: Exponential; p: float64): float64 =
  ## Quantile of exponential distribution at `p`.
  result = qexp(p, 1.0/d.s, true)

proc rand*(d: Exponential): float64 =
  ## Random number from an exponential distribution.
  result = rexp(d.s)

type Chisq* = ref object of ContinuousUnivariateDistribution
  ## Chi squared distribution.
  v*: int ## `v` is the degrees of freedom.

proc pdf*(d: Chisq; x: float64): float64 =
  ## Probability density of Chi squared distribution at `x`.
  result = dchisq(x, d.v, false)

proc logpdf*(d: Chisq; x: float64): float64 =
  ## Log probability density of Chi squared distribution at `x`.
  result = dchisq(x, d.v, true)

proc cdf*(d: Chisq; q: float64): float64 =
  ## Cumulative density of Chi squared distribution at `q`.
  result = pchisq(q, d.v, true, false)

proc quantile*(d: Chisq; p: float64): float64 =
  ## Quantile of Chi squared distribution at `p`.
  result = qchisq(p, d.v, true)

proc rand*(d: Chisq): float64 =
  ## Random number from a Chi squared distribution.
  result = rchisq(d.v)
