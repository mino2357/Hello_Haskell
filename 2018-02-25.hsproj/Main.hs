eratosSieve :: [Integer] -> [Integer]
eratosSieve (n:ns)
  | n*n > last ns = n:ns
eratosSieve (n:ns) = n:eratosSieve [ i | i<-ns, i `mod` n /= 0]


primeList' :: Integer -> [Integer]
primeList' n = eratosSieve [2..n]


primeFactorizeCount :: Integer -> Integer -> Integer
primeFactorizeCount n p
  | n `mod` p == 0 = 1 + primeFactorizeCount (n `div` p) p
  | otherwise = 0


primeFactorizeWoker :: Integer -> [Integer] -> [Integer]
primeFactorizeWoker n [] = []
primeFactorizeWoker n (p:px) = [primeFactorizeCount n p] ++ primeFactorizeWoker n px


primeFactorizeList :: Integer -> [(Integer, Integer)]
primeFactorizeList n = zip ( primeList' n ) (primeFactorizeWoker n ( primeList' n))


primeFactorize :: Integer -> [(Integer, Integer)]
primeFactorize n = [ tuple | tuple <- primeFactorizeList n, snd tuple /= 0 ]

