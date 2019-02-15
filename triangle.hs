import System.IO

-- validTriangle :: Double -> Double -> Double -> Boolean
{-validTriangle (x, y, z) = if(x + y == z) ||(x + y <= z) ||(x + z == y) || (x + z <= y) ||(z + y == x) || (x + y <= x) then False else True 
main = do
validTriangle <- getLine
putStrLn("Enter the number for the sides of the Triangle: " ++ validTriangle)   
-}

-- Solution from Chung
validTriangle a b c = if (a + b > c && a + c > b && b + c > a) then True else False

--With guards
validTriangle' a b c
	| a + b > c && a + c > b && b + c > a = True
	| otherwise = False



