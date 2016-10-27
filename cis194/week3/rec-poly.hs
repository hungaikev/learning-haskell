
module Rec where 

data IntList = Empty 
             | Cons Int IntList
    deriving (Show) 



absAll :: IntList -> IntList
absAll Empty = Empty
absAll (Cons x xs) = Cons(abs x) (absAll xs)


squareAll :: IntList -> IntList
squareAll Empty = Empty
squareAll (Cons x xs) = Cons (x * x)(squareAll xs)


exampleList = Cons (-1) (Cons 2 (Cons (-6) Empty))

addOne x = x + 1
square x = x * x  


mapIntList :: (Int -> Int) -> IntList -> IntList
mapIntList _ Empty = Empty
mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)


keepOnlyEven :: IntList -> IntList
keepOnlyEven Empty  = Empty
keepOnlyEven (Cons x xs)
    | even x = Cons x (keepOnlyEven xs)
    | otherwise = keepOnlyEven xs


-- Polymorphic data types 

data MyList t = E  -- t is a type variable it represents any type
              | C t (MyList t)
    deriving (Show,Eq)
{- Type variable must start with a lowercase letter, 
wheas Types must start with a capital letter 
data MyList t .. means MyList type is parameterized by a type t
-}

lst1 :: MyList Int 
lst1 = C 3 (C 5 (C 2 E))

lst2 :: MyList Char 
lst2 = C 'x' (C 'y'(C 'z' E))

lst3 :: MyList Bool 
lst3 = C True (C False E)

-- Polymorphic functions 

filterList _ E = E 
filterList p (C x xs)
    | p x = (x (filterList p xs))
    | otherwise = filterList p xs 



mapList :: (a -> b) -> MyList a -> MyList b 
mapList _ E = E 
mapList f (C x xs) = C (f x) (mapList f xs)

doStuff :: [Int] -> Int 
doStuff [] = 0 
doStuff [_] = 0 
doStuff xs = head xs + (head(tail xs))


doStuff2 :: [Int] -> Int 
doStuff2 [] = 0 
doStuff2 [_] = 0 
doStuff2 (x1:x2:_) = x1 + x2 



safeHead :: [a] -> Maybe a 
safeHead [] = Nothing 
safeHead (x:_) = Just x 


















