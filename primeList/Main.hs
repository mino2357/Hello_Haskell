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


list = fmap primeFactorize [1..10]


radWorker :: [(Integer, Integer)] -> Integer
radWorker (x:xs)
  | null xs = (fst x) * 1
  | otherwise = (fst x) * radWorker xs

radWorker2 :: [(Integer, Integer)] -> Integer
radWorker2 (x:xs)
  | null xs = (snd x) + 0
  | otherwise = (snd x) + radWorker2 xs

radWorker3 :: [(Integer, Integer)] -> Integer
radWorker3 (x:xs)
  | null xs = (snd x) * 1
  | otherwise = (snd x) * radWorker3 xs

radWorker4 :: [(Integer, Integer)] -> Integer
radWorker4 (x:xs)
  | null xs = (fst x) + 0
  | otherwise = (fst x) + radWorker4 xs

rad :: Integer -> [Integer]
rad n = [n, (radWorker ( primeFactorize n))]

rad' :: Integer -> [Integer]
rad' n = [radWorker2 (primeFactorize (radWorker4 (primeFactorize n))), (radWorker2 (primeFactorize n))]

cut :: Show a => [a] -> String
cut (x:xs) = show x ++ " " ++ (show ( last xs))


main = do
  mapM_ putStrLn $ fmap cut (fmap rad [2..10000])



