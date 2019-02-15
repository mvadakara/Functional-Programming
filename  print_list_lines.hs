-- print_list_lines.hs
-- To print a list of elements, 1 line per element, there are several methods.
-- https://stackoverflow.com/questions/5289779/printing-elements-of-a-list-on-new-lines

        lst = ["Eenie","Meenie","Miney","Moe"]

-- mapM_ putStr lst
-- putStr (unlines lst)

-- A recursive function:
-- printStrListLines :: [String] -> IO ()
        printStrListLines []     = putStrLn ""
        printStrListLines (x:xs) = do
                                      putStrLn x
                                      printStrListLines xs
							 
