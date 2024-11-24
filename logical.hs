true x y = x    -- $\lambda x y.x$
false x y = y
add a b = a b false
not' x = x false true

-- Evaluation
main = do
    print $ add true true 1 0
    print $ add false true 1 0
    print $ add true false 1 0
    print $ add false false 1 0
