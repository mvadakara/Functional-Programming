
ulam :: Int -> String

ulam 1 = "1"
ulam n 
  --  | even n = ulam(n `div` 2) 
  --  | otherwise = ulam (n-1* 3 + 1) ++ ulam(n-1) 




-- Answers from Chung    
--	 | even n	= show n ++ " -> " ++ ulam(n `div` 2)
--    | otherwise = show n ++ " -> " ++ ulam (3 * n + 1)
 
  
{-  -- not what he was asking but prints right result
ulam' 1 = putStrLn "1" -- base 
ulam' n 
	| even n	= do 
					putStrLn (show n ++ " -> ")
					ulam' (n `div` 2)
					
	| otherwise	= do 
					


-}
  
