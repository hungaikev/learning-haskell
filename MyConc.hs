lst1 +++ lst2 = if null lst1 {- check emptyness -}
    then lst2 --base case 
    else (head lst1):(tail lst1 +++ lst2)
    