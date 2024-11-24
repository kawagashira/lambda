pair z a b = z a b
true x y = x    -- $\lambda xy.x$
false x y = y   -- $\lambda xy.y$
zero s z = z 
one s z = s(z) 
two s z = s(s(z))
succ' n a b = a (n a b)

base z = z zero zero 

pred n = n phi(base) false
phi p z = z(succ' (p true))(p true)

main = do
    print $ pair true 1 2
    print $ pair false 1 2
    --print $ phi base 1 0    -- (Lsz.z)1 0

