-- haskell-tutorial.hs
-- Start Hskell interactive  shell: ghci
-- in gchi, load this script with
--		:1 haskell-tutorial



--Import modules
import Data.List
import System.IO


-- print something
--main = do
  --       print "Hello, World"
{- 
Multiline comment 
-}

-- DATA TYPES --

-- Int : whole numbers from -2^63 to 2^63
-- :: Int defines maxINT as an INT
maxInt = maxBound :: Int
minInt = minBound :: Int 

-- Integer : Unbounded Int

-- Float: Single Precision floating point
-- Double: Double precision
bigFloat =  3.99999999999 + 0.000000000005

-- Bool: True or False (T and F are capitalized)
-- Char : Single unicode char, use single quotes
-- Tuple: Can store a list made of various data types


--Declaring variable type
--implict decaration of type:
myInt = 5
-- explictitly declare type
myOtherInt :: Int
myOtherInt = 5

-- MATH -- 
sumOfVals = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

-- The mod operator, used as a prefix operator 
modEx = mod 5 4


-- The mod operator, used as a infix operator 
modEx' = 5 `mod` 4

-- Negative numbers must be surronded with ()
negNumEx = 5 + (-4)

-- Built- in math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
square = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Logical OPS --

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- Lists -- 

-- Lists are singly linked and can 
-- only be expanded from the front.

-- Lists store elements of the same type.

primeNumbers = [3, 5, 7, 11]

-- Concatenate lists with ++ operator.
morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]

-- Use the "cons" operator (:) to construct a list
favNums = 2: 7 : 21 : 66 : []

-- Use cons to add a value to the front of the list
morePrimes2 = 2 : morePrimes

-- Lists of lists 
multList = [[3, 5, 7], [11, 13, 17]]

-- Get length of List 
lenPrime = length morePrimes2

-- Reverse a list 
revPrime = reverse morePrimes2

-- Check for empty list

isListEmpty = null morePrimes2

-- Access list elements by index
secondPrime = morePrimes2 !! 1 

-- Get 1st element in list
firstPrime = head morePrimes2

-- Get last elements in list/ returns everything else but first element
lastPrime = tail morePrimes2

-- Get every element but the ast
primeInit = init morePrimes2

-- Get a number of elements from list front
first3Primes = take 3 morePrimes2

-- Get remianing elements after dropping n elements
removedPrimes = drop 3 morePrimes2

-- Check if an element exists in the list
is7inList = 7 `elem` morePrimes2

-- Prefix version of elem 
is7inList' = elem 7 morePrimes2

-- Get max value 
maxPrime = maximum morePrimes2

-- Get min value 
minPrime = minimum morePrimes2

--Sum the values in listr
sumPrimes = sum morePrimes2

-- Get product of values in list 
newList = [2,3,5]
prodPrimes = product newList


-- Create a list from range (..) 
zerotoTen = [0..10] 


-- Create list of evens by defining first step 
evenList = [2, 4.. 20] 

-- Lists can contain almost any type 
letterList = ['A', 'C' .. 'Z']


-- Infinite Lists (possible because of Haskell laziness)
infinPow10 = [10, 20 ..] 

-- First 10 from infinPow10
first10Pow10 = take 10 infinPow10

-- The repeat function repeats a value 
many2s = take 10 (repeat 2)

-- The replicate function generates a value in times 
many3s = replicate 10 3

-- The cycle function replicates a sequence in a
-- list infinitly 
cycleList = take 10 (cycle [1, 2, 3, 4 , 5])

many4s = take 10 (cycle [4])

-- LIST COMPREHENSIONS -- 
-- allow you to create list from lists
-- math version of this would be sets

-- Peform some operations on all elements of a list
-- drawing each element from a list one at a time, and then
-- storing the result in a new list
listTimes2 = [x * 2 | x <- [1..10]]  -- x will chnage from one to ten
-- sort of like a loop.  x is a counter variable that continues 
-- through the list through 1 and 10.  
-- for each operation multiply x by 2 and result of list comprehension 
-- will be a list.  


-- We can filter the results with conditions 
-- The condition (predicate) here is x*3 <= 50
listTimes3 = [x * 3 | x <- [1..20], x*3 <= 50] 

-- Create list of values divisible by 13 and 9 
-- Creating two predicates through commas or logical && operator
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x`mod` 9 == 0]



-- Create list of values divisable by 13 and 9 using an infinite list
--divisBy9N13' = [x | x <- [1..], x <= 500,  x `mod` 13 == 0, x`mod` 9 == 0]
-- Not possible above

-- Replace each odd number > 10 with "GT" and number < 10 with "LT"
gtlt :: [Int] -> [String]
gtlt xs = [ if x < 10 then "GT" else "LT" | x <- xs, odd x]
-- Multiple predicates again; reject 13, 15 and 19
select1020 = [x | x <- [10..20], x /= 13, x /= 15, x/=19] 

-- draw from multiple lists
multipleLists1 = [ x * y | x <- [2, 5, 10], y <- [8, 10, 11]]


-- Add a predicate to above
multipleLists2 = [ x * y | x <- [2, 5, 10], y <- [9, 10, 11], x*y > 50]

