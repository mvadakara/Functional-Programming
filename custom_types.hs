--custom_types.hs
-- Explore custom types

-- Store multiple values to create custom types
-- Variables of Customer tpe will be in typeclass shown below
data Customer = Customer String String Double
		deriving Show
		
		
-- Because Customer belongs to typeclass Show, can do this:
-- (Can think of this as Java toString()).
daffyDuckData = show daffyDuck

daffyDuck :: Customer 
daffyDuck = Customer "Daffy Duck" "400 Ceder Ave" 100.00



daffyDuckData = 
-- Define a getBalance function for a Customer 
--getBalance :: Customer -> Double 
-- getBalance (Customer name address balance) = balance
getBalance (Customer _ _ balance) = balance

daffyBalance = getBalance daffyDuck
	
-- Define a Type with limited possible values 
-- (Think of Rock, Paper, Scissors as named constants. )
data RPS = Rock | Paper | Scissors 

shoot :: RPS -> RPS -> String

shoot Paper Rock = "Paper > Rock" -- Note: pattern matching 
shoot Rock Scissors = "Rock > Scissors"
shoot Scissors Paper = "Scissors > Paper"

-- 3 more permuatations 
shoot_ _ = "Error" -- fall-through pattern-matching 

-- TYPE CLASSES -- 

-- include Num, Eq, Ord, and Show
-- Type classes correspond to sets of Types, with certain operations defined
-- for them.  
-- Example (+) function is of type 
--         (+) :: Num a => a -> a -> a

-- Create an Employee Type 
data Employee = Employee { name :: String, position :: String, idNum :: Int } deriving (Eq, Show) 
-- Note: The Eq type class means that Employees can be compared for equality (with the == operator). 

mickeymouse = Employee {name = "Mickey Mouse", position = "Mascot", idNum = 1}
minniemouse = Employee {name = "Minnie Mouse", position = "Mascot", idNum = 2}

