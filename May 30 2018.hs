-- This works.
whatAge age
   | age == 16 = "You can drive, " 
   | age == 18 = "You can vote, " 
   | age == 21 = "You can drink, " 
   | otherwise = "How old are you, " 
   

-- This does not work.
{-
whatAge 16 = "You can drive, " ++ name ++ "."
whatAge 18 = "You can vote., " ++ name ++ "."
whatAge 21 = "You can drink, " ++ name ++ "."
whatAge x = "How old are you, " ++ name ++ "?"
   where
   name = "Fred"

-}
