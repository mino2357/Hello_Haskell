import Data.List
import Data.Char

doubleToDigit :: Double -> [Int]
doubleToDigit x = toIntList $ drop 2 $ show x
  where
    toIntList :: [Char] -> [Int]
    toIntList (n:ns)
      | null ns = (digitToInt n):[]
      | otherwise = (digitToInt n):toIntList ns

mulList :: Num a => [a] -> [a] -> [a]
mulList (x:xs) (y:ys)
  | null xs = x*y:[]
  | null ys = x*y:[]
  | otherwise = (x*y):mulList xs ys

oddList = [1,3..]
invOddList = fmap (4.0/) oddList

pm = [ 1.0*(-1)^i | i<-[2..]]

n = 100000

leibnizSeq = drop 1 $ scanl' (\x y -> x + y) 0.0 $ take n $ mulList pm invOddList

listToSeq :: [Int] -> String
listToSeq (n:ns)
  | null ns = "\n"
  | otherwise = show n ++ "\n" ++ listToSeq ns

main = mapM_ putStrLn $ fmap listToSeq $ fmap doubleToDigit $ drop 99900 leibnizSeq
