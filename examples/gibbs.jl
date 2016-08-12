using Distributions

function gibbs(N::Int64,thin::Int64)
  xa=Array(Float64,N)
  ya=Array(Float64,N)
  x=0.0
  y=0.0
  for i in 1:N
    for j in 1:thin
      x=rand(Gamma(3.0,1.0/(y*y+4.0)))
      y=rand(Normal(1.0/(x+1.0),1.0/sqrt(2.0*x+2.0)))
    end
    xa[i]=x
    ya[i]=y
  end
  return(xa,ya)
end

# Warm up
xaj, yaj = gibbs(1,1)

# Time
@elapsed xaj,yaj=gibbs(50000,1000)
