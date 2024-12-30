iden x = x
kons x y = x
strong x y z = x z (y z)

clToInt f = f 'X' 'Y' 'Z'

--main = do
--    print $ clToInt (strong 4)
