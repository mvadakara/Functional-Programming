-- basicIO.hs
-- Optional for this program
module Main where
main = do
		putStrLn "Enter your num:"
		x <- getLine
		-- x is a string, so apply read to make xx an Integer 
		let xx = read x :: Integer
		let y = doubleSmallNumber xx
		putStr "Your num is "
		-- Can't print number y with putStr, so use print
		print y

doubleSmallNumber x = if x > 100 then 
						 x 
				      else 
				       x*2


doubleSmallNumber' x 
				   | x > 100   = x
				   | otherwise = x * 2
				   
				   
