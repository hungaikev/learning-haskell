--Recursive ADT 

data MyList a = Cons a (MyList a)
    | Nil 
    deriving (Show)

fromList (x:xs) = Cons x (fromList xs)
fromList [] = Nil