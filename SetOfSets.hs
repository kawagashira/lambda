import qualified Data.Set as Set

type SetOfSets a = Set.Set (Set.Set a)
singletonSetOfSets :: (Ord a) => Set.Set a -> SetOfSets a
singletonSetOfSets s = Set.singleton s

fromListSetOfSets :: (Ord a) => [Set.Set a] -> SetOfSets a
fromListSetOfSets xs = Set.fromList xs

insertSetOfSets :: (Ord a) => a -> [Set.Set a] -> [SetOfSets a]
insertSetOfSets x xs = Set.insert x xs

main = do
    let set1 = Set.fromList [1, 2]
    let set2 = Set.fromList [3, 4]
    --let set3 = singletonSetOfSets set2
    print $ set1
    let set4 = Set.fromList [set1, set2]
    print $ set4
    let set5 = Set.insert 5 set4
    print $ set5
