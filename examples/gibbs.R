# Taken (with modification) from Darren Wilkinson's blog
# https://darrenjw.wordpress.com/2011/07/16/gibbs-sampler-in-various-languages-revisited/
# time Rscript ./gibbs.R
gibbs <- function(N,thin)
{
  xa <- numeric(N)
  ya <- numeric(N)
  x=0
  y=0
  for (i in 1:N) {
    for (j in 1:thin) {
      x <- rgamma(1,3,y*y+4)
      y <- rnorm(1,1/(x+1),1/sqrt(2*x+2))
    }
    xa[i] <- x
    ya[i] <- y
  }
  list(xa,ya)
}

xy <- gibbs(50000,1000)
