-- 順序付け集合Set

import qualified Data.Set as Set

a = Set.empty
b = Set.singleton 5
c = Set.fromList [1, 2, 3]

newType SetOfSets a = SetOfSets (Set.Set (Set.Set a))
    deriving (Eq, Ord)
    deriving newtype (Semigroup, Monoid)
