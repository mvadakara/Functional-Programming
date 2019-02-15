{- 1. Give one reason why the following code is incorrect in Haskell:

  x = 4
  x = ((x * 2))

Because Haskell is immutable.  When you parse x to 4 you cannot change the value of x after stating its value for the first time 
in Haskell because it is a constant.  

2. An alternative to the / (division) operator is the div function.

--Show a usage of the div function as an infix function to divide a numerator and denominator.

*Main> 15 `div` 5

--Besides their names, what is the difference between the / operator and the div function?

/ can take the reminder of the the problem and evulate the reminder as a decimal
 while div returns reminder given in a problem to zero.  

--If num = 456, combine the div and mod functions to get the middle digit of num.

*Main> div 456 10
45
*Main> mod 45 10
5

3. What is the result of the expression 

abs -6 

   in Haskell, where abs returns the absolute value of its argument? Explain the
   result.

In order to specficy the negative symbol in haskell the negative sign - has be in abs (-6) in in order to return 6.  
Without the negative sign - in (-) haskell will register it as the substraction symbol. 

4. Haskell automatically infers the type of variables and lists. What would Haskell
   infer the type of the following list to be?

myCombo = [1, 2, -5, -5, 5.1]

myCombo is Double type because of 5.1 in the list. 

5.  Would the following be a legal list in Haskell?

	myCombo = [1, 'a', "auto"]
 
 No because there multiple Data types within that list which cannot be inferred to just one type.  
 
6. What would be the type of the following variable in Haskell? Your answer must come
   from using :t in ghci.

	myDuck = "Daffy"==
	
*Main> :t myDuck
myDuck :: [Char]

7. The head, tail, length, take and other list functions can be applied to Strings.
   Say that you have the variables firstName and lastName that contain a first name
   and last name as Strings. Write Haskell code to do the following:

--Make a variable f equal to the first character of firstName.
--Make a variable la equal to the first 2 characters of lastName.
--Make a variable fla equal to the concatenation of f and la.
--If firstName is "daffy" and lastName is "duck", then fla would be "ddu".

-}

firstName = "Martin"
lastName = "Vadakara"

f = drop 5(reverse firstName)
la = reverse (drop 6 (reverse lastName))
fla = f ++ la


{-
8. Write a Haskell function called greetName that accepts a String input (name) and
   returns "Hello, ", followed by the value of name and then a "!". For name = 
   "Daffy", the function would return "Hello, Daffy!".
-}

greetName x =  ("Hello, " ++ x ++ "!")  



 

  
