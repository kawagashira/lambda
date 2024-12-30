-- Haskell iszero.hs
true x y = x
false x y = y
logicalToBin x = x True False   -- Check whether true or false
not' x = x false true 

zero s z    = z
one s z     = s(z)
two s z     = s(s(z))
three s z   = s(s(s(z)))

iszero x = x false not' false
add1 n = (n + 1)

main = do
    print "(iszero zero) ->"
    print $ logicalToBin (iszero zero)
    print "(iszero one) ->"
    print $ logicalToBin (iszero one)
    --print "(iszero two) ->"
    --print $ logicalToBin (iszero two)
