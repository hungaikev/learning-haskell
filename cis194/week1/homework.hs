toDigits n 
    | n > 0 = toDigits (n `div` 10 ) ++ [n `mod` 10]
    | otherwise = []

toDigitsRev n 
    | n > 0 = n `mod` 10 : toDigitsRev (n `div` 10)
    | otherwise = []