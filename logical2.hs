t' x y = x    -- $\lambda x y.x$
f' x y = y
add a b = a b f'
or' a b = b t' a
not' x = x f' t'

-- Evaluation
main = do
    print $ add t' t' 1 0
    print $ add f' t' 1 0
    print $ add t' f' 1 0
    print $ add f' f' 1 0
    print $ or' t' t' 1 0
    print $ or' f' t' 1 0
    print $ or' t' f' 1 0
    print $ or' f' f' 1 0
