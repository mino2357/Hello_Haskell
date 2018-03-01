import PrimeList

primeList = fmap toPrime [P2 ..]


primeFactorizeCount :: Integer -> Integer -> Integer
primeFactorizeCount n p
  | n `mod` p == 0 = 1 + primeFactorizeCount (n `div` p) p
  | otherwise = 0


primeFactorizeWoker :: Integer -> [Integer] -> [Integer]
primeFactorizeWoker n [] = []
primeFactorizeWoker n (p:px) = [primeFactorizeCount n p] ++ primeFactorizeWoker n px


primeFactorizeList :: Integer -> [(Integer, Integer)]
primeFactorizeList n
  | pmax * pmax <= n  = []
  | otherwise         = zip primeList (primeFactorizeWoker n primeList)
  where
    pmax = 99991

primeFactorize :: Integer -> [(Integer, Integer)]
primeFactorize n = [ tuple | tuple <- primeFactorizeList n, snd tuple /= 0 ]

main = do
  mapM_ print $ fmap primeFactorize [1..10000]
