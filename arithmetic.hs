zero s z = z
one s z = s(z)
two s z = s(s(z))
three s z = s(s(s(z)))

succ' n a b = a (n a b)
add1 n = n + 1

main = do
    print $ zero add1 0
    print $ succ' zero add1 0
    print $ succ' one add1 0
    print $ succ' two add1 0
