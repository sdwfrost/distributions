#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>

/*
Adapted from C code from Darren Wilkinson's blog
https://darrenjw.wordpress.com/2011/07/16/gibbs-sampler-in-various-languages-revisited/
To build:
gcc -O3 gibbs_gsl.c -I/usr/local/include -L/usr/local/lib -lgsl -lgslcblas -lm -o gibbs_gsl
To run:
time ./gibbs_gsl
*/

/* Arrays xa and ya are passed by reference */
void gibbs(int N, int thin, double **xa, double **ya)
{
  int i,j;
  gsl_rng *r = gsl_rng_alloc(gsl_rng_mt19937);
  double x=0;
  double y=0;
  for (i=0;i<N;i++) {
    for (j=0;j<thin;j++) {
      x=gsl_ran_gamma(r,3.0,1.0/(y*y+4));
      y=1.0/(x+1)+gsl_ran_gaussian(r,1.0/sqrt(2*x+2));
    }
    (*xa)[i]=x; /* Note how the arrays are dereferenced */
    (*ya)[i]=y;
  }
  free(r);
}

int main()
{
  int N=50000;
  int thin=1000;
  double *xa,*ya;
  xa = (double *)malloc(sizeof(double)*N);
  ya = (double *)malloc(sizeof(double)*N);
  gibbs(N,thin,&xa,&ya);
  return(0);
}
