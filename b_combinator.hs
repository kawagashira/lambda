-- K combinator
k :: a -> b -> a
k x _ = x

-- S combinator
s :: (a -> b -> c) -> (a -> b) -> a -> c
s x y z = x z (y z)

-- B combinaotr
--b :: (b -> c) -> (a -> b) -> a -> c
b = s (k s) k

-- C combinator
c = s (b b s)(k k)

main = do
    let x = (*2)
    let y = (+3)
    let z = 4
    let lhs = b x y z
    let rhs = x (y z)
    putStrLn $ "B X Y Z =" ++ show lhs      -- B X Y Z = X (Y Z)
    putStrLn $ "X (Y Z) =" ++ show rhs
