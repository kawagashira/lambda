-- Exercise I
-- (((Lf.Lx.f(f(f(x))))(Lg.Ly.g(g(y))))(Lz.z+1)(0)

triplef f x = f (f (f x))
doublef g y = g (g y)
--add1 x = x + 1
add1 x = x + 2
main = do
    print $ ((triplef doublef) add1) (0)
--  print $ ((triplef doublef) add1) (1)
