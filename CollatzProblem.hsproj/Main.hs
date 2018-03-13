import Data.List

factorial :: Integer -> Integer
factorial n
  | n == 1 = 1
  | n >  1 = n * factorial (n - 1)

l = 2
m = 1

collatz :: Integer -> [Integer]
collatz n
  | n == 1 = [n]
  | n `mod` 2 == 0 = n:collatz (div n 2)
  | n `mod` 2 /= 0 = n:collatz (n * (2 * l - 1) + (2 * m - 1))


collatzLength :: Integer -> Integer
collatzLength n = genericLength $ collatz n

cutBrachets :: (Show a, Show b) => [(a,b)] -> String
cutBrachets (x:xs)
  | null xs = show (fst x) ++ " " ++ show (snd x)
  | otherwise = show (fst x) ++ " " ++ show (snd x) ++ "\n" ++ cutBrachets xs

--n = 10^10000

--main = putStrLn $ cutBrachets $ zip [1..] $ fmap collatzLength [n..(n+1000)]

--main = mapM_ print $ fmap genericLength $ fmap show $ collatz $ (factorial 1000) - (factorial 100) + 122435432541234
--main = mapM_ print $ collatz $ factorial 400 - 1 

main = mapM_ print $ collatz 15