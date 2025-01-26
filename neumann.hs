zero=[]
one=[zero]
two=[zero,one]
neumann 0 = []
neumann n = n:(neumann (n-1))
