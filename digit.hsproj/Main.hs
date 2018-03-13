import Data.List
import Data.Char

power = 8

digit :: Integer -> Integer
digit n = genericLength $ show n

toIntList :: [Char] -> [Integer]
toIntList (n:ns)
  | null ns = (toInteger $ digitToInt n):[]
  | otherwise = (toInteger $ digitToInt n):toIntList ns

digitList :: Integer -> [Integer]
digitList n = toIntList $ show n

digitSum :: Integer -> Integer
digitSum ns = foldl' (\x y -> x + y^power) 0 $ digitList ns

digitSumSeq :: Integer -> [Integer]
digitSumSeq n
  | n < 2 = n:[]
  | otherwise = n:digitSumSeq (digitSum n)

factorial :: Integer -> Integer
factorial n
  | n == 1 = 1
  | otherwise = n * factorial (n-1)

digitSumSeq' :: [Integer] -> [Integer]
digitSumSeq' ns
  | before == after = ns
  | otherwise = ns ++ [digitSum (last ns)]
  where
    before = genericLength (nub ns)
    after  = genericLength (nub (ns ++ [digitSum (last ns)]))

calcDigitRootWorker :: [Integer] -> [Integer]
calcDigitRootWorker ns
  | ns == digitSumSeq' ns = ns-- ++ digitSumSeq' [last ns]
  | otherwise = calcDigitRootWorker (digitSumSeq' ns)

calcDigitRoot :: Integer -> [Integer]
calcDigitRoot n = calcDigitRootWorker [n]

cutBrachets :: (Show a, Show b) => [(a,b)] -> String
cutBrachets (x:xs)
  | null xs = show (fst x) ++ " " ++ show (snd x)
  | otherwise = show (fst x) ++ " " ++ show (snd x) ++ "\n" ++ cutBrachets xs

m = 153
n = 1000

--main = putStrLn $ cutBrachets $ zip [m..n] $ fmap length $ fmap calcDigitRoot [m..n]
main = putStrLn $ cutBrachets $ zip [1..] $ calcDigitRoot m
