import Data.List
import IsPrime
import Data.Maybe
import Zn

pMax = 1000

--pListFrom :: Integer -> [Integer]
--pListFrom n = [ p | p<-[n..pMax], isPrime p]

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


makeList :: Integer -> [Integer]
makeList p = [ i | i<-pList, isPrimitiveRoot p i]
  where
    pList = [ i | i<-[(p+1)..100*p], isPrime i]

printList :: Integer -> [Char]
printList n
  | n < 10000  = (show n) ++ " | " ++ (show $ makeList n) ++ "\n" ++ printList (n+1)
  | otherwise = (show n) ++ " | " ++ (show $ makeList n)

main = putStrLn $ printList 2
