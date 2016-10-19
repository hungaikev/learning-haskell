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


{- Getting the largest and smallest number from a list -}
maxmin list = if null (tail list)
    then (head list, head list)
    else (if (head list) > fst(maxmin (tail list))
          then head list 
          else fst (maxmin (tail list))
         ,if (head list) < snd (maxmin (tail list))
          then head list 
          else snd(maxmin(tail list))
         )


maxmin2 list = let h = head list
                in if null (tail list)
                    then (h,h)
                    else (if h > t_max then h else t_max
                          ,if h < t_min then h else t_min )
                           where t = maxmin2 (tail list)
                                 t_max = fst t 
                                 t_min = snd t 


























