-- backwardsInfinity = reverse [1 .. ]

isPalindrome word = word == reverse word

repeat str = cycle [str]

subseq n m l = drop n (take m l)

inFirstHalf e l = e `elem` firstHalf
    where midPoint = div (length l) 2
          firstHalf = take midPoint l