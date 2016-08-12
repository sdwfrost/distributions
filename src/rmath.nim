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

proc dchisq*(x: float64; df: int; log: bool = false): float64 =
  ## Density function for the Chi squared distribution with `df` degrees of freedom.
  result = dchisq(x.cdouble, df.cdouble, log.cint).float64

proc pchisq*(q: float64; df: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Distribution function for the Chi squared distribution with `df` degrees of freedom.
  result = pchisq(q.cdouble, df.cdouble, lower_tail.cint, log_p.cint).float64

proc qchisq*(p: float64, df: int; lower_tail: bool = true; log_p: bool = false): float64 =
  ## Quantile function for the the Chi squared distribution with `df` degrees of freedom.
  result = qchisq(p.cdouble, df.cdouble, lower_tail.cint, log_p.cint).float64

proc rchisq*(df: int): float64 =
  ## Random number generation for the the Chi squared distribution with `df` degrees of freedom.
  result = rchisq(df.cdouble).float64

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
