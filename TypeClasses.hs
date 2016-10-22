-- ---------- TYPE CLASSES ----------
-- Num, Eq, Ord and Show are type classes
-- Type classes correspond to sets of types which have certain operations 
-- defined for them.
-- Polymorphic functions, which work with multiple parameter types, define
-- the types it works with through the use of type classes
-- For example (+) works with parameters of the type Num
-- :t (+) = Num a => a -> a -> a
-- This says that for any type a, as long as a is an instance of Num, + can take
-- 2 values and return an a of type Num


-- Create an Employee and add the ability to check if they are equal

data Employee = Employee {name::String, position::String,idNum::Int} deriving (Eq,Show)


samOnzere = Employee {name = "Onzere Sam",position="Manager",idNum=1000}
hungai = Employee {name="Hungai Kevin",position="Founder",idNum=999}

isSamHungai = samOnzere == hungai

hungaiData = show hungai


-- Make a type instance of the typeclass Eq and Show
data ShirtSize = S | M | L
 
instance Eq ShirtSize where
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False
 
instance Show ShirtSize where
    show S = "Small"
    show M = "Medium"
    show L = "Large"
-- Check if S is in the list
smallAvail = S `elem` [S, M, L]
 
-- Get string value for ShirtSize
theSize = show S


