-- String lists 
nouns = ["hobo", "frogs", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
stringCombos = [adj++ " " ++ noun | adj <- adjectives, noun <- nouns]  

-- Use a default variable _ to write the length' function
myLength xs = sum [ 1 | _ <- xs]

-- Function to take a string & remove all but uppercase
onlyUpperCase str = [ c | c  <- str, c `elem` ['A'..'Z']]

-- Find the right triangles with sides <= 10 (Int) with perimeter = 24.
-- First, find all triangles with sides <= 10.
triangles = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10] ]

-- Second, find only the right triangles by adding a predicate.  
rightTriangles =[ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2 ]

-- Thrid, find ony the right triangle whose permeter is 24
rightTriangles' =[ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2, a + b + c == 24 ]
-- List comprehension using multiple lists 
-- Generate a mutiplication table 
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]
-- First thing in list will be 1 * 2.  Next thing will 1 * 2 and so on  

-- MORE LIST FUNCTIONS -- 

-- Sort a list 
sortedList = sort [9, 1, 8, 3, 4, 7, 6]

-- zipWith combines lists 
-- zipWith is a higher order function because it takes a
-- function (+) as an input parameter.  
sumOfLists = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8, 9, 10]  


-- The filter function applies a condition to a list 
listBiggerThan5 = filter (>5) sumOfLists

-- The takeWhile function returns list items while a condition 
-- is true

evensUpTo20 = takeWhile (<=20) [2, 4..]   

-- fold1 (fold left) applies an operation on each item of 
-- a list foldr  (fold right) does this to the right 

multOfList = foldl (*) 1[2,3,4,5] 

-- TUPLES -- 

-- Tuples can store a list of mulitple types, with fixed size  
randTuple = (1, "Random tuple") 

-- A tuple pair stores 2 values (also called a "2 tuple")  
bobSmith = ("Bob Smith", 52)

-- Get the first value of tuple 

bobsName = fst bobSmith

-- Get second value 

bobsAge = snd bobSmith  

-- Combine list values into tuple pairs using zip  
names = ["Bob", "Mary", "Tom"]  
addresses = ["123 Main", "234 North", "567 South"]  

namesAndAdresses = zip names addresses
 
-- There can be 3 tuples 
threeTuple = (1, 2, "Three")  

-- FUNCTIONS -- 

-- Functions must begin with lower case.  

getTriple x = x * 3 
 
-- main is a function that can be called in the terminal 
-- (ghci) with main  
main = do 
	-- Print a string with a new line 
	putStrLn "What is your name?"

	--Get user input and store in name 
	-- <- pulls entered name from an IO action 
	name <- getLine
	
	putStrLn("Hello " ++ name)    

-- Create function addMe  
-- This time, start with a type declaration 
-- (similiar to function protoType in C/C++).
-- functionName :: param1 -> param2 -> paramN -> returnType 
addMe :: Int -> Int -> Int 

-- General function definition:  
-- functionName param1 param2 param3  = operations 
addMe x y = x + y 

-- Can perform different actions based on values  (pattern matching)
whatAge :: Int -> String 
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You can drink."  

--default-- 
whatAge x = "What's your age?"  

-- Factorial function 
factorial :: Int -> Int 

-- Base Case 
factorial 0 = 1

-- Recursive Call
factorial n = n * factorial (n-1)  

-- More easily dome using product 
productFactorial n = product [1..n]   

-- Function Pattern Matching --
-- listInfo :: (Show a) => [a] -> String
listInfo [] = "The list is empty"  
listInfo (x:[]) = "The list has one element: " ++ show x
-- could also be written listInfo [x] = ...
listInfo (x:y:[]) = "The list has two elements: " ++ show x ++ ", " ++ show y
-- could also be written listInfo [x, y] == ...
listInfo (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ ", " ++ show y
-- cannot be written into anything else

--Example: Implement our own length' function using pattern matching and recursion

-- length' :: (Num b) => [a] -> b
-- base case (empty list, using pattern match)
length' [] = 0
-- recursively call length' for non-empty list
length' (_:xs) = 1 + length' xs

{-
guards are a way of testing whether some property of a value (or several of them) are true or false.
-}
whatAge' age
    | age == 16 = "You can drive."
    | age == 18 = "You can vote."
    | age == 21 = "You can drink."
    | age == 50 = "You can join the AARP."
    | age > 50  = "Congratulations, you're old!"
    | otherwise = "You are of an undetermined age."  
{-
Guards are indicated by pipes (|) that follow a function's name and its parameters. 
A guard is a boolean expression. 
If it evaluates to True, then the corresponding function body is used.
If it evaluates to False, checking drops through to the next guard and so on.
Reminiscent of a big if/then/else tree in imperative languages.
The last guard is an optional otherwise. 
otherwise catches everything that falls through the other guards.


Guards are similar to patterns, where patterns check if an input satisfies a pattern but guards check for boolean conditions. 
If all the guards of a function evaluate to False (and we haven't provided an otherwise catch-all guard), evaluation falls through to the next pattern.
So patterns and guards can be used together.
If no suitable guards or patterns are found, an error is thrown.


Guards can deal with multiple function input arguments
Example: implement our own max function
-}

-- max' :: (Ord a) => a -> a -> a  
max' a b
    | a > b     = a 
    | otherwise = b

{-
Note: A lot of the need for if/then/else is obviated by function guards.
An else is required if using if/then/else.
Example:
-}
doubleSmallNumber x = if x > 100 then
			 x  
                	      else
				 x * 2

	--(can also be written)

doubleSmallNumber x = if x > 100 then x else x*2

 	--(Add one to every number that's returned by the if/then/else expression.)

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1



