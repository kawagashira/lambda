true x y = x
false x y = y
not' x y = x false true 

zero s z = z
three s z = s(s(s(z)))

iszero x = x false not' false
--iszero = \x -> (x false not' false)
add1 n = (n + 1)

main = do
    print $ iszero zero add1 1 0
