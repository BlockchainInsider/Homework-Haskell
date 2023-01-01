-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

take4 :: [([Int], [Int])] -> Int
take4 [([_,_],[_,x]), _] = x

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.
ques2 :: [a] -> [a]
ques2 [] = []
ques2 [x] = [x]
ques2 [x,y] = [x,y]
ques2 (x:rest) = []

ques2' :: [a] -> [a]
ques2' x = case x of 
             [] ->  []
             [x] ->  [x]
             [x,y] ->  [x,y]
             (x:rest) -> []

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together

ques3 :: (Integer, Integer, Integer) -> Integer
ques3 (a,b,c) = a + b + c

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

ques4 :: [a] -> Bool
ques4 [] = True
ques4 _ = False

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.

ques5 :: [a] -> [a]
ques5 [] = []
ques5 [x] = []
ques5 (x:rest) = rest

-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

ques6 :: Int -> Int
ques6 x = case even x of
          True -> x + 1
          False -> x