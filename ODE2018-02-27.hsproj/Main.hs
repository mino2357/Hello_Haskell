eratos :: Integral a => [a] -> [a]
eratos (n:ns)
  | ns == []      = [n]
  | n*n > last ns = n:ns
eratos (n:ns) = n:eratos [ i | i<-ns, i `mod` n /= 0]


primeList :: Integral a => a -> [a]
primeList n = eratos [2..n]


cutBrackets :: (Show a, Show b) => [(a, b)] -> String
cutBrackets (x:xs)
  | null xs   = show (fst x) ++ " " ++ show (snd x)
  | otherwise = show (fst x) ++ " " ++ show (snd x) ++ "\n" ++ cutBrackets xs


func :: Floating a => a -> a
func x = x


dxList :: (Enum a, Floating a) => a -> a -> [a]
dxList dx xmax = [0.0, dx..xmax]


odeEulerWorker :: Floating a => (a -> a) -> a -> [a] -> [(a, a)]
odeEulerWorker f yn (x:xs)
  | null xs   = [(x, yn)]
  | otherwise = (x, yn) : odeEulerWorker f (yn + dx * f yn) xs 
  where
    dx = (head xs) - x

odeEuler :: (Enum a, Floating a) => (a -> a) -> a -> a -> a -> [(a, a)]
odeEuler f yinit dx xmax = odeEulerWorker f yinit $ dxList dx xmax