import Data.List
import Data.Char
import Data.Fixed

data E100 = E100
  deriving (Show)
instance HasResolution E100 where
  resolution _ = 10^100
type Float100 = Fixed E100

float100ToDigit :: Float100 -> [Int]
float100ToDigit x = map digitToInt $ filter isDigit $ show x


leibnizSeq' :: Integer -> [Float100]
leibnizSeq' n = genericTake n $ init $ scanl1 (+) $ fmap ((4.0::Float100)/) $ zipWith (*) [1::Float100,3::Float100 ..] $ cycle [1::Float100,-1::Float100]

listToSeq :: [Int] -> String
listToSeq n = unlines ( map show n ) ++ "\n"

main = mapM_ putStrLn $ fmap listToSeq $ fmap float100ToDigit $ take 100 $ reverse $ leibnizSeq' 1000000
