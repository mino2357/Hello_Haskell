import Data.List
import IsPrime
import Data.Maybe
import Zn



isPrimitiveRoot :: Integer -> Integer -> Bool
isPrimitiveRoot n p
  | order n p == p-1 = True
  | otherwise        = False

order :: Integer -> Integer -> Integer
order n p = calcOrder [ toNumber $ pow (toZnP n p) i | i<-[1..p]]

calcOrder :: (Ord a, Integral a) => [a] -> a
calcOrder (x:xs) = genericLength $ calcOrderWoker x (x:xs)
  where
    calcOrderWoker :: Ord a => a -> [a] -> [a]
    calcOrderWoker n (x:xs)
      | n == head xs = x:[]
      | otherwise = x:(calcOrderWoker n xs)

toZnP :: Integer -> Integer -> Zn
toZnP n p = toZn n p

--p = 691 -- Prime Number

--main = do
--  printZn a
--  printZn b

--  printZn $ a `plus` b
--  printZn $ a `minus` b
--  printZn $ a `multiply` b
--  printZn $ a `devide` b

-- print $ take 10 $ fmap toNumber $ fmap fromJust $ fmap inverse list
--  mapM_ print $ [ i | i<-[1..p-1], isPrimitiveRoot i p]
