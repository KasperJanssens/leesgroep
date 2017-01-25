module Exercise4 where

-- The default Ord instance for lists in Haskell compares lists lexicographically, where elements of the lists are compared one at the time.
-- Implement a length-plus-lexicographic comparison of the new type LenghtList (in corresponding src file).
-- With this comparison, a longer list is always considered to be greater than a smaller list.
-- If the lists are of equal length, they should be compared lexicographically.
-- Type classes, newtype


data LengthList a = LengthList [a]
 deriving(Show,Eq)

instance Ord a => Ord (LengthList a) where
  compare x y = undefined
