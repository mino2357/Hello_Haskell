module Zn where

import Data.List
import IsPrime

data Zn = Zn Integer Integer
  deriving (Show, Read)

fromMaybe :: Maybe Zn -> Zn
fromMaybe (Just x) = x
fromMaybe Nothing  = error "muripo"

toNumber :: Zn -> Integer
toNumber x = read (takeFirst $ cutZn $ show x)::Integer

printZn :: Zn -> IO ()
printZn x = putStrLn $ (show $ toNumber x) ++ " mod " ++ (show $ takeMod x)

cutZn :: [Char] -> [Char]
cutZn x = drop 3 x

takeMod :: Zn -> Integer
takeMod x = read (cutZn $ (\\) (show x) $ takeFirst $ cutZn (show x))::Integer

takeFirst :: [Char] -> [Char]
takeFirst (x:xs)
  | [x] == " "  = []
  | otherwise = x:takeFirst xs

plus :: Zn -> Zn -> Zn
plus x y = Zn (((toNumber x) + (toNumber y)) `mod` (takeMod x)) (takeMod x)

minus :: Zn -> Zn -> Zn
minus x y = Zn (((toNumber x) - (toNumber y)) `mod` (takeMod x)) (takeMod x)

multiply :: Zn -> Zn -> Zn
multiply x y = Zn (((toNumber x) * (toNumber y)) `mod` (takeMod x)) (takeMod x)

devide :: Zn -> Zn -> Zn
devide x y
  | isPrime (takeMod y) == False = error "muripo"
  | otherwise = Zn (((toNumber x) * (toNumber $ fromMaybe $ inverse y)) `mod` (takeMod x)) (takeMod x)

gcd' :: (Integer, Integer) -> Integer
gcd' (x,y)
  | x>y = gcd' (y,x)
  | x == 0   = y
  | otherwise = gcd' (x, y - x * (y `div` x))

inverse :: Zn -> Maybe Zn
inverse x
  | toNumber x == 0 = Nothing
  | (isPrime $ takeMod x) == False = Nothing
  | otherwise = Just (Zn (invWorker (toNumber x, takeMod x)) (takeMod x))
  where
    invWorker :: (Integer, Integer) -> Integer
    invWorker (x,p) = fst $ head [ i | i<- zip [1..p-1] $ fmap (`mod` p) $ fmap (x*) [1..p-1], snd i == 1]


