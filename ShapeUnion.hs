
type Vector = (Double, Double)

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving (Show)


area :: Shape -> Float
area (Circle _ _ r) = pi * r^2 
area (Rectangle x y x2 y2) = (abs(x2-x))* (abs(y2 - y))
