

sm y = y + 1

biggestInt,smallestInt :: Int 

biggestInt = maxBound 
smallestInt = minBound

reallyBig::Integer
reallyBig = 2^(2^(2^(2^2)))

numDigits :: Int 
numDigits = length(show reallyBig)
ex11 = True && False 
ex12 = not(False || True)
ex13 = ('a' == 'a')
ex14 = (16 /= 3)
ex15 = (5>3) && ('p' <= 'q')
ex16 = "Haskell" > "C++"


--Pattern matching 
--Recursive function 
sumtorial :: Int -> Int 
sumtorial 0 = 0 
sumtorial n = n + sumtorial (n-1)

--Using Guards
hailstone :: Int -> Int 
hailstone n 
    | n `mod` 2 == 0 = n `div` 2 
    | otherwise  = 3*n+1 


foo :: Int -> Int 
foo 0 = 16 
foo 1 
    | "Haskell" > "C++" = 3 
    | otherwise = 4 
foo n 
    | n < 0 = 0 
    | n `mod` 17 == 2 = -43
    | otherwise = n + 3

isEven :: Int -> Bool 
isEven n 
    |n `mod` 2 == 0 = True 
    |otherwise = False

p :: (Int, Char)
p = (3,'x')

sumPair :: (Int,Int) -> Int 
sumPair (x,y) = x + y 

f :: Int -> Int -> Int -> Int 
f x y z = x + y + z 
ex17 = f 3 17 8 


ex18 = 1:[]
ex19 = 3 : (1:[])
ex20 = 2 : 3 : 4 : []
ex21 = [2,3,4] == 2 : 3 : 4 : []


hailstoneSeq :: Int -> [Int]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq(hailstone n)


intListLength :: [Int] -> Int 
intListLength [] = 0 
intListLength (x:xs) = 1 + intListLength xs


--Takes an type of list and returns the length
intListLength2 [] = 0 
intListLength2 (x:xs) = 1 + intListLength2 xs


sumEveryTwo :: [Int] -> [Int]
sumEveryTwo [] = []
sumEveryTwo (x:[]) = [x]
sumEveryTwo (x:(y:zs)) = (x+y) : sumEveryTwo zs



-- The number of hailstone steps needed to reach 1 from a starting
-- number.
hailstoneLen :: Int -> Int
hailstoneLen n = intListLength (hailstoneSeq n) - 1


































