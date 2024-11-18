two s z     = s(s(z))  -- 2
three s z   = s(s(s(z)))  -- 3
mult x y a = x(y a)
add1 x = x + 1

main = do
    print $ mult three three add1 0     -- 3 * 3
    print $ mult two three add1 0       -- 2 * 2
