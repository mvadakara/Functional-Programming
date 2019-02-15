import Data.List 

import System.IO 

import System.Random 

import System.Random.Shuffle 

  

main = do 

          roster <- readFile "roster" -- File roster must be in current directory. 

          let students = lines roster 

          rng <- newStdGen 

          --let rosterSorted = sort students 

          let rosterShuffled = shuffle' students (length students) rng 

  

          --let ys = shuffle rosterSorted 

          seats <- readFile "seats" 

          let computers = lines seats 

          let seatRoster = (zip computers rosterShuffled) 
          putStr seatRoster

        

          

-- A recursive function: 

-- printStrListLines :: [String] -> IO () 
