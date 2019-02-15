{-
wordLength.hs

This program prompts the user to input the name of a file of Strings (words).
The program then counts the the number of times words of a given length are
present in the file.  Additionally, example words are provided in the far right
column of the output.

Authors:
   Joseph Alicea
   Todd Qualiano
   Martin Vadakara
-}

main = do
   putStrLn "\n\nWelcome to the Word Length Calculator\n\n"
   putStrLn "Enter the name of the file you want to calculate word lengths for:"
   fileName <- getLine
   words <- readFile fileName
   let wordList = lines words
   let lengthsOfWords = map length wordList 
   let occurenceRange = [1 .. maximum $ lengthsOfWords]
   let occurences = getOccurenceList lengthsOfWords occurenceRange
   let examples = getExampleList wordList occurenceRange
   let triples = zip3 occurenceRange occurences examples
   putStrLn ("\n\nWord Length" ++ "\t\t" ++ "Occurences" ++ "\t\t" ++ "Sample Words")
   printTriples triples


-- Returns a list of Ints representing the number of occurences Ints from a given
-- range (this range is represented by the second input parameter) appear in a list
-- of Ints (the first input parameter).
getOccurenceList :: [Int] -> [Int] -> [Int]
getOccurenceList xs []     = []
getOccurenceList xs (n:ns) = (occurenceOfN xs n) : getOccurenceList xs ns
   where
      occurenceOfN xs n = length (filter (== n) xs)


-- Gets a list of example words of a given range of lengths (second parameter)
-- from a given list of words (first parameter).
getExampleList :: [String] -> [Int] -> [String]
getExampleList xs []     = []
getExampleList xs (n:ns) = (getExampleWords xs n) : getExampleList xs ns


-- Gets example words of a given length from a list of Strings. We use 
-- concat' to combine the example words into a single String seperated w/
-- a ", ".
getExampleWords :: [String] -> Int -> String
getExampleWords xs n
   | n <= 12   = concat' $ take 3 myList
   | n <= 19   = concat' $ take 2 myList
   | otherwise = concat' $ take 1 myList
   where
      myList = [x | x <- xs, length x == n]
      concat' xs
         | length xs == 0 = ""
         | length xs == 1 =  xs !! 0
         | length xs == 2 = (xs !! 0) ++ ", " ++ (xs !! 1)
         | otherwise      = (xs !! 0) ++ ", " ++ (xs !! 1) ++ ", " ++ (xs !! 2)

         
-- Prints a list of triples to the terminal.
printTriples :: [(Int, Int, String)] -> IO ()
printTriples []     = putStrLn ""
printTriples (x:xs) = do
   putStrLn (show (first x) ++ "\t\t\t" ++ show (second x) ++ "\t\t\t" ++ (third x))
   printTriples xs
   where
      first  (a, _, _) = a
      second (_, b, _) = b
      third  (_, _, c) = c
