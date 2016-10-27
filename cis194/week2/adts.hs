
data Thing = Shoe 
           | Ship 
           | SealingWax 
           | Cabbage 
           | King 
           deriving Show 



listOfThings :: [Thing]
listOfThings = [Shoe,Ship,King] 

isSmall :: Thing -> Bool
isSmall Shoe = True 
isSmall Ship = False
isSmall SealingWax = True 
isSmall Cabbage = True 
isSmall King = False


isSmall2 :: Thing -> Bool
isSmall2 Ship = False 
isSmall2 King = False 
isSmall2 _ = True 


data FailableDouble = Failure
                    | Ok Double 
                    deriving Show 


ex01 = Failure
ex02 = Ok 3.4

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = Ok(x/y)



failureToZero :: FailableDouble -> Double
failureToZero Failure = 0 
failureToZero (Ok d) = d


failureToZero2 :: FailableDouble -> Double
failureToZero2  x = case x of 
                      Failure -> 0 
                      Ok d -> d 


data Person = Person String Int Thing 
         deriving Show 

brent = Person "Brent" 31 King
stan = Person "Stan" 94 Cabbage
hungai = Person "Hungai" 94 SealingWax


getAge :: Person -> Int 
getAge (Person _ a _) = a 


baz :: Person -> String
baz p@(Person n _ _) = "The name field of (" ++ show p ++ ") is" ++ " " ++ n 


checkFav :: Person -> String
checkFav (Person n _  SealingWax) = n ++ ",  you're my kind of person"
checkFav (Person n _ _ ) = n ++ ", your favourite thing is lame"


data IntList = Empty
             | Cons Int IntList
             deriving (Show,Eq)

intListProd :: IntList -> Int 
intListProd Empty = 1 
intListProd (Cons x Empty) = x * intListProd Empty




















