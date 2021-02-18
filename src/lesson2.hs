calcChange owed given = if change > 0
                        then change
                        else 0
    where
        change = given - owed

-- クイックチェック2-3
doublePlusTwo x = doubleX + 2
    where
        doubleX = x * 2

-- Q2-2
inc n = n + 1
double n = n * 2
square n = n^2

-- Q2-3
ifEvenMinus2ElseX3Plus1 n = if even n
                            then n - 2
                            else 3 * n + 1