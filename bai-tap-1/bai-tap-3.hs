-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

mUsage :: Double -> Double -> Double -> String 
mUsage h d m 
  | cons > m   = "You use a lot of electric (bigger)"
  | cons == m  = "It's ok (equal)"
  | otherwise  = "You are awesome (smaller)"
    where cons = h*d*30

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

exOrSav :: Double -> Double -> Double -> String 
exOrSav h d m 
  | con > m   = "You have used excess " ++ show (con - m) ++ " kwh"
  | con == m  = "It's ok"
  | otherwise = "You have saved " ++ show (m - con) ++ " kwh"
    where con = h*d*30
    
-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

circleArea :: Double -> Double -> Double
circleArea a b =
  let sq   = (^2)
      ca r = pi*r*r
  in ca (sqrt(sq a + sq b)/2)

-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

division :: Double -> Double -> String
division a b 
  | a < 0 && b < 0   = if (a < b) then show (b/a) else show (a/b)
  | a < 0 || b < 0   = "We don't work with minor number"
  | a /= 0 && b /= 0 = if a > b then show(b/a) else show(a/b)
  | otherwise        = "The answer is 0"

-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

sumOfSquare :: Double -> Double -> Double
sumOfSquare a b =
  let prod   = ab*ab where ab = a*b
  in prod + divi
    where divi = let diviab = a/b
                 in  diviab*diviab
