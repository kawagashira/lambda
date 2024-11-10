--true = \(x, y) -> x
--false = \(x, y) -> y
true x y = x    -- $\lambda x y.x$
false x y = y
--add = \(a, b) -> a b false
add a b = a b false

-- Evaluation
main = do
    print $ add true true 1 0
    print $ add false true 1 0
    print $ add true false 1 0
    print $ add false false 1 0
