-- Question 1
-- Write a multiline comment below.

{-
Quang
Dep
Trai
-}

-- Question 2
-- Define a function that takes a value and multiplies it by 3.

multiple3 :: Num a => a -> a
multiple3 = (*3)

-- Question 3
-- Define a function that calculates the area of a circle.

circleArea :: Double -> Double
circleArea r = pi*r*r

-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 

cylinderVolume :: Double -> Double -> Double
cylinderVolume h r = h*circleArea r

-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.

greater42 = (>42)
