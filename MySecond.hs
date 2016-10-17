mySecond :: [a] -> a 


--First Example without using Maybe 

mySecond xs = if null(tail xs)
    then error "list is too short"
    else head (tail xs)



--Second Example of error reprting 
-- List uses Maybe to Show the Errors 

safeSecond :: [a] -> Maybe a 

safeSecond [] = Nothing 
safeSecond xs = if null (tail xs)
    then Nothing
    else Just(head(tail xs))

-- Third Example of error reporting that uses Maybe 

tidySecond :: [a] -> Maybe a 
tidySecond (_:x:_) = Just x 
tidySecond _ = Nothing