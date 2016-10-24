

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