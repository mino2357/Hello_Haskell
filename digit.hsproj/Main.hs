import Data.List
import Data.Char

power = 10

digitList :: Integer -> [Integer]
digitList n = toIntList $ show n
  where
    toIntList :: [Char] -> [Integer]
    toIntList (n:ns)
      | null ns = (toInteger $ digitToInt n):[]
      | otherwise = (toInteger $ digitToInt n):toIntList ns

digitSumSeq :: Integer -> [Integer]
digitSumSeq n
  | n < 2 = n:[]
  | otherwise = n:digitSumSeq (digitSum n)

digitSum :: Integer -> Integer
digitSum ns = foldl1' (\x y -> x + y^power) $ digitList ns    

cutBrachets :: (Show a, Show b) => [(a,b)] -> String
cutBrachets (x:xs)
  | null xs = show (fst x) ++ " " ++ show (snd x)
  | otherwise = show (fst x) ++ " " ++ show (snd x) ++ "\n" ++ cutBrachets xs

multiList :: [Integer] -> [Integer] -> [Integer]
multiList xx@(x:xs) yy@(y:ys)
  | null xx = []
  | null yy = []
  | otherwise = x*y : multiList xs ys

--m = 153
--n = 1000

--main = putStrLn $ cutBrachets $ zip [m..n] $ fmap length $ fmap calcDigitRoot [m..n]
--main = putStrLn $ cutBrachets $ zip [1..] $ calcDigitRoot m
