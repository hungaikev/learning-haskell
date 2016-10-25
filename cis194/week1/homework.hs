-- Converts positive Integers to a list of their digits.
-- toDigits 1234 == [1,2,3,4]
-- toDigits 0 == []
-- toDigits (-17) == []
toDigits n 
    | n > 0 = toDigits (n `div` 10 ) ++ [n `mod` 10]
    | otherwise = []

-- Converts positive Integers to a reversed list of their digits.
-- toDigits 1234 == [4,3,2,1]

toDigitsRev n 
    | n > 0 = n `mod` 10 : toDigitsRev (n `div` 10)
    | otherwise = []



-- Doubles every other number beginning from the rights
-- doubleEveryOther [8,7,6,5] == [16,7,12,5]
-- doubleEveryOther [1,2,3] == [1,4,3]
doubleEveryOther :: [Int] -> [Int]
doubleEveryOther [] = []
doubleEveryOther (x:[]) = [x]
doubleEveryOther (x:(y:zs)) = x : y*2 : doubleEveryOther zs 