lst1 +++ lst2 = if null lst1 {- check emptyness -}
    then lst2 --base case 
    else (head lst1):(tail lst1 +++ lst2)

{-

[1,2,3] +++ [2,3,4]

1. Initial expression [1,2,3] +++ [2,3,4]
2. Evaluates recursively to 1:([2,3] +++ [2,3,4])
3. Then Evaluates recursively to 1:(2:([3]  +++ [2,3,4]))
4. Then Evaluates recusrsively to 1:(2:(3:([] +++ [2,3,4])))
5. The first list is now empty so recursion ends with 1:(2:(3:[2,3,4]))
6. The colon operator simply append list items 
7. The final result is [1,2,3,2,3,4]

-}



reverse2 list = if null list
    then []
    else reverse2 (tail list) +++ [head list]