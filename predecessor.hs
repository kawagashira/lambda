churchToInt n = n (+1) 0

pair a b = \z -> (z a b)
true x y = x    -- $\lambda xy.x$
false x y = y   -- $\lambda xy.y$
zero s z = z 
one s z = s(z) 
two s z = s(s(z))
three s z = s(s(s(z)))
succ' n a b = a (n a b)

base = pair zero zero 
phi p z = z (succ' (p true))(p true)

pred' n = n phi(base) false

main = do
    --print $ churchToInt (pair three two true)
    --print $ churchToInt (pair three two false)
    --print $ churchToInt (base true)
    --print $ churchToInt (base false)
    --print $ churchToInt (base false)
    --print $ churchToInt (phi base true)     -- $(\lambda z.z10)T$
    --print $ churchToInt (phi base false)    -- $(\lambda z.z10)F$
    --print $ churchToInt ((phi (phi (base))) true)       -- $(\lambda z.z21)T$
    print "P3->"
    print $ churchToInt (pred' three)
