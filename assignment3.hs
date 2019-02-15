-- Assignment3
-- Martin Vadakara
intsFromTo :: Int -> Int -> [Int] 
intsFromTo m n  
 | m > n = [] -- base case
 | otherwise =  m : intsFromTo (m+1) n 
 
 
 
 


-- 2
removeOdd :: [Int] -> [Int]
removeOdd [] = []
removeOdd (x:xs) = if even x then x : y else y where 
	y = removeOdd xs


{-
Chung's answer
removeOdd [] = []
removeOdd x:xs
	| even x 	= x : removeOdd xs
	| otherwise = removeOdd xs
-}

-- 3

countTrue [] = 0 
countTrue (x:xs) 
	| x  == True = 1 + countTrue xs
	| otherwise = countTrue xs 

-- 4
removeOdd' :: [Int] -> [Int]
removeOdd' lst = [ y | y <- lst, y `mod` 2 == 0] 

-- removeOdd' xs = [x | x <- xs, even x]
-- removeOdd' xs = filter (even) xs

-- 5

nonEmptyStr :: String -> Bool
nonEmptyStr str 
	| length str > 0 = True
	| otherwise      = False
 
  
-- 6

--replaceEmptyStr :: String -> String

replaceEmptyStr str 
	| length str == 0 = "-1"
	| otherwise       = str
   
  
