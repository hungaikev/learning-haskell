import Data.List 
import System.IO 

sumOfNums = sum [1..1000]

addEx = 5 + 4 
subEx = 5 - 4
multiEx = 5 * 4 
divEx = 5 / 4 

modEx = mod 5 4   -- Prefix operator 
modEx2 = 5 `mod` 4  -- Infix operator 

-- Negative numbers must be surrounded with parentheses
negNumEx = 5 + (-4)

-- If you define an Int you must use fromIntegral to use it with sqrt
-- :t sqrt shows that it returns a floating point number
num9 = 9 :: Int 
sqrtOf9  = sqrt(fromIntegral num9)


-- Built in math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

zeroToTen = [0..10]
evenList = [2,4..20]
letterList = ['a','b'..'z']
many2s = take 10 (repeat 2)
many3s = replicate 10 3 

cycleList = take 10 (cycle [1,2,3,4,5])
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..100], x * 3 <= 50]
divisibleBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
sortedList = sort [9,1,8,8,3,4,7]
sumOfLists = zipWith(+)[1,2,3,4,5][6,7,8,9,10]
listBiggerThan5 = filter (>5)[1,2,3,4,5,6,7,8,9]
evensUpTo20 = takeWhile(<=20)[2,4..]
multiList = foldl (*) 1 [2,3,4,5]
pow3List = [3^n | n <- [1..10]]
pow3ListDiv9 = [3^n | n <- [1..10], 3^n `mod` 9 == 0]
multiTable = [[x*y | y <- [1..10]] | x <- [1..10]]


multiplyBy2 list = [n * 2 | n <- list]

randomTuple = (1,"Random Tuple")
bobSmith = ("Bob Smith",52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob","Mary","John"]
addresses = ["123 Main","234 North","567 South"]
namesAndAddresses = zip names addresses



getListItems ::[Int] -> String 
getListItems [] = "Your List is empty"
getListItems (x:[]) = "Your List starts with " ++ " " ++ show x 
getListItems (x:y:[]) = "Your list contains " ++ " " ++ show x ++ " " ++ "and" ++  " " ++ show y 
getListItems (x:xs) = "The 1st item is " ++ " " ++ show x ++ " " ++ "and the rest" ++ " " ++ show xs



getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ " " ++ all ++ " " ++ "is" ++ " " ++show x  

times4 :: Int -> Int 
times4 x = x * 4 

listTimes4 = map times4 [1,2,3,4]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs 

areStringsEq :: [Char] -> [Char] -> Bool 
areStringsEq [] [] = True 
areStringsEq (x:xs)(y:ys) = x == y && areStringsEq xs ys 
areStringsEq _ _ = False 


doMult :: (Int -> Int) -> Int 
doMult func = func 3 

number3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y 


add3 = getAddFunc 3 
fourPlus3 = add3 4 

threePlusList = map add3[1,2,3,4]

-- Lambda function
db1To10 = map (\x -> x * 2) [1..10]


--Factorial 
prodFuct n = product [1..n]

--Factorial 2 

factorial :: Int -> Int 
factorial 0 = 1 
factorial n = n * factorial(n-1)



--Using Guards 
whatGrade :: Int -> String 
whatGrade age 
    |(age >= 5) && (age <= 6) = "Kindergaten"
    |(age > 6) && (age <= 10) = "Elementary"
    | otherwise = "Go to college"


--Using Guards 

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Average"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "You are doing good"
    | otherwise = "You are a superstar"
    where avg = hits / atBats

--Fib Sequence 1 
fib = 1 : 1 : [a + b | (a,b) <- zip fib (tail fib)]


--Fib Sequence 2 using pattern matching 
fib2 0 =0
fib2 1 = 1 
fib2 n = fib2(n-1) + fib2(n-2)


--Fib Sequence 3 
fibs = 0:1:zipWith(+) fibs(tail fibs)


--Project Euler Solutions 

--Solution 1 
factorsOf3and5 = sum [x | x <-[1..999], x `mod` 3 == 0 || x `mod` 5 == 0]



--solution 3 
solution = sum $ filter even $ takeWhile(<= 4000000) fib where fib = 1:2:zipWith(+)fibs(tail fibs)


--Solution 4
palindrome = sort [ x*y | x <- [100..999], y <- [100..999], reverse (show (x*y)) == show (x*y)]

--Solution 5 
smallest = foldl lcm 1 [1..20]

--Solution 6 

x = sum[1..100] ^2 
y = sum ( map(^2) [1..100])

sumSquareDifference = x - y 



--CUSTOM TYPES -- 

data Customer = Customer String String Double 
            deriving Show 

--Define Customer and its values 

hungai :: Customer
hungai = Customer "Hungai Kevin" "123 Main" 20.50

-- Define how we will find the right customer 

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b 

hungaiBalance = print(getBalance hungai)


-- The . operator allows you to chain functions to pass output on the right
--sumValue = putStrLn(show(1+2)) becomes 

sumValue = putStrLn . show $ 1 + 2 




























