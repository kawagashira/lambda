--lessThanLike (xl,xr) (yl,yr) = not [x >= (yl,yr) | x <- xl] and (not [(xl,xr) >= y | y <- yr])
lessThanLike (xl,xr) (yl,yr) = not [x >= (yl,yr) | x <- xl]
--lessThanLike (xl,xr) (yl,yr) = not [(xl,xr) >= y | y <- yr]
