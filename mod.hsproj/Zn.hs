module Zn where

import Data.List
import IsPrime
import Data.Maybe

data Zn = Zn {toNumber::Integer, toMod::Integer}
  deriving (Show, Read)

printZn :: Zn -> IO ()
printZn x = putStrLn $ (show $ toNumber x) ++ " mod " ++ (show $ toMod x)

plus :: Zn -> Zn -> Zn
plus x y = Zn (((toNumber x) + (toNumber y)) `mod` (toMod x)) (toMod x)

minus :: Zn -> Zn -> Zn
minus x y = Zn (((toNumber x) - (toNumber y)) `mod` (toMod x)) (toMod x)

multiply :: Zn -> Zn -> Zn
multiply x y = Zn (((toNumber x) * (toNumber y)) `mod` (toMod x)) (toMod x)

devide :: Zn -> Zn -> Zn
devide x y
  | not (isPrime (toMod y)) = error "muripo"
  | otherwise = Zn (((toNumber x) * (toNumber $ fromJust $ inverse y)) `mod` (toMod x)) (toMod x)

inverse :: Zn -> Maybe Zn
inverse x
  | toNumber x == 0 = Nothing
  | not (isPrime $ toMod x) = Nothing
  | otherwise = Just (Zn (invWorker (toNumber x, toMod x)) (toMod x))
  where
    invWorker :: (Integer, Integer) -> Integer
    invWorker (x,p) = head [ i | i<-[1..p-1], (x * i) `mod` p == 1]


