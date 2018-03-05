module IsPrime where

isPrime :: Integer -> Bool
isPrime n = and [ n `mod` i /= 0  | i<-[2..n-1], i*i <= n ]