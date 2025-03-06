zero = ([],[])
isSurreal (a, b) = not (or [x >= y| x <- a, y <- b])
one = ([],[zero])
minusOne = ([zero],[])

