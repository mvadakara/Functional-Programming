import System.IO
import System.Random
import System.Random.Shuffle
import Data.List

-- Main Method
-- Read a text file and return a String output 

-- readRoster :: String -> [String] 

readRoster roster = do 

   roster' <- readFile roster 

   pure (lines roster') 

	
	
	
	
	
answer = [("cssemaclin02", readRoster), ("cssemaclin03", readRoster)]
	print answer
