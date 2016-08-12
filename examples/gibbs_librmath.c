#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "Rmath.h"

/*
Adapted from C code from Darren Wilkinson's blog
https://darrenjw.wordpress.com/2011/07/16/gibbs-sampler-in-various-languages-revisited/
To build:
gcc -O3 -DMATHLIB_STANDALONE gibbs_librmath.c -I/usr/local/include -L. -lRmath-nim -lm -o gibbs_librmath
To run:
time ./gibbs_librmath
*/

/* Arrays xa and ya are passed by reference */
void gibbs(int N, int thin, double **xa, double **ya)
{
  int i,j;
  double x=0;
  double y=0;
  for (i=0;i<N;i++) {
    for (j=0;j<thin;j++) {
      x=rgamma(3.0,y*y+4);
      y=rnorm(1.0/(x+1.0),1.0/sqrt(2*x+2));
    }
    (*xa)[i]=x; /* Note how the arrays are dereferenced */
    (*ya)[i]=y;
  }
}

int main()
{
  int N=50000;
  int thin=1000;
  double *xa,*ya;
  xa = (double *)malloc(sizeof(double)*N);
  ya = (double *)malloc(sizeof(double)*N);
  gibbs(N,thin,&xa,&ya);
  free(xa);
  free(ya);
  return(0);
}
