import Data.Char (toUpper)
import Data.Char (toLower)
-- quickSort.hs
-- Examine higher order functions 


quickSort :: (Ord a)=> [a] -> [a]

-- Base case:
-- If the list is empty, do nothing.
quickSort [] = []

-- Recursive case:
-- Pick the first element (x) as the "pivot"; sort the rest of the list recursively
-- into the lessList and moreList segments.
-- The pivot element is put in the middle (x : equalList).
quickSort (x : xs) = (quickSort lessList) ++ (x : equalList) ++ (quickSort moreList)
    where
        lessList  = filter (< x) xs 	-- See filter.
        equalList = filter (== x) xs
        moreList  = filter (> x) xs


birdList = ["Robin", "sparrow", "finch", "Cardinal", "Chickadee", "grackle"]



{-quickSort compare (x : xs) = (quickSort compare less) ++ (x : equal) ++ (quickSort compare more)
    where
        less  = filter (\ y -> y `compare` x == LT) xs
        equal = filter (\ y -> y `compare` x == EQ) xs
        more  = filter (\ y -> y `compare` x == GT) xs
        
-}





quickSort' :: (Ord a) => (a -> a -> Ordering) -> [a] -> [a]
-- Base case:
-- No matter how we compare two things the base case doesn't change,
-- so we use the _ "wildcard" to ignore the comparison function.
quickSort' _ [] = []


-- Recursive case:
-- c is our comparison function to compare two Strings while ignoring case.
quickSort' compare (x : xs) = (quickSort' compare less) ++ (x : equal) ++ (quickSort' compare more)
    where
        less  = filter (\ y -> y `compare` x == LT) xs
        equal = filter (\ y -> y `compare` x == EQ) xs
        more  = filter (\ y -> y `compare` x == GT) xs

-- insensitive :: [Char] -> [Char] -> Ordering
insensitive string1 string2 = compare (map toUpper string1) (map toUpper string2)

-- Excerise - descending order function 

-- Write a ordering for quickSort' that enables descending sort.  
-- By "ordering function, we mean something like insensative.  Use function compareDesc.

compareDesc arg1 arg2 = arg2 `compare` arg1
				
-- flip function compare to descending order
compareDesc' arg1 arg2 = (flip compare) arg1 arg2
