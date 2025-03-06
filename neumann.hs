zero=[]
one=[zero]
two=[zero,one]

--neumann :: Int -> [a]
neumann 0 = []
--succ (neumann n) = (neumann n):[neumann n]
--succ' n = n ++ [n]
