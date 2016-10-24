

sm y = y + 1

biggestInt,smallestInt :: Int 

biggestInt = maxBound 
smallestInt = minBound

reallyBig::Integer
reallyBig = 2^(2^(2^(2^2)))

numDigits :: Int 
numDigits = length(show reallyBig)