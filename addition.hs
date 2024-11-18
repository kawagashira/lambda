zero s z = z
one s z = s(z)
two s z = s(s(z))
three s z = s(s(s(z)))

succ' n a b = a (n a b)
add1 n = n + 1
put1 x = 1:[x]

main = do
    print $ two succ' three add1 0
    --print $ two succ' three put1 0
    --print $ succ' zero add1 0
    --print $ succ' one add1 0
    --print $ succ' two add1 0
