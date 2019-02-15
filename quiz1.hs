largestOfThree :: Int -> Int -> Int -> Int

largestOfThree x y z 
    | x >= y && x >= z  = x
    | y >= x && y >= z = y
    | otherwise = z
    
    
    
  
  
comboString :: String -> String -> String
 
comboString a b 
	| length a == length b = []
	| length a > length b = b ++ a ++ b
	| otherwise = a ++ b ++ a

 
minMaxPair x = (minimum x, maximum x)
 
 
