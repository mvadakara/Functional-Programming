-- starman.hs
-- Hangman clone exercise
import System.IO
-- Check the player's guess, i.e., whether their single char is 
-- within the hidden word.
check :: String -> String -> Char -> (Bool, String)
check word display c
    = (c `elem` word, [if x == c
                       then c
                       else y | (x, y) <- zip word display])



-- Turn function
-- Called each time that the player is prompted for a letter.
-- Would look better using guards (|).
turn :: String -> String -> Int -> IO ()
turn word display nStars 
    | nStars == 0 = putStrLn "You lose."
    | word   == display = putStrLn "You win!"
    | otherwise = getGuess word display nStars -- game continues
               
               
               

-- Get player's guess
-- Grab a line of input, but only use 1st char.
getGuess :: String -> String -> Int -> IO ()
getGuess word display nStars =
    do putStrLn (display ++ "  " ++ take nStars (repeat '*'))
       putStr "  Enter your guess: "
       q <- getLine
       let (correct, display') = check word display (q !! 0)
       let nStars' = if correct then
                        nStars
                     else
                        nStars - 1
       turn word display' nStars'

-- Notice: turn and getGuess have same inputs and are mutually recursive.



-- Top-level function
-- Usage: starman "secretword" numberOfStars
starman :: String -> Int -> IO ()
starman word nStars = turn word ['-' | _ <- word] nStars
main = do
    
    putStrLn "Enter the Secret Word: " 
    x <- getLine
    putStrLn "Enter the number of guesses allowed (stars): "
    y <- getLine
    let b = (read y :: Int)
    starman x b
    
    
    
    
    
-- ['-' | _ <- word] generates a String of dashes with same length
-- as word. Can also be written
-- ['-' | x <- word], but the preferred style is to use _, since x will not be 
-- used.









               
