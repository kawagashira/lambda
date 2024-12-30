-- EQUALITY AND INEQUALITY

churchToInt n = n (+1) 0
logicalToBin x = x True False   -- check wheter true or false

pair a b = \z -> (z a b)
true x y = x    -- $\lambda xy.x$
false x y = y   -- $\lambda xy.y$
not' x = x false true

zero s z    = z 
one s z     = s(z) 
two' s z    = s(s(z))
three s z   = s(s(s(z)))

iszero x = x false not' false
succ' n a b = a (n a b)
base = pair zero zero 
phi p z = z (succ' (p true))(p true)

pred' n = n phi(base) false
ge x y = iszero (x pred' y)
--ge = \x y -> iszero (x pred' y)

main = do
    print "P32->"
    --print $ show logicalToBin (ge three two)
    --logicalToBin (ge three two')
    --logicalToBin (ge two' three)
