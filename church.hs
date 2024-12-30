zero s z = z
one s z = s(z)
two s z = s(s(z))
three s z = s(s(s(z)))
-- チャーチ数を通常の整数に変換
churchToInt n = n (+1) 0

succ' n a b = a (n a b)

main = do
    print $ "zero  = " ++ show (churchToInt zero)
    print $ "one   = " ++ show (churchToInt one)
    print $ "two   = " ++ show (churchToInt two)
    print $ "three = " ++ show (churchToInt three)
    print $ "succ' zero = " ++ show (churchToInt (succ' zero))
    print $ "succ' one  = " ++ show (churchToInt (succ' one))
    print $ "succ' two  = " ++ show (churchToInt (succ' two))
    print $ "succ' three =" ++ show (churchToInt (succ' three))
