myList2 = [("Eenie", 16), ("Meenie", 18), ("Miney", 21), ("Mo", 50)]

myFn :: (String, Integer) -> String
myFn tup -- Not myFn (name, age)
    | age == 16 = name ++ ", age " ++ age' ++ "\n\tcan drive." -- returns a String
    | age == 18 = name ++ ", age " ++ age' ++ "\n\tcan vote."
    | age == 21 = name ++ ", age " ++ age' ++ "\n\tcan drink."
    | age == 50 = name ++ ", age " ++ age' ++ "\n\tis middle-aged."
    | otherwise = name ++ ", age " ++ age' ++ "."
    where
        name = fst tup
        age  = snd tup
        age' = show age -- String age

