module PrimeList where

data PrimeList = P2 | P3 | P5 | P7
  deriving (Show, Eq, Read, Ord, Enum, Bounded)

toPrime :: PrimeList -> Integer
toPrime strP = read $ tail $ show $ strP ::Integer