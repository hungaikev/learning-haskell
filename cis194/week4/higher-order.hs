
module HO where 

gt100 :: Int -> Bool
gt100 x = x > 100 

greaterThan100 :: [Int] -> [Int]
greaterThan100 xs = filter gt100 xs 


--Using an anonymous function

greaterThan100_2 :: [Int] -> [Int]
greaterThan100_2 xs = filter (\x -> x > 100) xs

