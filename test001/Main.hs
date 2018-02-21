pita :: [[Int]]
pita = [[a,b,c]|
  c<-[1::Int ..],
  a<-[1::Int ..c],
  b<-[1::Int ..c],
  a < b,
  a^2 + b^2 == c^2]

thd :: [Int] -> Int
thd [_,_,z] = z

average :: Double -> Double -> Double
average x y = (x + y) / 2.0

factorial :: Integer -> Integer
factorial n
  | n == 1    = 1
  | n > 1     = n * factorial (n - 1)
  | otherwise = -1
  
fibo :: Integer -> Integer
fibo n
  | n == 1   = 1
  | n == 2   = 1
  | n > 2    = fibo (n - 1) + fibo (n - 2)
  |otherwise = -1

diGamma :: Double -> Double
diGamma n
  | n == 1    = 0.577215664901532860606512090082
  | n > 1     = diGamma (n - 1) + 1 / (n - 1)
  | otherwise = -1;