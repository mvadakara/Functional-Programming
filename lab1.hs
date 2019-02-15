-- Part A
multEx = 1 * 2 * 3 * 4 * 5
x = product[1..5]
multEx2 = 1 * 2 * 3 * 4 * 5 * 6 * 7 * 8 * 9 * 10 * 11 * 12 * 13 * 14 * 15 * 16 * 17 * 18 * 19 *20 * 21 * 22 * 23 * 24 * 25 * 26 * 27 *  28 * 29 * 30
x1 = product[1..30]
addEx = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 + 15 + 16 + 17 + 18 + 19 + 20 + 21 + 22 + 23 +24 + 25 + 26 + 27 + 28 + 29 + 30 + 31 + 32 + 33 + 34 + 35 + 36 + 37 + 38 + 39 + 40 + 41 + 42 + 43 + 44 + 45 + 46 + 47 + 48 + 49 + 50 + 51 + 52 + 53 + 54 + 55 + 56 + 57 + 58 + 59 + 60 + 61 + 62 + 63 + 64 + 65 + 66 + 67 + 68 + 69 + 70 + 71 + 72 + 73 + 74 + 75 + 76 + 77 + 78 + 79 + 80 + 81 + 82 + 83 + 84 + 85 + 86 + 87 + 88 + 89 + 90 + 91 + 92 + 93 + 94 + 95 + 96 + 97 + 98 + 99 +100 
x2 = sum[1..100]  
addOdd = 1 + 3 + 5 + 7 + 9 + 11 + 13 + 15 + 17 + 19 + 21 + 23 + 25 + 27 + 29 + 31 + 33 + 35 + 37 + 39 + 41 + 43 + 45 + 47 + 49 + 51 + 53 + 55 + 57 + 59 + 61 + 63 + 65 + 67 + 69 + 71 + 73 + 75 + 77 + 79 + 81 + 83 + 85 + 87 + 89 + 91 + 93 + 95 + 97 + 99
x3 = sum [1, 3..99]
divisionExp1 = 456 `mod` 10 
	--			mod 456 10
divisionExp2 = 365 `mod` 7
--mod 365 7

--letter1 = "f" ++ "irst" wrong
f = head "first"
letter2 = "rest"

removeFirstLetter = drop 1 letter2

letter3 = ['H', 'a', 's' ,'k', 'e', 'l', 'l']

letter3Second = tail letter3
letterHead = head letter3Second

--ha = take 2 "Haskell"
--a = tail ha
--a = "Haskell" !! 1

-- Part B




secondLastElem x  = head (reverse (init x)) 
-- secondLastElem x = last (init a)
-- secondLastElem a = (reverse a) !! 1
-- secondLastElem a = a !! length a - 2 
