isPrime :: Integer -> Bool
isPrime n = and [ n `mod` i /= 0 | i <- [2..n-1]]

primeList :: Integer -> [Integer]
primeList n = filter isPrime [2..n]