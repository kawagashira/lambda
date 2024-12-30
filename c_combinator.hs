-- K combinator
k :: a -> b -> a
k x _ = x

-- S combinator
s :: (a -> b -> c) -> (a -> b) -> a -> c
s x y z = x z (y z)

-- B combinaotr
b = s (k s) k

-- C combinator
c = s (b b s)(k k)

main = do
    let x = \a b -> a - b
    let y = 1
    let z = 4
    let lhs = c x y z
    let rhs = x z y
    putStrLn $ "CXYZ =" ++ show lhs
    putStrLn $ "XZY  =" ++ show rhs
