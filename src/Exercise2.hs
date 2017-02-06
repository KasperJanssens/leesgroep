module Exercise2 where
import Prelude hiding ((!!))

-- | Returns Just the k-th element of the list, or Nothing if k is out of bounds.
elementAt :: Int -> [a] -> Maybe a
elementAt n xs | n > 0 =
                 case drop (n - 1) xs of
                   [] -> Nothing
                   x:xs -> Just x
               | otherwise = Nothing
