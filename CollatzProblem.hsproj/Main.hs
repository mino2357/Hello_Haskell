import Data.List

factorial :: Integer -> Integer
factorial n
  | n == 1 = 1
  | n >  1 = n * factorial (n - 1)

collatz :: Integer -> [Integer]
collatz n
  | n <= 1 = [n]
  | n `mod` 2 == 0 = n:collatz (div n 2)
  | n `mod` 2 /= 0 = n:collatz (3 * n + 1)
--  | n `mod` 91 == 0 = n:collatz (n * (3^150) + 1)
--  | n `mod` 693 == 0 = n:collatz (n `div` 693)
--  | otherwise = n:collatz (n - 1)
--  | n `mod` 2 == 0 = n:collatz (div n 2)
--  | n `mod` 3 == 0 = n:collatz (div n 3)
--  | n `mod` 7 == 0 = n:collatz (div n 7)
--  | n `mod` 11 == 0 = n:collatz (div n 11)
--  | n `mod` 23 == 0 = n:collatz (div n 23)
--  | n `mod` 43 == 0 = n:collatz (div n 43)
--  | n `mod` 37 == 0 = n:collatz (div n 37)
--  | n `mod` 47 == 0 = n:collatz (div n 47)
--  | n `mod` 53 == 0 = n:collatz (div n 53)
--  | n `mod` 2 /= 0 = n:collatz (3*n + 1)
--  | n `mod` 7 /= 0 = n:collatz (7*n + 1)
--  | n `mod` 5 /= 0 = n:collatz (5*n + 1)
--  | n `mod` 3 /= 0 = n:collatz (3*n + 1)
--  | n `mod` 2 /= 0 = n:collatz (2*n + 1)

collatzLength :: Integer -> Integer
collatzLength n = genericLength $ collatz n

cutBrachets :: (Show a, Show b) => [(a,b)] -> String
cutBrachets (x:xs)
  | null xs = show (fst x) ++ " " ++ show (snd x)
  | otherwise = show (fst x) ++ " " ++ show (snd x) ++ "\n" ++ cutBrachets xs

--n = 10^10000

--main = putStrLn $ cutBrachets $ zip [1..] $ fmap collatzLength [n..(n+1000)]

main = mapM_ print $ fmap genericLength $ fmap show $ collatz $ (factorial 1000) - (factorial 100) + 122435432541234
--main = mapM_ print $ collatz $ factorial 400 - 1 
