module Prime(primeList, cutBrackets) where


eratos :: Integral a => [a] -> [a]
eratos (n:ns)
  | null ns = n:[]
  | n * n > last ns = n:ns
  | otherwise = n:eratos [ i | i<-ns , i `rem` n /= 0]


primeList :: Integral a => a -> [a]
primeList n = eratos [2..n]


cutBrackets :: Show a => [a] -> String
cutBrackets (x:xs)
  | null xs   = "P" ++ show x
  | otherwise = "P" ++ show x ++ " | " ++ cutBrackets xs
