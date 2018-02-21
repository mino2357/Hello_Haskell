pita :: [[Integer]]
pita = [[a,b,c]|
  c <- [1::Integer ..],
  b <- [1::Integer ..c],
  a <- [1::Integer ..b],
  a^2 + b^2 == c^2,
  and [(gcd a c) == 1, (gcd b c) == 1]
  ]

thd :: [Integer] -> Integer
thd (x:y:z:xs) = z

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

myList :: [Integer]  
myList = map thd $ take 100 pita

head' :: [Integer] -> Integer
head' (x:xs) = x

g :: [Integer] -> [(Integer, Integer)]
g (x:xs) = f xs x 1

f :: [Integer] -> Integer -> Integer -> [(Integer, Integer)]
f (x:xs) a n
  | xs == [] = if x /= a
                then [(a,n), (x,1)]
                else [(a,n+1)]
  | a == x = f xs a (n+1)
  | otherwise = (a,n):f xs x 1