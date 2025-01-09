--[] orSet y = y
--x:xs orSet y = x
--inSet x (x:ys)    = True
--                | x inSet ys
type SetOfSets a = Set.Set (Set.Set a)
singletonSEtOfSets :: (Ord a) => Set.Set a -> SetOfSets a
singletonSEtOfSets s = Set.singleton s

fromListSetOfSets :: (Ord a ) => [Set.Set a] -> SetOfSets a
fromListSetOfSets xs = Set.fromList xs

main = do
    let set1 = Set.fromList [1, 2]
    let set2 = Set.fromList [3, 4]
    let s1 = singletonSetOfSEts set1
    print $ s1
