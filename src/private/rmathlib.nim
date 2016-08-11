 {.deadCodeElim: on.}
when defined(windows):
  const
    rmathlib* = "Rmath-nim.dll"
elif defined(macosx):
  const
    rmathlib* = "libRmath-nim.dylib"
else:
  const
    rmathlib* = "libRmath-nim.so"

proc Rf_R_pow(x: cdouble; y: cdouble): cdouble {.cdecl, importc: "R_pow", dynlib: rmathlib.}
proc Rf_R_pow_di(a2: cdouble; a3: cint): cdouble {.cdecl, importc: "R_pow_di",
    dynlib: rmathlib.}

proc Rf_norm_rand(): cdouble {.cdecl, importc: "norm_rand", dynlib: rmathlib.}
proc Rf_unif_rand(): cdouble {.cdecl, importc: "unif_rand", dynlib: rmathlib.}
proc Rf_exp_rand(): cdouble {.cdecl, importc: "exp_rand", dynlib: rmathlib.}
proc set_seed(a2: cuint; a3: cuint) {.cdecl, importc: "set_seed", dynlib: rmathlib.}
proc get_seed(a2: ptr cuint; a3: ptr cuint) {.cdecl, importc: "get_seed",
                                        dynlib: rmathlib.}

proc dnorm(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dnorm4", dynlib: rmathlib.}
proc pnorm(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pnorm5", dynlib: rmathlib.}
proc qnorm(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qnorm5", dynlib: rmathlib.}
proc Rf_rnorm(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rnorm",
    dynlib: rmathlib.}
proc pnorm_both(a2: cdouble; a3: ptr cdouble; a4: ptr cdouble; a5: cint; a6: cint) {.cdecl,
    importc: "pnorm_both", dynlib: rmathlib.}

proc dunif(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dunif", dynlib: rmathlib.}
proc punif(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "punif", dynlib: rmathlib.}
proc qunif(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qunif", dynlib: rmathlib.}
proc runif(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "runif",
    dynlib: rmathlib.}

proc dgamma(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dgamma", dynlib: rmathlib.}
proc pgamma(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pgamma", dynlib: rmathlib.}
proc qgamma(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qgamma", dynlib: rmathlib.}
proc rgamma(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rgamma",
    dynlib: rmathlib.}
proc log1pmx(a2: cdouble): cdouble {.cdecl, importc: "log1pmx", dynlib: rmathlib.}
proc log1pexp(a2: cdouble): cdouble {.cdecl, importc: "log1pexp", dynlib: rmathlib.}

proc lgamma1p(a2: cdouble): cdouble {.cdecl, importc: "lgamma1p", dynlib: rmathlib.}
proc logspace_add(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "logspace_add",
    dynlib: rmathlib.}
proc logspace_sub(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "logspace_sub",
    dynlib: rmathlib.}
proc logspace_sum(a2: ptr cdouble; a3: cint): cdouble {.cdecl, importc: "logspace_sum",
    dynlib: rmathlib.}

proc dbeta(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dbeta", dynlib: rmathlib.}
proc pbeta(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pbeta", dynlib: rmathlib.}
proc qbeta(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qbeta", dynlib: rmathlib.}
proc rbeta(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rbeta",
    dynlib: rmathlib.}

proc dlnorm(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dlnorm", dynlib: rmathlib.}
proc plnorm(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "plnorm", dynlib: rmathlib.}
proc qlnorm(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qlnorm", dynlib: rmathlib.}
proc rlnorm(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rlnorm",
    dynlib: rmathlib.}

proc dchisq(a2: cdouble; a3: cdouble; a4: cint): cdouble {.cdecl, importc: "dchisq",
    dynlib: rmathlib.}
proc pchisq(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "pchisq", dynlib: rmathlib.}
proc qchisq(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "qchisq", dynlib: rmathlib.}
proc rchisq(a2: cdouble): cdouble {.cdecl, importc: "rchisq", dynlib: rmathlib.}

proc dnchisq(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dnchisq", dynlib: rmathlib.}
proc pnchisq(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pnchisq", dynlib: rmathlib.}
proc qnchisq(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qnchisq", dynlib: rmathlib.}
proc rnchisq(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rnchisq",
    dynlib: rmathlib.}

proc df(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl, importc: "df",
    dynlib: rmathlib.}
proc pf(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pf", dynlib: rmathlib.}
proc qf(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qf", dynlib: rmathlib.}
proc rf(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rf", dynlib: rmathlib.}

proc dt(a2: cdouble; a3: cdouble; a4: cint): cdouble {.cdecl, importc: "dt",
    dynlib: rmathlib.}
proc pt(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl, importc: "pt",
    dynlib: rmathlib.}
proc qt(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl, importc: "qt",
    dynlib: rmathlib.}
proc rt(a2: cdouble): cdouble {.cdecl, importc: "rt", dynlib: rmathlib.}

proc dbinom_raw(x: cdouble; n: cdouble; p: cdouble; q: cdouble; give_log: cint): cdouble {.
    cdecl, importc: "dbinom_raw", dynlib: rmathlib.}
proc dbinom(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dbinom", dynlib: rmathlib.}
proc pbinom(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pbinom", dynlib: rmathlib.}
proc qbinom(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qbinom", dynlib: rmathlib.}
proc rbinom(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rbinom",
    dynlib: rmathlib.}

proc rmultinom(a2: cint; a3: ptr cdouble; a4: cint; a5: ptr cint) {.cdecl,
    importc: "rmultinom", dynlib: rmathlib.}

proc dcauchy(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dcauchy", dynlib: rmathlib.}
proc pcauchy(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pcauchy", dynlib: rmathlib.}
proc qcauchy(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qcauchy", dynlib: rmathlib.}
proc rcauchy(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rcauchy",
    dynlib: rmathlib.}

proc dexp(a2: cdouble; a3: cdouble; a4: cint): cdouble {.cdecl, importc: "dexp",
    dynlib: rmathlib.}
proc pexp(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl, importc: "pexp",
    dynlib: rmathlib.}
proc qexp(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl, importc: "qexp",
    dynlib: rmathlib.}
proc rexp(a2: cdouble): cdouble {.cdecl, importc: "rexp", dynlib: rmathlib.}

proc dgeom(a2: cdouble; a3: cdouble; a4: cint): cdouble {.cdecl, importc: "dgeom",
    dynlib: rmathlib.}
proc pgeom(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "pgeom", dynlib: rmathlib.}
proc qgeom(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "qgeom", dynlib: rmathlib.}
proc rgeom(a2: cdouble): cdouble {.cdecl, importc: "rgeom", dynlib: rmathlib.}

proc dhyper(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint): cdouble {.cdecl,
    importc: "dhyper", dynlib: rmathlib.}
proc phyper(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "phyper", dynlib: rmathlib.}
proc qhyper(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "qhyper", dynlib: rmathlib.}
proc rhyper(a2: cdouble; a3: cdouble; a4: cdouble): cdouble {.cdecl, importc: "rhyper",
    dynlib: rmathlib.}

proc dnbinom(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dnbinom", dynlib: rmathlib.}
proc pnbinom(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pnbinom", dynlib: rmathlib.}
proc qnbinom(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qnbinom", dynlib: rmathlib.}
proc rnbinom(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rnbinom",
    dynlib: rmathlib.}
proc dnbinom_mu(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dnbinom_mu", dynlib: rmathlib.}
proc pnbinom_mu(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.
    cdecl, importc: "pnbinom_mu", dynlib: rmathlib.}
proc qnbinom_mu(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.
    cdecl, importc: "qnbinom_mu", dynlib: rmathlib.}
proc rnbinom_mu(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rnbinom_mu",
    dynlib: rmathlib.}

proc dpois_raw(a2: cdouble; a3: cdouble; a4: cint): cdouble {.cdecl,
    importc: "dpois_raw", dynlib: rmathlib.}
proc dpois(a2: cdouble; a3: cdouble; a4: cint): cdouble {.cdecl, importc: "dpois",
    dynlib: rmathlib.}
proc ppois(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "ppois", dynlib: rmathlib.}
proc qpois(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "qpois", dynlib: rmathlib.}
proc rpois(a2: cdouble): cdouble {.cdecl, importc: "rpois", dynlib: rmathlib.}

proc dweibull(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dweibull", dynlib: rmathlib.}
proc pweibull(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pweibull", dynlib: rmathlib.}
proc qweibull(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qweibull", dynlib: rmathlib.}
proc rweibull(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rweibull",
    dynlib: rmathlib.}

proc dlogis(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dlogis", dynlib: rmathlib.}
proc plogis(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "plogis", dynlib: rmathlib.}
proc qlogis(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qlogis", dynlib: rmathlib.}
proc rlogis(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rlogis",
    dynlib: rmathlib.}

proc dnbeta(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint): cdouble {.cdecl,
    importc: "dnbeta", dynlib: rmathlib.}
proc pnbeta(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "pnbeta", dynlib: rmathlib.}
proc qnbeta(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "qnbeta", dynlib: rmathlib.}
proc rnbeta(a2: cdouble; a3: cdouble; a4: cdouble): cdouble {.cdecl, importc: "rnbeta",
    dynlib: rmathlib.}

proc dnf(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint): cdouble {.cdecl,
    importc: "dnf", dynlib: rmathlib.}
proc pnf(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "pnf", dynlib: rmathlib.}
proc qnf(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "qnf", dynlib: rmathlib.}

proc dnt(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dnt", dynlib: rmathlib.}
proc pnt(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pnt", dynlib: rmathlib.}
proc qnt(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qnt", dynlib: rmathlib.}

proc ptukey(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "ptukey", dynlib: rmathlib.}
proc qtukey(a2: cdouble; a3: cdouble; a4: cdouble; a5: cdouble; a6: cint; a7: cint): cdouble {.
    cdecl, importc: "qtukey", dynlib: rmathlib.}

proc dwilcox(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint): cdouble {.cdecl,
    importc: "dwilcox", dynlib: rmathlib.}
proc pwilcox(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "pwilcox", dynlib: rmathlib.}
proc qwilcox(a2: cdouble; a3: cdouble; a4: cdouble; a5: cint; a6: cint): cdouble {.cdecl,
    importc: "qwilcox", dynlib: rmathlib.}
proc rwilcox(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "rwilcox",
    dynlib: rmathlib.}

proc dsignrank(a2: cdouble; a3: cdouble; a4: cint): cdouble {.cdecl,
    importc: "dsignrank", dynlib: rmathlib.}
proc psignrank(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "psignrank", dynlib: rmathlib.}
proc qsignrank(a2: cdouble; a3: cdouble; a4: cint; a5: cint): cdouble {.cdecl,
    importc: "qsignrank", dynlib: rmathlib.}
proc rsignrank(a2: cdouble): cdouble {.cdecl, importc: "rsignrank", dynlib: rmathlib.}

proc gammafn(a2: cdouble): cdouble {.cdecl, importc: "gammafn", dynlib: rmathlib.}
proc lgammafn(a2: cdouble): cdouble {.cdecl, importc: "lgammafn", dynlib: rmathlib.}
proc lgammafn_sign(a2: cdouble; a3: ptr cint): cdouble {.cdecl,
    importc: "lgammafn_sign", dynlib: rmathlib.}
proc dpsifn(a2: cdouble; a3: cint; a4: cint; a5: cint; a6: ptr cdouble; a7: ptr cint;
            a8: ptr cint) {.cdecl, importc: "dpsifn", dynlib: rmathlib.}
proc psigamma(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "psigamma",
    dynlib: rmathlib.}
proc digamma(a2: cdouble): cdouble {.cdecl, importc: "digamma", dynlib: rmathlib.}
proc trigamma(a2: cdouble): cdouble {.cdecl, importc: "trigamma", dynlib: rmathlib.}
proc tetragamma(a2: cdouble): cdouble {.cdecl, importc: "tetragamma", dynlib: rmathlib.}
proc pentagamma(a2: cdouble): cdouble {.cdecl, importc: "pentagamma", dynlib: rmathlib.}
proc beta(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "beta", dynlib: rmathlib.}
proc lbeta(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "lbeta",
    dynlib: rmathlib.}
proc choose(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "choose",
    dynlib: rmathlib.}
proc lchoose(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "lchoose",
    dynlib: rmathlib.}

proc bessel_i(a2: cdouble; a3: cdouble; a4: cdouble): cdouble {.cdecl,
    importc: "bessel_i", dynlib: rmathlib.}
proc bessel_j(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "bessel_j",
    dynlib: rmathlib.}
proc bessel_k(a2: cdouble; a3: cdouble; a4: cdouble): cdouble {.cdecl,
    importc: "bessel_k", dynlib: rmathlib.}
proc bessel_y(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "bessel_y",
    dynlib: rmathlib.}
proc bessel_i_ex(a2: cdouble; a3: cdouble; a4: cdouble; a5: ptr cdouble): cdouble {.cdecl,
    importc: "bessel_i_ex", dynlib: rmathlib.}
proc bessel_j_ex(a2: cdouble; a3: cdouble; a4: ptr cdouble): cdouble {.cdecl,
    importc: "bessel_j_ex", dynlib: rmathlib.}
proc bessel_k_ex(a2: cdouble; a3: cdouble; a4: cdouble; a5: ptr cdouble): cdouble {.cdecl,
    importc: "bessel_k_ex", dynlib: rmathlib.}
proc bessel_y_ex(a2: cdouble; a3: cdouble; a4: ptr cdouble): cdouble {.cdecl,
    importc: "bessel_y_ex", dynlib: rmathlib.}

proc hypot(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "hypot",
    dynlib: rmathlib.}
proc pythag(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "pythag",
    dynlib: rmathlib.}
proc expm1(a2: cdouble): cdouble {.cdecl, importc: "expm1", dynlib: rmathlib.}

proc log1p(a2: cdouble): cdouble {.cdecl, importc: "log1p", dynlib: rmathlib.}

proc imax2(a2: cint; a3: cint): cint {.cdecl, importc: "imax2", dynlib: rmathlib.}
proc imin2(a2: cint; a3: cint): cint {.cdecl, importc: "imin2", dynlib: rmathlib.}
proc fmax2(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "fmax2",
    dynlib: rmathlib.}
proc fmin2(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "fmin2",
    dynlib: rmathlib.}
proc sign(a2: cdouble): cdouble {.cdecl, importc: "sign", dynlib: rmathlib.}
proc fprec(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "fprec",
    dynlib: rmathlib.}
proc fround(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "fround",
    dynlib: rmathlib.}
proc fsign(a2: cdouble; a3: cdouble): cdouble {.cdecl, importc: "fsign",
    dynlib: rmathlib.}
proc ftrunc(a2: cdouble): cdouble {.cdecl, importc: "ftrunc", dynlib: rmathlib.}

proc cospi(a2: cdouble): cdouble {.cdecl, importc: "cospi", dynlib: rmathlib.}
proc sinpi(a2: cdouble): cdouble {.cdecl, importc: "sinpi", dynlib: rmathlib.}
proc tanpi(a2: cdouble): cdouble {.cdecl, importc: "tanpi", dynlib: rmathlib.}

proc logspace_add(logx: cdouble; logy: cdouble): cdouble {.cdecl,
    importc: "logspace_add", dynlib: rmathlib.}
proc logspace_sub(logx: cdouble; logy: cdouble): cdouble {.cdecl,
    importc: "logspace_sub", dynlib: rmathlib.}
