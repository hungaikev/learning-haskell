
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