# Taken (with modification) from Darren Wilkinson's blog
# https://darrenjw.wordpress.com/2011/07/16/gibbs-sampler-in-various-languages-revisited/
# time python3 gibbs.py
import random,math

def gibbs(N,thin):
    xa = [0.0]*N
    ya = [0.0]*N
    x=0
    y=0
    for i in range(N):
        for j in range(thin):
            x=random.gammavariate(3,1.0/(y*y+4))
            y=random.gauss(1.0/(x+1),1.0/math.sqrt(2*x+2))
        xa[i] = x
        ya[i] = y
    return [x,y]

xy = gibbs(50000,1000)
