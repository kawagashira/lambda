import qualified Data.Set as Set

type SetOfSets a = Set.Set (Set.Set a)
singletonSetOfSets :: (Ord a) => Set.Set a -> SetOfSets a
singletonSetOfSets s = Set.singleton s

fromListSetOfSets :: (Ord a ) => [Set.Set a] -> SetOfSets a
fromListSetOfSets xs = Set.fromList xs

main = do
    let set1 = Set.fromList [1, 2]
    let set2 = Set.fromList [3, 4]
    let s1 = singletonSetOfSets set1
    print $ s1
