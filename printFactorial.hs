-- printFactorial.hs

-- -- printFactorial :: int -> IO ()
	-- Note this function's return type.
printFactorial 1 = putStrLn "1" -- base case
printFactorial n = do
                        putStr (show n ++ " * ")
                        printFactorial (n - 1)

