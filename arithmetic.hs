zero s z = z
one s z = s(z)
two s z = s(s(z))
three s z = s(s(s(z)))
add1 n = n + 1

main = do print $ three add1 0
